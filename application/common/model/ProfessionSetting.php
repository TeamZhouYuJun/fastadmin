<?php

namespace app\common\model;

use think\Model;

/**
 * 会员模型
 */
class ProfessionSetting extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';


    public function professionList(){
        $row=$this->limit(0,1)->select();
        $row=$row[0];
        $professionList=explode("&",$row['profession']);
        if (count($professionList)>0){
            return $professionList;
        }
        return array();
    }
    public function professionLevelList(){
        $row=$this->limit(0,1)->select();
        $row=$row[0];
        $professionLevelList=explode("&",$row['profession_level']);
        if (count($professionLevelList)>0){
            return $professionLevelList;
        }
        return array();
    }
}
