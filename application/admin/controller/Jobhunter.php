<?php

namespace app\admin\controller;

use app\admin\behavior\ApiapiLog;
use app\admin\model\AuthGroup;
use app\common\controller\Backend;
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
class Jobhunter extends Backend
{

    protected $relationSearch = true;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('JobHunter');
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
                return $this->selectpage();
            }

            list($where, $sort, $order, $offset, $limit) = $this->buildparams();

            $total = $this->model
                ->where($where)
                ->order($sort, $order)
                ->count();
            $list = $this->model
                ->with('profession')            //关联工种
                ->with("professionLevel")       //关联工种等级
                ->where($where)
                ->order($sort, $order)
                ->limit($offset, $limit)
                ->select();
            $list = collection((array)$list)->toArray();


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
                // 调用当前模型对应的User验证器类进行数据验证
                $result = $this->model->validate('JobhunterValidate')->save($data);
                if(false === $result){
                    // 验证失败 输出错误信息
                    $this->error($this->model->getError());
                }
                $this->success();
            }
        $this->error();
        }
        $professions=model('Profession')->getSelectList();
        $professionLevels=['-1' =>'请先选择工种'];
        $this->assign('professions',$professions);
        $this->assign('levels',$professionLevels);
        return $this->view->fetch();
    }


    public function edit($ids = null)
    {
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            //dump($data);die;
            // 调用当前模型对应的User验证器类进行数据验证
            $result = $this->model->validate('JobhunterValidate')->Update($params);
            if(false === $result){
                // 验证失败 输出错误信息
                $this->error($this->model->getError());
            }
            $this->success();
        }
        $row=$this->model->find($ids);
        //dump($row);die;
        $professions=model('Profession')->getSelectList();
        $professionLevels=model('ProfessionLevel')->getSelectList();
        $this->assign('row',$row);
        $this->assign('professions',$professions);
        $this->assign('levels',$professionLevels);
        return $this->view->fetch();
    }


}
