<?php
namespace Apitest\Controllers;

/**
 * 团购控制器
 * Class GroupBuy
 */
class GroupBuy extends BaseController
{
    /**
     * 团购列表
     */
    public function get_group_buy_list()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'type' => $this->set_name("all", "团购列表类型,all全部,working进行中,finished 已失效", "1"),
            'page' => $this->set_name("1", "页数", "1"),
            'size' => $this->set_name("10", "每页数量", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('group_id','int','团购ID'),
            $this->set_document('time','string','时间'),
            $this->set_document('status','int','团购状态 0失效 默认1生效中'),
            $this->set_document('status_text','string','团购状态中文输出:失效/进行中'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_price','float','商品售价'),
            $this->set_document('unit_weight','float','出售单位约含重量'),
            $this->set_document('unit','string','规格名称单位（斤、件、个...）'),
            $this->set_document('mini_unit','string','出售单位约含重量单位（斤、件、个...）'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('min_batch','string','最小起批量'),
            $this->set_document('img_url','string','商品主图路径'),
            $this->set_document('share_img','string','分享图片'),
        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/get_group_buy_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 团购详情
     */
    public function get_group_buy_info()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'group_id' => $this->set_name("1", "团购ID", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','所在城市'),
            $this->set_document('address','string','详细地址'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_price','float','商品售价'),
            $this->set_document('unit_weight','float','出售单位约含重量'),
            $this->set_document('unit','string','单位（斤、件、个...）'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('min_batch','string','最小起批量'),
            $this->set_document('img_url','string','商品主图路径'),
            $this->set_document('status','int','团购状态 0失效 默认1生效中'),
            $this->set_document('goods_info','array','商品详情'),
        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/get_group_buy_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 团购记录
     */
    public function get_group_buy_log()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'group_id' => $this->set_name("1", "团购ID", "1"),
            'page' => $this->set_name("1", "页数", "1"),
            'size' => $this->set_name("10", "每页数量", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('count','int','记录总条数'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_price','float','商品售价'),
            $this->set_document('unit_weight','float','出售单位约含重量'),
            $this->set_document('unit','string','单位（斤、件、个...）'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('min_batch','string','最小起批量'),
            $this->set_document('img_url','string','商品主图路径'),
            $this->set_document('group_buy_num','int','参与购买人数'),
            $this->set_document('sale_count','int','商品销量'),
            $this->set_document('nickname','string','用户昵称'),
            $this->set_document('avatar','string','用户头像'),
            $this->set_document('pay_time','string','付款时间'),
            $this->set_document('goods_num','string','购买商品数量'),
        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/get_group_buy_log';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加团购页面
     */
    public function add_group_buy_view()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_id','int','商品ID'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','商品主图'),
            $this->set_document('price','float','商品售价'),
            $this->set_document('spec_name','string','商品规格名称'),
            $this->set_document('unit_weight','float','单位重量'),
            $this->set_document('unit_name','string','单位名称'),
            $this->set_document('min_unit_name','string','最小单位名称'),
        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/add_group_buy_view';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加团购商品
     */
    public function add_group_buy_goods()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("1", "添加的团购商品id", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_id','int','商品ID'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','商品主图'),
            $this->set_document('spec','array','商品规格信息'),
        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/add_group_buy_goods';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加团购
     */
    public function add_group_buy()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("1", "商品id", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(

        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/add_group_buy';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 获取团购分享海报
     */
    public function get_share_img()
    {
        $data ['prams'] = array(
            'group_id' => $this->set_name("1", "团购id", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(

        );
        $data ['action'] = DOMAIN_API . 'GroupBuy/get_share_img';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}