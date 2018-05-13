<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href = "./css/usrCol.css" rel="stylesheet" type="text/css"/>
<link	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:if test="${sessionScope.user!=null}">
			<div id="title">
			<br></br>
			<h5 class="text-muted">We all someone else before</h5>
		</div>

		<div class="c_center" id="person_info">
			<img src="/Blog/img/robin.png" height="130" width="130"
				alt="头像" class="img-circle">
			
			<h4 class="text-muted">Robin</h4>
			
		</div>

		<div class ="c_center" id = "bref_info">
			
			<div class="inline ">
				<a href="#">${article_number}<br/>发帖数</a>
			</div>
			<div class="inline ">
				<a href="/Blog/SortServlet?get=all"><span> ${sort_number} </span><br/>新评论</a>
			</div>
			<div class="inline " >
				<a href="/Blog/TagsServlet?get=all"><span>${tags_number}</span><br/>我的评论</a>
			</div>
			<div class="inline " >
				<a href=""><span>${tags_number}</span><br/>有人赞我</a>
			</div>
		</div>
		
		<div id="list">
			<table class="table table-hover c_center">
				<tr class="active">
					<td><a href="/Blog/AddServlet"> <span class="glyphicon glyphicon-pencil"></span>
						&nbsp;&nbsp;新的帖子</a></td>
				</tr>
				<tr>	
					<td><a href="/Blog/SortServlet?get=all"><span class="glyphicon glyphicon-list"></span>
						&nbsp;&nbsp;我的分类</a></td>
				</tr>
				<tr>
					<td><a href="/Blog/TagsServlet?get=all"><span class="glyphicon glyphicon-tags"></span>
						&nbsp;&nbsp;我的标签</a></td>
				</tr>						
				
			</table>
		</div>
		
		</c:if>
		
		<c:if test="${sessionScope.user==null}">
			<div id="title">
			<br></br>
			<h5 class="text-muted">Who you are</h5>
		</div>

		<div class="c_center" id="person_info">
			<img src="/Blog/img/unknown.png" height="130" width="130"
				alt="头像" class="img-circle">
			
			<h4 class="text-muted">访客</h4>
			
		</div>
		</c:if>
		

</body>
</html>