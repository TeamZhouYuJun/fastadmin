<?php
namespace Apitest\Controllers;

/**
 * 登录
 * Class Home
 */
class Login extends BaseController
{
    /**
     * 微信登录
     */
    public function wx_login()
    {
        $data ['prams'] = array(
            'openid' => $this->set_name("", "微信openid", "1"),
            'account' => $this->set_name("", "团长邀请标识", "1"),
            'phone' => $this->set_name("", "登录手机号码", "1"),
            'send_code' => $this->set_name("", "验证码", "1"),
            'wx_nickname' => $this->set_name("", "微信昵称", "1"),
            'wx_avatar' => $this->set_name("", "微信头像", "1"),
            'brand' => $this->set_name("", "客户端设备品牌", "1"),
            'model' => $this->set_name("", "设备型号", "1"),
            'wx_version' => $this->set_name("", "微信版本号", "1"),
            'wx_system' => $this->set_name("", "操作系统", "1"),
            'platform' => $this->set_name("", "客户端平台", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('uid','int','用户ID'),
            $this->set_document('role_type','int','身份标记 1消费者 2团长'),
            $this->set_document('token','string','用户登录标记'),
        );
        $data ['action'] = DOMAIN_API . 'login/wx_login';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 获取openid
     */
    public function get_wx_openid()
    {
        $data ['prams'] = array(
            'code' => $this->set_name("", "微信小程序jscode", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('openid','string','微信openid'),
        );
        $data ['action'] = DOMAIN_API . 'login/get_wx_openid';
        $data ['method'] = 'post';
        return view('public', $data);
    }


    /**
     * 获取openid
     */
    public function get_wx_phone()
    {
        $data ['prams'] = array(
            'openid' => $this->set_name("", "微信openid", "1"),
            'encryptedData' => $this->set_name("", "微信加密信息", "1"),
            'iv' => $this->set_name("", "iv解密", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('phone','string','用户微信绑定手机号码'),
        );
        $data ['action'] = DOMAIN_API . 'login/get_wx_phone';
        $data ['method'] = 'post';
        return view('public', $data);
    }    

    /**
     * 获取openid
     */
    public function get_sms_code()
    {
        $data ['prams'] = array(
            'phone' => $this->set_name("", "手机号码", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('send_result','string','短信验证码'),
        );
        $data ['action'] = DOMAIN_API . 'login/get_sms_code';
        $data ['method'] = 'post';
        return view('public', $data);
    }

}