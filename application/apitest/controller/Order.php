<?php
namespace Apitest\Controllers;

/**
 * 订单
 * Class Home
 */
class Order extends BaseController
{
    /**
     * 订单列表
     */
    public function get_order_list()
    {
        $data ['prams'] = array(
            'order_status' => $this->set_name("", "订单状态 -1获取全部 0已取消 10代付款 20,30待提货 50已完成", "1"),
            'page' => $this->set_name("1", "页数", "1"),
            'size' => $this->set_name("10", "每页数量", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('uid','string','消费者ID'),
            $this->set_document('order_sn','string','订单编号'),
            $this->set_document('station_id','string','自提点ID'),
            $this->set_document('real_amount','string','订单价格'),
            $this->set_document('order_status','string','订单状态'),
            $this->set_document('add_time','string','创建时间'),
            $this->set_document('pay_time','string','支付时间'),
            $this->set_document('finished_time','string','完成时间'),
            $this->set_document('cancle_time','string','取消时间'),
            $this->set_document('goods_id','string','商品ID'),
            $this->set_document('spec_id','string','规格ID'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','购买数量'),
            $this->set_document('price','string','商品售价'),
            $this->set_document('cost_price','string','商品成本价'),
            $this->set_document('actual_price','string','废弃字段'),
            $this->set_document('total_price','string','总价格'),
            $this->set_document('close_last_time','int','自动关闭剩余时间,负数表示不显示'),
            $this->set_document('complete_last_time','int','自动确认剩余时间, 负数表示不显示'),
        );
        $data ['action'] = DOMAIN_API . 'order/get_order_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 团长订单列表订单列表
     */
    public function get_leader_order_list()
    {
        $data ['prams'] = array(
            'order_status' => $this->set_name("", "订单状态 -1获取全部 0已取消 10代付款 20待交货,30待确定 50已完成", "1"),
            'role_type' => $this->set_name("", "身份标识 此接口团长才能访问 1消费者 2团长", "1"),
            'page' => $this->set_name("1", "页数", "1"),
            'size' => $this->set_name("10", "每页数量", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('uid','string','消费者ID'),
            $this->set_document('order_sn','string','订单编号'),
            $this->set_document('station_id','string','自提点ID'),
            $this->set_document('real_amount','string','订单价格'),
            $this->set_document('order_status','string','订单状态'),
            $this->set_document('add_time','string','创建时间'),
            $this->set_document('ship_time','string','交货时间(发货时间)'),
            $this->set_document('pay_time','string','支付时间'),
            $this->set_document('finished_time','string','完成时间'),
            $this->set_document('cancle_time','string','取消时间'),
            $this->set_document('goods_id','string','商品ID'),
            $this->set_document('spec_id','string','规格ID'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','购买数量'),
            $this->set_document('price','string','单个商品售价'),
            $this->set_document('cost_price','string','商品成本价'),
            $this->set_document('actual_price','string','废弃字段'),
            $this->set_document('total_price','string','总价格'),
            $this->set_document('close_last_time','int','自动关闭剩余时间,负数表示不显示'),
            $this->set_document('complete_last_time','int','自动确认剩余时间, 负数表示不显示'),
        );
        $data ['action'] = DOMAIN_API . 'leaderOrder/get_leader_order_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 团长订单列表数量
     */
    public function get_leader_order_count()
    {
        $data ['prams'] = array(
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('allcount','string','总数量'),
            $this->set_document('not_payment','string','代付款数量'),
            $this->set_document('not_delivery','string','待交货数量'),
            $this->set_document('delivery','string','待确认数量'),
            $this->set_document('completed','string','已完成数量'),
        );
        $data ['action'] = DOMAIN_API . 'leaderOrder/get_leader_order_count';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 订单列表数量
     */
    public function get_order_count()
    {
        $data ['prams'] = array(
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('allcount','string','总数量'),
            $this->set_document('not_payment','string','代付款数量'),
            $this->set_document('delivery','string','待提货数量'),
            $this->set_document('completed','string','已完成数量'),
        );
        $data ['action'] = DOMAIN_API . 'order/get_order_count';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 订单详情
     */
    public function get_order_info()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("", "订单编号", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('uid','string','消费者ID'),
            $this->set_document('order_sn','string','订单编号'),
            $this->set_document('station_id','string','自提点ID'),
            $this->set_document('real_amount','string','订单价格'),
            $this->set_document('order_status','string','订单状态'),
            $this->set_document('add_time','string','创建时间'),
            $this->set_document('pay_time','string','支付时间'),
            $this->set_document('finished_time','string','完成时间'),
            $this->set_document('cancle_time','string','取消时间'),
            $this->set_document('goods_id','string','商品ID'),
            $this->set_document('spec_id','string','规格ID'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','购买数量'),
            $this->set_document('price','string','商品售价'),
            $this->set_document('cost_price','string','商品成本价'),
            $this->set_document('actual_price','string','废弃字段'),
            $this->set_document('total_price','string','总价格'),
            $this->set_document('station_phone','string','自提点号码'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('address','string','自提点地址'),
            $this->set_document('user_name','string','收货人名称'),
            $this->set_document('user_phone','string','收货人号码'),
            $this->set_document('user_phone','string','收货人号码'),
            $this->set_document('unit_name','string','单份商品的重量单位'),
            $this->set_document('min_unit_name','string','每份商品的单位'),
            $this->set_document('unit_weight','string','单份商品的重量数值'),
            $this->set_document('','string','例子: ¥26.80/件 ¥{$actual_price}/{$min_unit_name}'),
            $this->set_document('','string','例子: 约5斤/件 ¥{$unit_weight}{$unit_name}/{$min_unit_name}'),
        );
        $data ['action'] = DOMAIN_API . 'order/get_order_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 确认订单页面信息
     */
    public function confirm_order_page()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("", "商品ID", "1"),
            'spec_id' => $this->set_name("", "规格ID", "1"),
            'buy_num' => $this->set_name("1", "购买数量", "1"),
            'role_type' => $this->set_name("0", "身份标识 1消费者 2团长 团长不可购买商品", "1"),
            'account' => $this->set_name("0", "邀请标记 通过分享获得 正常购买不填", "1"),
            'group_id' => $this->set_name("0", "团购ID 不是团购填0", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('uid','string','消费者ID'),
            $this->set_document('goods_id','string','商品ID'),
            $this->set_document('group_id','string','团购ID 如果团购ID大于0 则自提点不能修改'),
            $this->set_document('spec_id','string','规格ID'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','购买数量'),
            $this->set_document('price','string','商品售价'),
            $this->set_document('cost_price','string','商品成本价'),
            $this->set_document('actual_price','string','废弃字段'),
            $this->set_document('station_id','string','自提点ID '),
            $this->set_document('station_phone','string','自提点号码 '),
            $this->set_document('station_name','string','自提点名称 '),
            $this->set_document('address','string','自提点地址'),
            $this->set_document('user_phone','string','用户默认号码'),
            $this->set_document('nickname','string','用户默认昵称'),
            $this->set_document('unit_name','string','单份商品的重量单位'),
            $this->set_document('min_unit_name','string','每份商品的单位'),
            $this->set_document('unit_weight','string','单份商品的重量数值'),
            $this->set_document('','string','例子: ¥26.80/件 ¥{$actual_price}/{$min_unit_name}'),
            $this->set_document('','string','例子: 约5斤/件 ¥{$unit_weight}{$unit_name}/{$min_unit_name}'),
        );
        $data ['action'] = DOMAIN_API . 'order/confirm_order_page';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 创建订单
     */
    public function create_single_order()
    {
        $data ['prams'] = array(
            'goods_id' => $this->set_name("", "商品ID", "1"),
            'spec_id' => $this->set_name("", "规格ID", "1"),
            'buy_num' => $this->set_name("1", "购买数量", "1"),
            'user_phone' => $this->set_name("", "用户号码", "1"),
            'user_name' => $this->set_name("", "用户名称", "1"),
            'station_id' => $this->set_name("", "自提点ID", "1"),
            'group_id' => $this->set_name("0", "团购ID 不是团购填0", "1"),
            'remark' => $this->set_name("", "用户备注", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('appId','string','小程序ID'),
            $this->set_document('timeStamp','string','时间戳'),
            $this->set_document('nonceStr','string','随机串'),
            $this->set_document('signType','string','签名方式'),
            $this->set_document('package','string','数据包'),
            $this->set_document('paySign','string','签名'),
        );
        $data ['action'] = DOMAIN_API . 'order/create_single_order';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 订单发货
     */
    public function send_goods()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("", "订单编号", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
        );
        $data ['action'] = DOMAIN_API . 'leaderOrder/send_goods';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 订单确认收货
     */
    public function confirm_order()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("", "订单编号", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('appId','string','小程序ID'),
            $this->set_document('timeStamp','string','时间戳'),
            $this->set_document('nonceStr','string','随机串'),
            $this->set_document('signType','string','签名方式'),
            $this->set_document('package','string','数据包'),
            $this->set_document('paySign','string','签名'),
        );
        $data ['action'] = DOMAIN_API . 'order/confirm_order';
        $data ['method'] = 'post';
        return view('public', $data);
    }
    
    /**
     * 再次支付订单
     */
    public function again_pay_order()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("", "订单编号", "1"),
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data ['prams'] = $data ['prams'] + $this->login_param();
        $data['document'] = array(
            $this->set_document('appId','string','小程序ID'),
            $this->set_document('timeStamp','string','时间戳'),
            $this->set_document('nonceStr','string','随机串'),
            $this->set_document('signType','string','签名方式'),
            $this->set_document('package','string','数据包'),
            $this->set_document('paySign','string','签名'),
        );
        $data ['action'] = DOMAIN_API . 'order/again_pay_order';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}