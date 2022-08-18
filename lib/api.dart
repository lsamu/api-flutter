
import 'package:dio/dio.dart';

class Api {
    static Dio dio = Dio();
    static String baseURL = "http://api.v5soft.com";

    // request
    static request(String url, String method, dynamic data) async {
        final response = await dio.request(baseURL + url,
            data: data,
            options: Options(
                method: method,
                headers: {Headers.contentTypeHeader: "application/json"}));
        return response.data;
    }
    
    // cms-广告位 列表
    static cmsAd(dynamic data) async{
        return request("/api/cms/ad", "post", data);
    }
    
    // cms-文章 列表
    static cmsArticle(dynamic data) async{
        return request("/api/cms/article", "post", data);
    }
    
    // cms-文章 信息
    static cmsArticleInfo(dynamic data) async{
        return request("/api/cms/article/info", "get", data);
    }
    
    // cms-文章类别 列表
    static cmsArticleClass(dynamic data) async{
        return request("/api/cms/articleclass", "post", data);
    }
    
    // cms-文章评论 列表
    static cmsArticleComment(dynamic data) async{
        return request("/api/cms/articlecomment", "post", data);
    }
    
    // cms-文章评论 创建
    static cmsArticleCommentCreate(dynamic data) async{
        return request("/api/cms/articlecomment/create", "post", data);
    }
    
    // cms-文章评论 删除
    static cmsArticleCommentDelete(dynamic data) async{
        return request("/api/cms/articlecomment/delete", "delete", data);
    }
    
    // cms-文章评论 更新
    static cmsArticleCommentUpdate(dynamic data) async{
        return request("/api/cms/articlecomment/update", "put", data);
    }
    
    // cms-文章配置 信息
    static cmsArticleConfigInfo(dynamic data) async{
        return request("/api/cms/articleconfig/info", "get", data);
    }
    
    // cms-单页图文 列表
    static cmsDiy(dynamic data) async{
        return request("/api/cms/diy", "post", data);
    }
    
    // cms-单页图文 信息
    static cmsDiyInfo(dynamic data) async{
        return request("/api/cms/diy/info", "get", data);
    }
    
    // cms-单页图文类别 列表
    static cmsDiyClass(dynamic data) async{
        return request("/api/cms/diyclass", "post", data);
    }
    
    // cms-友情链接 列表
    static cmsFriend(dynamic data) async{
        return request("/api/cms/friend", "post", data);
    }
    
    // cms-友情链接类别 列表
    static cmsFriendClass(dynamic data) async{
        return request("/api/cms/friendclass", "post", data);
    }
    
    // cms-留言板 列表
    static cmsMessage(dynamic data) async{
        return request("/api/cms/message", "post", data);
    }
    
    // cms-留言板 创建
    static cmsMessageCreate(dynamic data) async{
        return request("/api/cms/message/create", "post", data);
    }
    
    // cms-留言板 更新
    static cmsMessageUpdate(dynamic data) async{
        return request("/api/cms/message/update", "put", data);
    }
    
    // 核心-碎片块 创建
    static coreBlockerCreate(dynamic data) async{
        return request("/api/core/blocker/create", "post", data);
    }
    
    // 核心-碎片块 信息
    static coreBlockerInfo(dynamic data) async{
        return request("/api/core/blocker/info", "get", data);
    }
    
    // 核心-碎片块 更新
    static coreBlockerUpdate(dynamic data) async{
        return request("/api/core/blocker/update", "put", data);
    }
    
    // 核心-配置 信息
    static coreConfigInfo(dynamic data) async{
        return request("/api/core/config/info", "get", data);
    }
    
    // 核心-字典 列表
    static coreDict(dynamic data) async{
        return request("/api/core/dict", "post", data);
    }
    
    // 核心-字典 信息
    static coreDictInfo(dynamic data) async{
        return request("/api/core/dict/info", "get", data);
    }
    
    // 核心-关键词 列表
    static coreKeywords(dynamic data) async{
        return request("/api/core/keywords", "post", data);
    }
    
    // 核心-小程序-微信小程序 授权
    static coreMiniProgramWeiXinMiniAuth(dynamic data) async{
        return request("/api/core/miniprogram/weixinmini/auth", "post", data);
    }
    
    // 核心-小程序-微信小程序 支付
    static coreMiniProgramWeiXinMiniPay(dynamic data) async{
        return request("/api/core/miniprogram/weixinmini/pay", "post", data);
    }
    
    // 核心-导航 列表
    static coreNav(dynamic data) async{
        return request("/api/core/nav", "post", data);
    }
    
    // 核心-支付 列表
    static corePayment(dynamic data) async{
        return request("/api/core/payment", "post", data);
    }
    
    // 核心-物流 列表
    static coreShipment(dynamic data) async{
        return request("/api/core/shipment", "post", data);
    }
    
    // 核心-系统 地区
    static coreSystemArea(dynamic data) async{
        return request("/api/core/system/area", "post", data);
    }
    
    // 核心-系统 下发验证码
    static coreSystemSms(dynamic data) async{
        return request("/api/core/system/sms", "post", data);
    }
    
    // 核心-系统 上传
    static coreSystemUpload(dynamic data) async{
        return request("/api/core/system/upload", "post", data);
    }
    
    // 核心-系统 验证码
    static coreSystemVerCode(dynamic data) async{
        return request("/api/core/system/vercode", "post", data);
    }
    
    // 核心-系统 列表
    static coreThirdpartyLogin(dynamic data) async{
        return request("/api/core/thirdpartylogin/list", "post", data);
    }
    
    // 核心-用户 忘记密码
    static coreUserForget(dynamic data) async{
        return request("/api/core/user/forget", "post", data);
    }
    
    // 核心-用户 信息
    static coreUserInfo(dynamic data) async{
        return request("/api/core/user/info", "get", data);
    }
    
    // 核心-用户 登录
    static coreUserLogin(dynamic data) async{
        return request("/api/core/user/login", "post", data);
    }
    
    // 核心-用户 手机号登录
    static coreUserLoginMobile(dynamic data) async{
        return request("/api/core/user/login/mobile", "post", data);
    }
    
    // 核心-用户 登出
    static coreUserLogout(dynamic data) async{
        return request("/api/core/user/logout", "post", data);
    }
    
    // 核心-用户 注册
    static coreUserReg(dynamic data) async{
        return request("/api/core/user/reg", "post", data);
    }
    
    // 核心-用户 更新
    static coreUserUpdate(dynamic data) async{
        return request("/api/core/user/update", "put", data);
    }
    
    // 核心-用户地址 列表
    static coreUserAddress(dynamic data) async{
        return request("/api/core/useraddress", "post", data);
    }
    
    // 核心-用户地址 创建
    static coreUserAddressCreate(dynamic data) async{
        return request("/api/core/useraddress/create", "post", data);
    }
    
    // 核心-用户地址 删除
    static coreUserAddressDelete(dynamic data) async{
        return request("/api/core/useraddress/delete", "delete", data);
    }
    
    // 核心-用户地址 信息
    static coreUserAddressInfo(dynamic data) async{
        return request("/api/core/useraddress/info", "get", data);
    }
    
    // 核心-用户地址 更新
    static coreUserAddressUpdate(dynamic data) async{
        return request("/api/core/useraddress/update", "put", data);
    }
    
    // 核心-用户等级 列表
    static coreUserLevel(dynamic data) async{
        return request("/api/core/userlevel", "post", data);
    }
    
    // 核心-用户等级 信息
    static coreUserLevelInfo(dynamic data) async{
        return request("/api/core/userlevel/info", "get", data);
    }
    
    // 核心-微信小程序 更新用户位置
    static coreWxMpLocation(dynamic data) async{
        return request("/api/core/weixin/location", "post", data);
    }
    
    // 插件-扫描点餐-订单 列表
    static pluginDiningOrder(dynamic data) async{
        return request("/api/plugin/dining/order", "post", data);
    }
    
    // 插件-扫描点餐-订单 回调
    static pluginDiningOrderCall(dynamic data) async{
        return request("/api/plugin/dining/order/call", "post", data);
    }
    
    // 插件-扫描点餐-订单 点餐
    static pluginDiningOrderCreate(dynamic data) async{
        return request("/api/plugin/dining/order/create", "post", data);
    }
    
    // 插件-扫描点餐-订单 结账
    static pluginDiningOrderPay(dynamic data) async{
        return request("/api/plugin/dining/order/pay", "post", data);
    }
    
    // 插件-扫描点餐-订单 加菜
    static pluginDiningOrderProductAdd(dynamic data) async{
        return request("/api/plugin/dining/order/product/add", "post", data);
    }
    
    // 插件-扫描点餐-订单 删除
    static pluginDiningOrderProductDelete(dynamic data) async{
        return request("/api/plugin/dining/order/product/delete", "post", data);
    }
    
    // 插件-扫描点餐-订单 数量
    static pluginDiningOrderProductNum(dynamic data) async{
        return request("/api/plugin/dining/order/product/num", "post", data);
    }
    
    // 插件-扫描点餐-餐桌 列表
    static pluginDiningTable(dynamic data) async{
        return request("/api/plugin/dining/table", "post", data);
    }
    
    // 插件-扫描点餐-餐桌 详细
    static pluginDiningTableInfo(dynamic data) async{
        return request("/api/plugin/dining/table/info", "post", data);
    }
    
    // 可视化-类别 列表
    static visualClass(dynamic data) async{
        return request("/api/plugin/visual/class", "post", data);
    }
    
    // 可视化-类别 操作
    static visualClassBat(dynamic data) async{
        return request("/api/plugin/visual/class/bat", "post", data);
    }
    
    // 可视化-类别 创建
    static visualClassCreate(dynamic data) async{
        return request("/api/plugin/visual/class/create", "post", data);
    }
    
    // 可视化-类别 删除
    static visualClassDelete(dynamic data) async{
        return request("/api/plugin/visual/class/delete", "delete", data);
    }
    
    // 可视化-类别 信息
    static visualClassInfo(dynamic data) async{
        return request("/api/plugin/visual/class/info", "get", data);
    }
    
    // 可视化-类别 更新
    static visualClassUpdate(dynamic data) async{
        return request("/api/plugin/visual/class/update", "put", data);
    }
    
    // 可视化-数据源 列表
    static visualDataSource(dynamic data) async{
        return request("/api/plugin/visual/datasource", "post", data);
    }
    
    // 可视化-数据源 操作
    static visualDataSourceBat(dynamic data) async{
        return request("/api/plugin/visual/datasource/bat", "post", data);
    }
    
    // 可视化-数据源 创建
    static undefined(dynamic data) async{
        return request("/api/plugin/visual/datasource/create", "post", data);
    }
    
    // 可视化-数据源 删除
    static visualDataSourceDelete(dynamic data) async{
        return request("/api/plugin/visual/datasource/delete", "delete", data);
    }
    
    // 可视化-数据源 信息
    static visualDataSourceInfo(dynamic data) async{
        return request("/api/plugin/visual/datasource/info", "get", data);
    }
    
    // 可视化-数据源 更新
    static visualDataSourceUpdate(dynamic data) async{
        return request("/api/plugin/visual/datasource/update", "put", data);
    }
    
    // 可视化-项目 列表
    static visualProject(dynamic data) async{
        return request("/api/plugin/visual/project", "post", data);
    }
    
    // 可视化-项目 操作
    static visualProjectBat(dynamic data) async{
        return request("/api/plugin/visual/project/bat", "post", data);
    }
    
    // 可视化-项目 创建
    static visualProjectCreate(dynamic data) async{
        return request("/api/plugin/visual/project/create", "post", data);
    }
    
    // 可视化-项目 删除
    static visualProjectDelete(dynamic data) async{
        return request("/api/plugin/visual/project/delete", "delete", data);
    }
    
    // 可视化-项目 导出flutter
    static visualProjectExportFlutter(dynamic data) async{
        return request("/api/plugin/visual/project/export_flutter", "post", data);
    }
    
    // 可视化-项目 导出UniApp
    static visualProjectExportUniApp(dynamic data) async{
        return request("/api/plugin/visual/project/export_uniapp", "post", data);
    }
    
    // 可视化-项目 导出vue
    static visualProjectExportVue(dynamic data) async{
        return request("/api/plugin/visual/project/export_vue", "post", data);
    }
    
    // 可视化-项目 导出wechat
    static visualProjectExportWeChat(dynamic data) async{
        return request("/api/plugin/visual/project/export_wechat", "post", data);
    }
    
    // 可视化-项目 信息
    static visualProjectInfo(dynamic data) async{
        return request("/api/plugin/visual/project/info", "get", data);
    }
    
    // 可视化-项目 更新
    static visualProjectUpdate(dynamic data) async{
        return request("/api/plugin/visual/project/update", "put", data);
    }
    
    // 商品-品牌 列表
    static productAddition(dynamic data) async{
        return request("/api/product/addition", "post", data);
    }
    
    // 商品-品牌 列表
    static productBrand(dynamic data) async{
        return request("/api/product/brand", "post", data);
    }
    
    // 商品-购物车 列表
    static productCart(dynamic data) async{
        return request("/api/product/cart", "post", data);
    }
    
    // 商品-购物车 加入
    static productCartCreate(dynamic data) async{
        return request("/api/product/cart/create", "post", data);
    }
    
    // 商品-购物车 删除
    static productCartDelete(dynamic data) async{
        return request("/api/product/cart/delete", "delete", data);
    }
    
    // 商品-购物车 清空
    static productCartEmpty(dynamic data) async{
        return request("/api/product/cart/empty", "post", data);
    }
    
    // 商品-购物车 修改数量
    static productCartNum(dynamic data) async{
        return request("/api/product/cart/num", "post", data);
    }
    
    // 商品-购物车 选中
    static productCartSelected(dynamic data) async{
        return request("/api/product/cart/selected", "post", data);
    }
    
    // 商品-评论 列表
    static productComment(dynamic data) async{
        return request("/api/product/comment", "post", data);
    }
    
    // 商品-评论 创建
    static productCommentCreate(dynamic data) async{
        return request("/api/product/comment/create", "post", data);
    }
    
    // 商品-评论 删除
    static productCommentDelete(dynamic data) async{
        return request("/api/product/comment/delete", "delete", data);
    }
    
    // 商品-评论 更新
    static productCommentUpdate(dynamic data) async{
        return request("/api/product/comment/update", "put", data);
    }
    
    // 商品-规格 列表
    static productDimensionContent(dynamic data) async{
        return request("/api/product/dimension/content", "post", data);
    }
    
    // 商品-收藏 列表
    static productFav(dynamic data) async{
        return request("/api/product/fav", "post", data);
    }
    
    // 商品-收藏 检测
    static productFavInfo(dynamic data) async{
        return request("/api/product/fav/check", "get", data);
    }
    
    // 商品-收藏 加入
    static productFavCreate(dynamic data) async{
        return request("/api/product/fav/create", "post", data);
    }
    
    // 商品-收藏 删除
    static productFavDelete(dynamic data) async{
        return request("/api/product/fav/delete", "delete", data);
    }
    
    // 商品-重量模板 列表
    static productFreight(dynamic data) async{
        return request("/api/product/freight", "post", data);
    }
    
    // 商品-营销-优惠券 列表
    static productMarketingCoupon(dynamic data) async{
        return request("/api/product/marketingcoupon", "post", data);
    }
    
    // 商城-营销-分销 列表
    static productMarketingDistribution(dynamic data) async{
        return request("/api/product/marketingdistribution", "post", data);
    }
    
    // 商品-营销-组团 列表
    static productMarketingGroup(dynamic data) async{
        return request("/api/product/marketinggroup", "post", data);
    }
    
    // 商品-营销-折扣 列表
    static productMarketingRebate(dynamic data) async{
        return request("/api/product/marketingrebate", "post", data);
    }
    
    // 商品-订单 列表
    static productOrder(dynamic data) async{
        return request("/api/product/order", "post", data);
    }
    
    // 商品-订单 支付回调
    static productOrderCallBack(dynamic data) async{
        return request("/api/product/order/callback", "post", data);
    }
    
    // 商品-订单 订单评论
    static productOrderComment(dynamic data) async{
        return request("/api/product/order/comment", "post", data);
    }
    
    // 商品-订单 创建
    static productOrderCreate(dynamic data) async{
        return request("/api/product/order/create", "post", data);
    }
    
    // 商品-订单 删除
    static productOrderDelete(dynamic data) async{
        return request("/api/product/order/delete", "delete", data);
    }
    
    // 商品-订单 信息
    static productOrderInfo(dynamic data) async{
        return request("/api/product/order/info", "get", data);
    }
    
    // 商品-订单 汇总
    static productOrderSummary(dynamic data) async{
        return request("/api/product/order/summary", "post", data);
    }
    
    // 商品-订单 更新
    static productOrderUpdate(dynamic data) async{
        return request("/api/product/order/update", "put", data);
    }
    
    // 商品-订单产品 列表
    static productOrderProduct(dynamic data) async{
        return request("/api/product/orderproduct", "post", data);
    }
    
    // 商品-订单产品评论 列表
    static productOrderProductComment(dynamic data) async{
        return request("/api/product/orderproductcomment", "post", data);
    }
    
    // 商品-订单产品评论 创建
    static productOrderProductCommentCreate(dynamic data) async{
        return request("/api/product/orderproductcomment/create", "post", data);
    }
    
    // 商品-订单产品评论 更新
    static productOrderProductCommentUpdate(dynamic data) async{
        return request("/api/product/orderproductcomment/update", "put", data);
    }
    
    // 商品-订单报表 列表
    static productOrderReport(dynamic data) async{
        return request("/api/product/orderreport", "post", data);
    }
    
    // 商品-订单报表 信息
    static productOrderReportInfo(dynamic data) async{
        return request("/api/product/orderreport/info", "get", data);
    }
    
    // 商品-产品 列表
    static productProduct(dynamic data) async{
        return request("/api/product/product", "post", data);
    }
    
    // 商品-产品 信息
    static productProductInfo(dynamic data) async{
        return request("/api/product/product/info", "get", data);
    }
    
    // 商品-类别 列表
    static productProductClass(dynamic data) async{
        return request("/api/product/productclass", "post", data);
    }
    
    // 商品-产品配置 信息
    static productProductConfigInfo(dynamic data) async{
        return request("/api/product/productconfig/info", "get", data);
    }
    
    // 商品-商铺 列表
    static productShop(dynamic data) async{
        return request("/api/product/shop", "post", data);
    }
    
    // 商品-商铺 申请
    static productShopApply(dynamic data) async{
        return request("/api/product/shop/apply", "post", data);
    }
    
    // 商品-商铺 信息
    static productShopInfo(dynamic data) async{
        return request("/api/product/shop/info", "get", data);
    }
    
    // 商品-商铺 更新
    static productShopUpdate(dynamic data) async{
        return request("/api/product/shop/update", "put", data);
    }
    
    // 商品-商铺用户 列表
    static productShopUser(dynamic data) async{
        return request("/api/product/shopuser", "post", data);
    }
    
    // 商品-专题类别 列表
    static productTopicClass(dynamic data) async{
        return request("/api/product/topicclass", "post", data);
    }
    
}      
    
    
        