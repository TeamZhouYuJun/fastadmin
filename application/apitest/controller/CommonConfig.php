<?php
namespace Apitest\Controllers;

/**
 * 公共配置控制器
 * Class CommonConfig
 */
class CommonConfig extends BaseController
{
    /**
     * 默认页
     */
    public function index()
    {
        $data ['prams'] = array(
            '用户协议页' => $this->set_name(DOMAIN_WWW . 'home/app_agreement', DOMAIN_WWW . 'home/app_agreement', "0"),
            '关于一站之家' => $this->set_name(DOMAIN_WWW . 'home/app_about', DOMAIN_WWW . 'home/app_about', "0"),
        );
        $data['document'] = array(
            $this->set_document('H5页面','html','返回一个H5页面'),
        );
        $data ['action'] = '';
        $data ['method'] = '';
        return view('public', $data);
    }
}