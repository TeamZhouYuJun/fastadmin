<?php

namespace app\common\model;

use think\Model;

/**
 * 会员模型
 */
class Profession extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    /**
     * @var string
     */
    protected $table ='fa_profession';

    /**
     * 获取用于 下拉选框的 list:  ['id'=>'name']
     */
    public function getSelectList(){
        $professions=$this->select();
        $professionList=array();
        foreach ($professions as $index=> &$item){

            $professionList[$item['id']]=$item['name'];
        }
        //dump($professionList);die;
        return $professionList;
    }

}
