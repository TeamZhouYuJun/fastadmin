<?php
namespace Apitest\Controllers;

/**
 * 商品评论控制器
 * Class GoodsComment
 */
class GoodsComment extends BaseController
{
    /**
     * 商品评论列表
     */
    public function get_goods_comment_list()
    {
        $data ['prams'] = array(
            'type' => $this->set_name("-1", "报告类型：-1全部，0待审核，1已审核，2不通过，", "1"),
            'page' => $this->set_name("1", "分页页码", "1"),
            'size' => $this->set_name("10", "分页大小", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_comment_list','array','报告列表'),
            $this->set_document('goods_comment_id','int','状态ID'),
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
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('unit_weight','string','出售单位约含重量'),
            $this->set_document('unit_name','string','单位名称'),
            $this->set_document('min_unit_name','string','最小单位名称'),
        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/get_goods_comment_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 商品评论列表(待提交)
     */
    public function get_goods_comment()
    {
        $data ['prams'] = array(
            'page' => $this->set_name("1", "分页页码", "1"),
            'size' => $this->set_name("10", "分页大小", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_comment_list','array','报告列表'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('goods_num','string','商品数量'),
            $this->set_document('goods_price','string','商品价格'),
            $this->set_document('img_url','string','商品图片'),
            $this->set_document('order_sn','string','订单号'),
            $this->set_document('status_name','string','状态名称'),
        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/get_goods_comment';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 商品评论统计
     */
    public function get_goods_comment_count()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('allcomment','int','所有评论'),
            $this->set_document('comment_submit','int','待提交'),
            $this->set_document('comment_audit','int','待审核'),
            $this->set_document('comment_approve','int','已通过'),
        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/get_goods_comment_count';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 商品评论详情
     */
    public function get_goods_comment_info()
    {
        $data ['prams'] = array(
            'goods_comment_id' => $this->set_name("1", "报告ID", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_comment_info','array','报告详情'),
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
        $data ['action'] = DOMAIN_API . 'GoodsComment/get_goods_comment_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加商品评论页面
     */
    public function add_goods_comment_view()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("1", "订单编号", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('goods_info','array','报告商品信息'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','商品图片'),
        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/add_goods_comment_view';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加商品评论图片
     */
    public function add_goods_comment_img()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('0','string','图片地址'),
        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/add_goods_comment_img';
        $data ['ifarme_defuat_page'] = '/user/edit_avata_blank';
        $data ['method'] = 'post';
        return view('public_upload', $data);
    }

    /**
     * 删除商品评论图片
     */
    public function del_goods_comment_img()
    {
        $data ['prams'] = array(
            'img_url' => $this->set_name("1", "图片路径", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(

        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/del_goods_comment_img';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 添加商品评论
     */
    public function add_goods_comment()
    {
        $data ['prams'] = array(
            'order_sn' => $this->set_name("1", "订单编号", "1"),
            'level' => $this->set_name("1", "评价等级", "1"),
            'report_detail' => $this->set_name("1", "评价内容", "1"),
            'report_img' => $this->set_name("1", '评价图片：json格式（["路径1","路径2"]）', "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(

        );
        $data ['action'] = DOMAIN_API . 'GoodsComment/add_goods_comment';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}