<?php
namespace Apitest\Controllers;

/**
 * 第三方调用接口控制器
 * Class ThirdParty
 */
class ThirdParty extends BaseController
{
    /**
     * 鲜大宗商品同步接口
     */
    public function xdz_goods_snubber()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("1", "鲜大宗商品id", "1"),
            'action_type' => $this->set_name("1", "操作：1：添加 2：编辑", "1"),
            'content' => $this->set_name("", "操作数据 json数据", "1"),
            'data' => $this->set_name('', '实际发送的参数.由以上参数组成json格式字符串', "1"),
            'source' => $this->set_name('xiandazong', "来源站点，xiandazong:鲜大宗", "1"),
            'time' => $this->set_name(time(), "时间戳", "1"),
            'key' => $this->set_name('123456', "签名密钥", "1"),
        );
        $data ['action'] = DOMAIN_API . 'ThirdParty/xdz_goods_snubber';
        $data ['method'] = 'post';
        return view('api_third_public', $data);
    }

}