<?php

namespace app\common\model;

use think\Model;

/**
 * 人才模型
 */
class JobHunter extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    private $gender=[0 =>'女',1=>'男'];

    public function GetGenderAttr($value)
    {
       return $this->gender[$value];
    }

    public function profession()
    {
        //dump($this->belongsTo('Profession','profession_id'));die;
        return $this->belongsTo('Profession','profession_id');
    }

    public function professionLevel()
    {
        //dump($this->belongsTo('Profession','profession_id'));die;
        return $this->belongsTo('ProfessionLevel','profession_level_id');
    }


    /**
     * @param $resume
     * @return mixed
     */
    public static  function  subResume( $resume){

        $resume=  mb_substr(strip_tags($resume),0,25).'...';
        return $resume;
    }

}
