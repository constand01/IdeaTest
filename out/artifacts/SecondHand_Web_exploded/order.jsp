<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>order</title>
    <link rel="stylesheet" type="text/css" href="/SecondHand/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="/SecondHand/css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="/SecondHand/css/mygxin.css"/>
</head>
<body><!----------------------------------------order------------------>
<%@ include file="header.jsp"  %>
<div class="order cart mt"><!-----------------site------------------->
    <div class="site"><p class="wrapper clearfix"><span class="fl">订单确认</span><img class="top"
                                                                                   src="img/temp/cartTop02.png"></p>
    </div><!-----------------orderCon------------------->
    <div class="orderCon wrapper clearfix">
    <input type="hidden" name="token" value="${sessionScope.SESSION_ORDER_TOKEN }" >
        <div class="orderL fl"><!--------h3----------------><h3>收件信息<a href="#" class="fr">新增地址</a></h3>
            <!--------addres---------------->
            <div class="addres clearfix">
                <div class="addre fl on">
                    <div class="tit clearfix"><p class="fl">${name.user_name } <span class="default">[默认地址]</span></p>
                        <p class="fr"><a href="#">删除</a><span>|</span><a href="#" class="edit">编辑</a></p></div>
                    <div class="addCon"><p>${name.user_address }</p>
                        <p>${name.user_phone }</p></div>
                </div>
            </div>
            <h3>支付方式</h3><!--------way---------------->
            <div class="way clearfix"><img class="on" src="img/temp/way01.jpg"><img src="img/temp/way02.jpg"><img
                    src="img/temp/way03.jpg"><img src="img/temp/way04.jpg"></div>
            <h3>选择快递</h3><!--------dis---------------->
            <div class="dis clearfix"><span class="on">顺风快递</span><span>百世汇通</span><span>圆通快递</span><span>中通快递</span>
            </div>
        </div>
        <div class="orderR fr">
            <div class="msg"><h3>订单内容<a href="showcart" class="fr">返回购物车</a></h3><!--------ul---------------->
              
              <c:forEach var="rs" items="${requestScope.shoplist }">
              
          
                
                <ul class="clearfix">
                    <li class="fl"><img src="image/product/${rs.cart_p_filename }"  width="100" height="100"></li>
                    <li class="fl"><p>${rs.cart_p_name }</p>
                        <p>颜色分类：</p>
                        <p>数量：${rs.cart_p_quantity }</p></li>
                    <li class="fr">￥${rs.cart_p_price *rs.cart_p_quantity}.00</li>
                </ul>
            
                
                </c:forEach>  
                
            </div><!--------tips---------------->
            <div class="tips"><p><span class="fl">商品金额：</span><span class="fr">￥${totalprice }.00</span></p>
                <p><span class="fl">优惠金额：</span><span class="fr">￥0.00</span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p></div><!--------tips count---------------->
            <div class="count tips"><p><span class="fl">合计：</span><span class="fr">￥${totalprice }.00</span></p></div>
            <!--<input type="button" name="" value="去支付">--> <a href="ordergen?totprice=${totalprice }&id=${name.user_id}&iteminfo=${iteminfo}&token=${sessionScope.SESSION_ORDER_TOKEN }" class="pay">去支付</a></div>
            
           
    </div>
    
  
    
   
</div><!--编辑弹框--><!--遮罩-->
<div class="mask"></div>
<div class="adddz editAddre">
    <form action="#" method="get"><input type="text" placeholder="姓名" class="on"/><input type="text" placeholder="手机号"/>
        <div class="city"><select name="">
            <option value="省份/自治区">省份/自治区</option>
        </select><select>
            <option value="城市/地区">城市/地区</option>
        </select><select>
            <option value="区/县">区/县</option>
        </select><select>
            <option value="配送区域">配送区域</option>
        </select></div>
        <textarea name="" rows="" cols="" placeholder="详细地址"></textarea><input type="text" placeholder="邮政编码"/>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div><!--返回顶部-->
<div class="gotop"><a href="cart.html">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.html">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            
        </div>
    </div>
    </div>
<script src="/SecondHand/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/SecondHand/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="/SecondHand/js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="/SecondHand/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>