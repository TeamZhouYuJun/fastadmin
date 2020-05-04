<?php

namespace app\admin\controller;

use app\admin\behavior\ApiapiLog;
use app\admin\model\AuthGroup;
use app\common\controller\Backend;
use app\common\model\ProfessionLevel;
use fast\Random;
use fast\Tree;
use think\Db;
use think\Exception;
use think\Validate;

/**
 * 人才库
 *
 * @icon fa fa-group
 * @remark 角色组可以有多个,角色有上下级层级关系,如果子角色有角色组和管理员的权限则可以派生属于自己组别下级的角色组或管理员
 */
class Profession extends Backend
{

    protected $relationSearch = true;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Profession');
    }

    /**
     * 查看
     */
    public function index()
    {

        //设置过滤方法
        $this->request->filter(['strip_tags']);
        if ($this->request->isAjax()) {
            //dump($this->model);
            //如果发送的来源是Selectpage，则转发到Selectpage
            if ($this->request->request('keyField')) {
                //echo 8888;die;
                return $this->selectpage();
            }

            list($where, $sort, $order, $offset, $limit) = $this->buildparams();

            $total = $this->model
                ->where($where)
                ->order($sort, $order)
                ->count();
            $list = $this->model
                ->where($where)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();
            $result = array("total" => $total, "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    public function add()
    {
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {

               $data=$params;
               //dump($data);die;

                $this->model->save($data);
                $this->success();
            }
            $this->error();
        }
        //$this->assign('')
        return $this->view->fetch();
    }



    public function edit($ids = NULL)
    {
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                $data=$params;
                //验证
                //dump($data);die;
                $this->model->isUpdate()->save($data);
                $this->success();
            }
            $this->error();
        }

        $row=$this->model->find(intval($ids));
        $this->assign('row',$row);
        return $this->view->fetch();
    }

    public function test(){
        $this->model->professionList();
    }
}
