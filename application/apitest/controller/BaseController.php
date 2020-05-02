<?php
namespace app\apitest\controller;

use think\Controller;
/**
 * api接口测试控制器
 * Class BaseController
 */
class BaseController extends Controller
{
    public $menu = [];
    public $version = '';
    public $client_type = '';

	/**
	 * Constructor.
	 */
	public function _initialize()
	{
		parent::_initialize();
        $this->version = $this->set_name("1.0", "版本号1.0", "1");
        $this->client_type = $this->set_name("3", "客户端类型：1.android,2.ios,3.小程序", "1");
        $this->set_menu();
	}

    public function set_name($text_value = '', $text_description = '', $html5_set = 0)
    {
        return ['text_value' => $text_value, 'text_description' => $text_description, 'html5_set' => $html5_set];
    }

    public function set_document($field_name = '', $type = '', $remarks = '')
    {
        return ['field_name' => $field_name, 'type' => $type, 'remarks' => $remarks];
    }

    public function set_menu()
    {
        $menu = [
            ["title" => "公共", "icon" => "&#xe613;", "spread" => false, "children" =>
                [
                    ["title" => "首页数据", "icon" => "", "href" => "/home/get_home"],
                    ["title" => "公共配置", "icon" => "", "href" => "/CommonConfig/index"],
                ]
            ],
            ["title" => "用户登录", "icon" => "&#xe613;", "spread" => false, "children" =>
                [
                    ["title" => "先获取openid", "icon" => "", "href" => "/login/get_wx_openid"],
                    ["title" => "获取用户号码", "icon" => "", "href" => "/login/get_wx_phone"],
                    ["title" => "微信登录", "icon" => "", "href" => "/login/wx_login"],
                    ["title" => "发送短信", "icon" => "", "href" => "/login/get_sms_code"],
                ]
            ],
        ];
        $this->menu = $menu;
    }
}