<?php
namespace Apitest\Controllers;

/**
 * 商品控制器
 * Class Home
 */
class Goods extends BaseController
{
    /**
     * 商品列表
     */
    public function get_goods_list()
    {
        $data ['prams'] = array(
            'keyword_search' => $this->set_name("1", "关键字查询", "1"),
            'sort_type' => $this->set_name("default", "排序类型：default默认，new最新，sale销量，hits人气，price价格，", "1"),
            'sort' => $this->set_name("desc", "排序规则：asc正序，desc倒序", "1"),
            'page' => $this->set_name("1", "分页页码", "1"),
            'size' => $this->set_name("10", "分页大小", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_list','array','商品列表'),
            $this->set_document('goods_id','string','商品id'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','图片路径'),
            $this->set_document('price','string','商品价格'),
            $this->set_document('min_batch','string','最小起批量'),
            $this->set_document('min_price','string','最小价格'),
            $this->set_document('unit_weight','string','出售单位约含重量'),
            $this->set_document('unit_name','string','单位名称'),
            $this->set_document('min_unit_name','string','最小单位名称'),
        );
        $data ['action'] = DOMAIN_API . 'goods/get_goods_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 商品详情
     */
    public function get_goods_info()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("1", "商品id", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_info','array','商品详情'),
            $this->set_document('goods_id','string','商品id'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','图片路径'),
            $this->set_document('status','string','商品状态：0下架1上架'),
            $this->set_document('content','string','商品内容'),
            $this->set_document('province_name','string','供货地址省'),
            $this->set_document('city_name','string','供货地址市'),
            $this->set_document('district_name','string','供货地址县'),
            $this->set_document('sale_count','string','销量'),
            $this->set_document('sum_spec_stock','string','个规格总库存'),
            $this->set_document('thumb','array','商品缩略图数组'),
            $this->set_document('spec','array','商品规格数组'),
            $this->set_document('spec_id','string','规格id'),
            $this->set_document('stock','string','规格库存'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('price','string','规格价格'),
            $this->set_document('cost_price','string','规格批发价格'),
            $this->set_document('min_batch','string','规格最小起批量'),
            $this->set_document('min_price','string','规格最小价格'),
            $this->set_document('unit_weight','string','出售单位约含重量'),
            $this->set_document('unit_name','string','单位名称'),
            $this->set_document('min_unit_name','string','最小单位名称'),
            $this->set_document('thumb','string','规格缩略图'),
            $this->set_document('pack_fee','string','打包费'),
            $this->set_document('warehouse_fee','string','出仓费'),
            $this->set_document('water_fee','string','除水费'),
            $this->set_document('user_list','array','购买过的用户列表'),
            $this->set_document('group_info','array','团长团购信息'),
            $this->set_document('group_id','string','团购id'),
            $this->set_document('goods_id','string','团购商品id'),
            $this->set_document('share_img','string','团购分享图片'),
            $this->set_document('status','string','团购状态：0已失效，1进行中'),
            $this->set_document('user_station_info','array','用户自提点信息'),
            $this->set_document('station_id','string','自提点id'),
            $this->set_document('leader_name','string','团长名称'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','自提点城市'),
            $this->set_document('address','string','自提点详细地址'),
            $this->set_document('phone','string','门店电话'),
            $this->set_document('goods_comment_list','array','试用报告列表'),
            $this->set_document('status_name','string','状态名称'),
            $this->set_document('report_detail','string','试用报告详情'),
            $this->set_document('report_img','array','报告图片：以数组形式'),
            $this->set_document('level','string','试用等级'),
            $this->set_document('add_time','string','添加时间'),
            $this->set_document('nickname','string','用户昵称'),
            $this->set_document('avatar','string','用户头像'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','商品数量'),
            $this->set_document('goods_price','string','商品价格'),
            $this->set_document('img_url','string','商品图片'),
        );
        $data ['action'] = DOMAIN_API . 'goods/get_goods_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 试用体验
     */
    public function get_goods_comment()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("1", "商品id", "1"),
            'page' => $this->set_name("1", "分页页码", "1"),
            'size' => $this->set_name("10", "分页大小", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_comment','array','商品详情'),
            $this->set_document('status_name','string','状态名称'),
            $this->set_document('report_detail','string','试用报告详情'),
            $this->set_document('report_img','array','报告图片：以数组形式'),
            $this->set_document('level','string','试用等级'),
            $this->set_document('add_time','string','添加时间'),
            $this->set_document('nickname','string','用户昵称'),
            $this->set_document('avatar','string','用户头像'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','商品数量'),
            $this->set_document('goods_price','string','商品价格'),
            $this->set_document('img_url','string','商品图片'),
        );
        $data ['action'] = DOMAIN_API . 'goods/get_goods_comment';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 团购参与页
     */
    public function get_goods_group()
    {
        $data ['prams'] = array(
            'account' => $this->set_name("1", "团长标识", "1"),
            'group_id' => $this->set_name("1", "团购ID", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_group','array','商品详情'),
            $this->set_document('account','string','发布团购的团长标识'),
            $this->set_document('group_id','string','团购id'),
        );
        $data ['action'] = DOMAIN_API . 'goods/get_goods_group';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 商品同步
     */
//    public function goods_sync()
//    {
//        $data ['prams'] = array(
//            'version' => $this->version,
//            'client_type' => $this->client_type,
//        );
//        $data ['action'] = DOMAIN_API . 'goods/goods_sync';
//        $data ['method'] = 'post';
//        return view('public', $data);
//    }
}