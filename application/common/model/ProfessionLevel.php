<?php

namespace app\common\model;

use think\db\exception\DataNotFoundException;
use think\db\exception\ModelNotFoundException;
use think\exception\DbException;
use think\Model;

/**
 * 会员模型
 */
class ProfessionLevel extends Model
{

    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';

    protected $table ='fa_profession_level';


    public function profession()
    {
        //dump($this->belongsTo('Profession','profession_id'));die;
        return $this->belongsTo('Profession','profession_id');
    }

    /**
     * 获取用于 $professionId 下拉选框的 list:  ['id'=>'name']
     * @var $professionId int | Profession.id
     * @return array
     * @throws DataNotFoundException
     * @throws ModelNotFoundException
     * @throws DbException
     */
    public function getSelectList($professionId=null){
        if ($professionId==null)
        {
            $professions=$this->select();
        }
        else{
            $professions=$this->where('profession_id',$professionId)->select();
        }
        $professionList=array();
        foreach ($professions as $index=> &$item){

            $professionList[$item['id']]=$item['name'];
        }
        //dump($professionList);die;
        return $professionList;
    }

}
