<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/navi.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<title>navigation bar</title>
</head>
<body>
	<div class="head_line"></div>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1><a href="index.jsp"><small>welcome to</small><big>TOMATO</big><span> LAND</span></a></h1></div>
      <div class="clr"></div>
      <div class="accountActionBar">
      	<ul>
      	<c:if test="${sessionScope.user==null}">
  		  <li><a href="Login.jsp">登录</a></li>
  		  <li><a href="./page/register.jsp">注册</a></li>
  		 </c:if>
  		 <c:if test="${sessionScope.user!=null}">
  		 <li><a href="/Blog/UserInfo">个人中心</a></li>
  		 <li><a href="/Blog/LogOff">注销</a></li>
  		 </c:if>
	    </ul>
      </div>
   <div class="menu">
        <ul>
        
          <li><a href="index.jsp" >首页</a></li>
          
          
        </ul>
      </div>
    </div>
    <div class="clr"></div>
  </div>
        <div class="clr"></div>
		
</div>

		
</body>
</html>