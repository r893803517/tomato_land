<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tomato land</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="./css/home.css" rel="stylesheet" type="text/css" />

<link	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->

<!--[if IE 6]>
<script src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
  /* EXAMPLE */
  DD_belatedPNG.fix('.logo img');
  
  /* string argument can be any CSS selector */
  /* .png_bg example is unnecessary */
  /* change it to what suits you! */
</script>
<![endif]-->
</head>
<body>
	<jsp:include page = "navi.jsp"></jsp:include>

	<div class="container" id="main">
	
		<div id="header"></div>

		<div class="row c_center">
			<div class="col-md-7" id="left_content">
			

                <br />
				<br />
				<div class="list-group">							
					<a href="#" class="list-group-item active"></a>
					
					<c:forEach var="article"   items="${article_list}" >
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
			<div class="col-md-2" id="center_content">		
			</div>
					
			
			<div  class="col-md-3 " id="right_Content">

				<jsp:include page = "usrCol.jsp"></jsp:include>		
			<!-- 
	
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

				<div class="c_center" id = "bref_info">
					
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
					
					</img>
					</div>
				</c:if>

				-->
				
				<!-- list -->
				<br/>
					
				<div class="sort">
					<div class="list-group">
						<span class="list-group-item active">文章分类</span>						
						
						<c:forEach var="entity"  items="${sort_count_map}">
						 <a href="/Blog/SortServlet?get=${entity.key}" class="list-group-item">${entity.key}&nbsp;&nbsp;&nbsp;&nbsp; (${entity.value})</a>						
						</c:forEach>									
								
					</div>
				</div><!-- sort -->

				
			
			
			
			</div>	
		</div>				
		<div class="foot_line"></div>
			</div><!-- container -->
	
  
</div>
</body>
</html>
