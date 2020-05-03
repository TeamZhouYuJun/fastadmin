<?php

namespace app\admin\validate;

use think\Validate;

class JobhunterValidate extends Validate
{
    /**
     * 验证规则
     */
    protected $rule = [
        'full_name'  => 'require|max:25',
        'age'   => 'number|between:16,120',
        'phone' => ['require','regex:/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/'],
        'gender'=> 'require|in:0,1',
        'graduate_school' => 'require|max:32',
    ];
    /**
     * 提示消息
     */
    protected $message = [
        'full_name.require' => '姓名必须',
        'full_name.max'     => '姓名最多不能超过25个字符',
        'age.number'   => '年龄必须是数字',
        'age.between'  => '年龄只能在16-120之间',
        'phone.require' => '手机号必须',
        'phone.regex'     => '手机号不正确,必须11数字',
        'gender.require' => '性别必须',
        'gender.in'     => '性别只能选择 男|女 ',
        'graduate_school.require' => '毕业院校必须',
        'graduate_school.max' => '毕业院校必须在4-32个字符之间',
    ];
    /**
     * 验证场景
     */
    protected $scene = [
        'add'  => [],
        'edit' => [],
    ];



}
