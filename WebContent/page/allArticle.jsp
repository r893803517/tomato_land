<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分类 | MyBlog</title>


<!-- Bootstrap core CSS -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">


<link type="text/css" rel="stylesheet" href="/Blog/css/public.css" />
<link type="text/css" rel="stylesheet" href="/Blog/css/sort.css" />
</head>
<body>
	<jsp:include page = "navi.jsp"></jsp:include>

	<div class="container" id="main">

		<div id="header"></div>

		<div class="row c_center">
			<div class="col-md-3" id="left_content">

				<div class="c_center" id="person_info">
					<img src="/Blog/img/robin.png" height="130" width="130"
						alt="what?" class="img-circle">
					<h5 class="text-muted">account name here</h5>
				</div>


				<div id="list">
					<table class="table table-hover c_center">
						<tr>
							<td><a href="/Blog/index.jsp	"><span class="glyphicon glyphicon-user"></span>
								&nbsp;&nbsp;个人信息</a></td>
						</tr>
						<tr>
							<td><a href="/Blog/index.jsp	"><span class="glyphicon glyphicon-folder-open"></span>
								&nbsp;&nbsp;我的帖子</a></td>
						</tr>
						<tr>	
							<td class="active"><a href="/Blog/SortServlet?get=all"><span class="glyphicon glyphicon-list"></span>
								&nbsp;&nbsp;分类</a></td>
						</tr>
						<tr>
							<td><a href="/Blog/TagsServlet?get=all"><span class="glyphicon glyphicon-tags"></span>
								&nbsp;&nbsp;标签</a></td>
						</tr>						
						<tr>
							<td><a href="/Blog/AxisServlet"><span class="glyphicon glyphicon-book"></span>
								&nbsp;&nbsp;时间轴</a></td>
						</tr>
						
					</table>
				</div>
				<!-- list -->
				<br />
			</div>
			<div class="col-md-2" id="center_content"></div>
			<div class="col-md-7 " id="right_Content">
				<br /> <br />
				<div class="list-group">
					<a href="#" class="list-group-item active">所有文章</a>
					<c:forEach var="article"   items="${user_article_list}" >
					<div  class="list-group-item">	
					<tabel>
					<tr>
						<td colspan = "10"><a  href="/Blog/ArticleServlet?id=${article.id}"><font size="5px">${article.title}</font></a></td>
						<td colspan = "2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td colspan = "4">${article.author}</td>
						<td colspan = "2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td colspan = "15"><span>${article.time}&nbsp;&nbsp;|</span>				
					<a href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>&nbsp;&nbsp;|
					<span>浏览数: ${article.visit}</span></td>
					</tr>
					</tabel>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="foot_line"></div>
	</div>
	<!-- container -->


	<div id="footer">
		<a href="#">&nbsp;&nbsp;MyBlog</a>
	</div>
	<!-- footer -->

</body>
</html>