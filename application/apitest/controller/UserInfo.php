<?php
namespace Apitest\Controllers;

/**
 * 用户中心控制器
 * Class UserInfo
 */
class UserInfo extends BaseController
{
    /**
     * 用户中心
     */
    public function index()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('user_info','array','用户信息'),
            $this->set_document('wx_nickname','string','微信昵称'),
            $this->set_document('wx_avatar','string','微信头像'),
            $this->set_document('user_phone','string','用户手机号'),
            $this->set_document('role_type','string','身份角色 1:消费者 2:团长'),
            $this->set_document('comment_submit','string','待提交报告统计'),
            $this->set_document('comment_audit','string','待审核报告统计'),
            $this->set_document('station_id','string','自提点id'),
            $this->set_document('leader_name','string','团长名称'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','自提点城市'),
            $this->set_document('address','string','自提点详细地址'),
            $this->set_document('phone','string','门店电话'),
        );
        $data ['action'] = DOMAIN_API . 'UserInfo/index';
        $data ['method'] = 'post';
        return view('public', $data);
    }

}