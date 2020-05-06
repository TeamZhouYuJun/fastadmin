<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use app\common\model\JobHunter;
use think\Db;
use think\Exception;
use think\exception\DbException;

class Index extends Frontend
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    protected $searchTypeArr=[
       "full_name"=>'姓名',
        "phone"=>'电话',
        "profession"=>'工种',
        "profession_level"=>'等级',
        "graduate_school"=>'毕业学校'
    ];

    protected $genderAvatar=[
        '1'=>'/assets/img/const/ismale.png',
        '0'=>'/assets/img/const/female.png',
    ];

    /**
     * 人才列表页
     * @throws DbException
     * @throws Exception
     */
    public function index()
    {
        $pageSize=5;
        //搜索类型
        $search_type = $this->request->get('search_type');
        //搜索值
        $search_value = $this->request->get('search_value');
        if ($search_value){
            $db = Db::table('fa_job_hunter j')
                ->field('j.*')
                ->field('p.name as profession')
                ->field('u.avatar as avatar')
                ->join('fa_profession p','p.id = j.profession_id','LEFT')
                ->join('fa_profession_level pl','pl.id = j.profession_level_id','LEFT')
                ->join('fa_user u','u.id = j.user_id','LEFT');
            if ($search_type == 'profession'){ //根据工种查找
                $db->where('p.name', 'like', '%'.$search_value.'%');
            }elseif($search_type == 'profession_level'){ //根据工种等级查找
                $db->where('pl.name', 'like', '%'.$search_value.'%');
            }else{  //其他类型查找
                $db->where('j.'.$search_type, 'like', '%'.$search_value.'%');
            }
            //分页查找
            $list=$db-> paginate($pageSize,false,['query'=>request()->param()]);
        }else{
            $list = Db::table('fa_job_hunter j')
                ->field('j.*')
                ->field('p.name as profession')
                ->field('u.avatar as avatar')
                ->join('fa_profession p','p.id = j.profession_id','LEFT')
                ->join('fa_user u','u.id = j.user_id','LEFT')
                ->order('j.id',"DESC")
                ->paginate($pageSize)
                /*->each(function (&$item ,$index){
                    $item->resume=mb_substr(strip_tags($item->resume),0,25);
                    //dump($item['resume']);
                    //dump($item);
                    //dump(is_array($item));
                })*/;
        }
        $listTemp =$list->toArray();
        $listTemp=$listTemp['data'];
        //dump($listTemp);die;

       foreach ($listTemp as $k =>  $v){
           //过滤html标签 简历内容限制输出25位字符
           $listTemp[$k]['resume'] = JobHunter::subResume($v['resume']);
        }

        $this->view->assign('searchTypeArr', $this->searchTypeArr);
        $this->view->assign('genderAvatar',$this->genderAvatar);
        $this->view->assign('list', $listTemp);
        $this->view->assign('page',$list->render());
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
            ->field('u.avatar as avatar')
            ->join('fa_profession p','p.id = j.profession_id','LEFT')
            ->join('fa_profession_level pl','pl.id = j.profession_level_id','LEFT')
            ->join('fa_user u','u.id = j.user_id','LEFT')
            ->where('j.id',$detail_id)
            ->find();
        $this->view->assign('genderAvatar',$this->genderAvatar);
        $this->view->assign('data', $data);
        return $this->view->fetch();
    }

}
