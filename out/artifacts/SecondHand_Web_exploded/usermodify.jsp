<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!--/sidebar--> 
<head>
  <meta charset="UTF-8">
    <script src="js/calendar.js"></script>
    <script src="js/function.js"></script>
    <script src="/SecondHand/js/jquery-1.12.4.min.js"></script>
     <link rel="stylesheet" type="text/css" href="/SecondHand/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/SecondHand/css/main.css"/>
   </head>
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><a href="index.jsp">首页</a><span class="crumb-step">&gt;</span><span>用户信息修改</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="usermodify" method="post" id="myform" name="myform" onsubmit="return checkFrom(this)">
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>用户名：</th>
                                <td>
                                    <input class="common-text required" id="title" value="${user.user_id }" name="username" size="50" value="" onfocus="FocusItem(this)"   type="text">
                               <span></span>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>用户姓名：</th>
                                <td>
                                    <input class="common-text required" id="title" value="${user.user_name }" name="name" size="50" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)"  type="text">
                                <span></span>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>登录密码：</th>
                                <td>
                                    <input class="common-text required" id="title" placeholder="请输入密码"  name="password" size="50" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)"  type="text">
                                <span></span>
                                </td>
                            </tr>
                            <tr>
                                <th>性别：</th>
                                <td>
                                    <input type="radio" name="sex" value="T" checked="checked">男
                                    <input type="radio" name="sex" value="F" >女
                                </td>
                            </tr>
                             <tr>
                                <th>出生日期：</th>
                                <td>
                                    <input class="common-text"   name="birthday" size="50" value="" type="text" onfocus="c.show(this)" autocomplete="off">
                                <span></span>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>电子邮箱：</th>
                                <td>
                                    <input class="common-text required" id="title" value="${user.user_email }"  name="email" size="50" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)"  type="text">
                                <span></span>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>手机号码：</th>
                                <td>
                                    <input class="common-text required" id="title" value="${user.user_phone }"  name="mobile" size="50" value="" type="text">
                                <span></span>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>送货地址：</th>
                                <td>
                                    <input class="common-text required" id="title" value="${user.user_address }"  name="address" size="50" value="" type="text">
                               <span></span>
                                </td>
                            </tr>
                            
                             <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>