<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use think\Db;

class Index extends Frontend
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    public function index()
    {
        $search_type = $this->request->get('search_type');
        $search_value = $this->request->get('search_value');
        $this->model = model('JobHunter');
        if ($search_value){
            $list = Db::table('fa_job_hunter')
                ->where($search_type, 'like', '%'.$search_value.'%')
                ->select();
            $this->view->assign('list', $list);
            return $this->view->fetch();
//            var_dump($list);die;
        }
        $list = Db::table('fa_job_hunter')->select();
        $this->view->assign('list', $list);
        return $this->view->fetch();
    }

}
