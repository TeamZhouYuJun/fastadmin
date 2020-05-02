<?php
namespace Apitest\Controllers;

/**
 * 团长中心控制器
 * Class UserInfo
 */
class LeaderInfo extends BaseController
{
    /**
     * 团长中心
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
            $this->set_document('user_info','array','用户自提点信息'),
            $this->set_document('wx_nickname','string','用户昵称'),
            $this->set_document('wx_avatar','string','用户头像'),
            $this->set_document('user_phone','string','绑定手机号'),
            $this->set_document('money','float','账号余额'),
            $this->set_document('group_ongoing','string','正在进行的团购统计'),
            $this->set_document('station_name','string','门店名称'),
            $this->set_document('city','string','所在城市'),
            $this->set_document('address','string','详细地址'),
            $this->set_document('station_phone','string','门店电话'),
        );
        $data ['action'] = DOMAIN_API . 'LeaderInfo/index';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 获取团长收益信息
     */
    public function get_leader_income_info()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'day_type' => $this->set_name("today", "统计时间类型,today今日,yesterday昨日,7_days 近7日,30_days 近30日", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('money','float','可提现金额'),
            $this->set_document('new_user_count','int','新增好友数量'),
            $this->set_document('pay_order_count','int','付款订单数量'),
            $this->set_document('income','float','结算预估收入'),
            $this->set_document('predict_income','float','付款预估收入'),
        );
        $data ['action'] = DOMAIN_API . 'LeaderInfo/get_leader_income_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 获取团长收益明细
     */
    public function get_income_order_list()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'order_type' => $this->set_name("all", "订单类型,all全部,pay已付款,finished 已结算", "1"),
            'page' => $this->set_name("1", "页数", "1"),
            'size' => $this->set_name("10", "每页数量", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('order_type','int','订单类型：1、已付款  2、已结算'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','商品主图路径'),
            $this->set_document('is_return','int','0已付款 1已结算'),
            $this->set_document('real_amount','float','付款金额'),
            $this->set_document('profit_amounts','float','结算金额'),
            $this->set_document('predict_income','float','付款预估收入'),
            $this->set_document('income','float','结算预估收入'),
            $this->set_document('leader_rate','string','提成'),
            $this->set_document('pay_time','string','付款时间'),
            $this->set_document('finished_time','string','结算时间'),
        );
        $data ['action'] = DOMAIN_API . 'LeaderInfo/get_income_order_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}