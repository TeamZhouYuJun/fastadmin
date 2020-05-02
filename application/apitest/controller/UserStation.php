<?php
namespace Apitest\Controllers;

/**
 * 用户自提点控制器
 * Class UserStation
 */
class UserStation extends BaseController
{
    /**
     * 用户自提点信息
     */
    public function get_user_station_info()
    {
        $data ['prams'] = array(
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('user_station_info','array','用户自提点信息'),
            $this->set_document('station_id','string','自提点id'),
            $this->set_document('leader_name','string','团长名称'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','自提点城市'),
            $this->set_document('address','string','自提点详细地址'),
            $this->set_document('phone','string','门店电话'),
        );
        $data ['action'] = DOMAIN_API . 'UserStation/get_user_station_info';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 用户自提点列表
     */
    public function get_user_station_list()
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
            $this->set_document('user_station_list','array','用户自提点列表'),
            $this->set_document('station_id','string','自提点id'),
            $this->set_document('leader_name','string','团长名称'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','自提点城市'),
            $this->set_document('address','string','自提点详细地址'),
            $this->set_document('phone','string','门店电话'),
        );
        $data ['action'] = DOMAIN_API . 'UserStation/get_user_station_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 系统自提点列表
     */
    public function get_station_list()
    {
        $data ['prams'] = array(
            'keyword_search' => $this->set_name("1", "关键字查询", "1"),
            'longitude' => $this->set_name("0", "用户所在经度", "1"),
            'latitude' => $this->set_name("0", "用户所在纬度", "1"),
            'page' => $this->set_name("1", "分页页码", "1"),
            'size' => $this->set_name("10", "分页大小", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('station_list','array','系统自提点列表'),
            $this->set_document('station_id','string','自提点id'),
            $this->set_document('leader_name','string','团长名称'),
            $this->set_document('station_name','string','自提点名称'),
            $this->set_document('city','string','自提点城市'),
            $this->set_document('address','string','自提点详细地址'),
            $this->set_document('phone','string','门店电话'),
            $this->set_document('img_url','string','门店图片'),
        );
        $data ['action'] = DOMAIN_API . 'UserStation/get_station_list';
        $data ['method'] = 'post';
        return view('public', $data);
    }

    /**
     * 设置用户自提点
     */
    public function set_user_station()
    {
        $data ['prams'] = array(
            'station_id' => $this->set_name("1", "系统自提点ID", "1"),
            'uid' => $this->set_name("1", "用户uid", "1"),
            'token' => $this->set_name("1", "登录秘钥", "1"),
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('user_station_info','array','报告详情'),
        );
        $data ['action'] = DOMAIN_API . 'UserStation/set_user_station';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}