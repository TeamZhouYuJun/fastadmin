<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use think\Db;

class Index extends Frontend
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    /**
     * 人才列表页
     */
    public function index()
    {
        //搜索类型
        $search_type = $this->request->get('search_type');
        //搜索值
        $search_value = $this->request->get('search_value');
        if ($search_value){
            $db = Db::table('fa_job_hunter j')
                ->field('j.*')
                ->field('p.name as profession')
                ->join('fa_profession p','p.id = j.profession_id','LEFT')
                ->join('fa_profession_level pl','pl.id = j.profession_level_id','LEFT');
            if ($search_type == 'profession'){ //根据工种查找
                $list = $db->where('p.name', 'like', '%'.$search_value.'%')
                    ->select();
            }elseif($search_type == 'profession_level'){ //根据工种等级查找
                $list = $db->where('pl.name', 'like', '%'.$search_value.'%')
                    ->select();
            }else{  //其他类型查找
                $list = $db->where('j.'.$search_type, 'like', '%'.$search_value.'%')
                    ->select();
            }
        }else{
            $list = Db::table('fa_job_hunter j')
                ->field('j.*')
                ->field('p.name as profession')
                ->join('fa_profession p','p.id = j.profession_id','LEFT')
                ->join('fa_profession_level pl','pl.id = j.profession_level_id','LEFT')
                ->select();
        }

        foreach ($list as $k => $v){
            //过滤html标签
            $list[$k]['resume'] = strip_tags($v['resume']);
            //简历内容限制输出25位字符
            $list[$k]['resume'] = mb_substr($list[$k]['resume'],0,25).'...';
        }
        $this->view->assign('list', $list);
        return $this->view->fetch();
    }

    /**
     * 人才详情页
     */
    public function detail()
    {
        $detail_id = $this->request->get('detail_id');
        $data = Db::table('fa_job_hunter j')
            ->field('j.*')
            ->field('p.name as profession')
            ->field('pl.name as profession_level')
            ->join('fa_profession p','p.id = j.profession_id','LEFT')
            ->join('fa_profession_level pl','pl.id = j.profession_level_id','LEFT')
            ->where('j.id',$detail_id)
            ->find();

        $this->view->assign('data', $data);
        return $this->view->fetch();
    }

}
