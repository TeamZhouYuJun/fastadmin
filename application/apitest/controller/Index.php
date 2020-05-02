<?php
namespace app\apitest\controller;

/**
 * 首页控制器
 * Class Index
 */
class Index extends BaseController
{
    /**
     * 首页
     */
    public function index()
    {

        return $this->view->fetch();
    }

    /**
     * git
     */
    public function git()
    {
        return view('git');
    }

    /**
     * post
     */
    public function post()
    {
        $post_data = $this->request->getPost();
        if (empty($post_data)) {
            json_error(EXIT_ERROR, '数据异常！', 'alert', []);
        }
        $o = "";
        foreach ($post_data as $k => $v){
            if ($k != "ajax_post_url") {
                $o.= "$k=".urlencode($v)."&";
            }
        }
        $curlPost = substr($o, 0, -1);
        $url = $post_data['ajax_post_url'];
        $ch = curl_init();//初始化curl
        curl_setopt($ch,CURLOPT_URL, $url);//提交到指定网页
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_TIMEOUT,60);
        curl_setopt($ch, CURLOPT_POST, 1);//post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);
        $data = curl_exec($ch);//运行curl
        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
        }
        curl_close($ch);
        exit($data);
    }

    /**
     * 菜单
     */
    public function menu()
    {
        echo json_encode($this->menu);
    }

    /**
     * 获取首页
     */
    public function get_home()
    {
        $data ['prams'] = array(
            'role_type' => $this->role_type,
            'version' => $this->version,
            'client_type' => $this->client_type,
        );
        $data['document'] = array(
            $this->set_document('ads_list','array','轮播图'),
            $this->set_document('img_url','string','图片路径'),
            $this->set_document('jump_path','string','跳转路径'),
            $this->set_document('ads_goods_list','array','推送商品'),
            $this->set_document('goods_info','array','商品信息'),
            $this->set_document('goods_id','string','商品id'),
            $this->set_document('goods_name','string','商品名称'),
            $this->set_document('img_url','string','图片路径'),
            $this->set_document('price','string','商品价格'),
            $this->set_document('spec_name','string','规格名称'),
            $this->set_document('unit_weight','string','出售单位约含重量'),
            $this->set_document('unit_name','string','单位名称'),
            $this->set_document('min_unit_name','string','最小单位名称'),
            $this->set_document('user_list','array','购买的用户'),
            $this->set_document('avatar','string','用户头像'),
        );
        $data ['action'] = DOMAIN_API . 'home/index';
        $data ['method'] = 'post';
        return view('public', $data);
    }
}