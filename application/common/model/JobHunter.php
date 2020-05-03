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


}
