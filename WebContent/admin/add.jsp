<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新的文章 | MyBlog</title>


<!-- Bootstrap core CSS -->
<link	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="./css/add.css" />

<link rel="stylesheet" href="./editormd/css/style.css" />
<link rel="stylesheet" href="./editormd/css/editormd.css" />
 
<script src="./editormd/js/zepto.min.js"></script>
<script src="./editormd/js/editormd.js"></script>  

<script src="./js/add.js"></script>
</head>
<body>
	<jsp:include page = "../page/navi.jsp"></jsp:include>
	<div class="container" id="main">		
							
		   <form  id = "infoForm" action="/Blog/NewArticleServlet" method="post">
		   		
		   		<div class="info" >
		   		<!-- title -->
		   		<br>
		   		标题:
		   		<input type="text" class="brefInfo" name="title" >	
 				分类:
 				<select class = "brefInfo" name = "sort">
 					<option value = "生活如初恋">生活像初恋</option>					
 					<option value = "学习使我乐">学习使我快乐</option>
 					<option value = "" selected> ---请选择一个分类--- </option>
 				</select>
 				
		   		</div>	   		
		 
		   		<!-- content -->   
                <div class="editormd" id="mdView">  
                              
                    <textarea name="content"></textarea>
                </div>
                <br/>
                <input  class="btn btn-default"  type="submit"   value="提交" />
            </form>
		
		<div class="foot_line"></div>
			<!-- container -->
		</div><!-- container -->
	
		<div id="footer">
		<a href="#">&nbsp;&nbsp;MyBlog</a>
		
	</div> <!-- footer -->		
		
	<script type="text/javascript">
			var testEditor;
			var jQuery = Zepto;
            $(function() {
					testEditor = editormd("mdView", {
						width  : "80%",
						height : 720,
						path   : './editormd/lib/',
                        codeFold : true,
                        searchReplace : true,
                        saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea                   
                        htmlDecode : "style,script,iframe|on*", // 开启 HTML 标签解析，为了安全性，默认不开启
                        emoji : true,
                        taskList : true,
                        tocm: true,      
                        tex : true,  
                        flowChart : true,  
                        sequenceDiagram : true,   
                        imageUpload : true,
				        imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],				        
				        imageUploadURL : "/Blog/UploadPic",
				        //后台只需要返回一个 JSON 数据				      
						onload : function() {
							//console.log("onload =>", this, this.id, this.settings);
						}
					});				
					editor.setToolbarAutoFixed(false);//工具栏自动固定定位的开启与禁用               
            });
        </script>	
	
</body>
</html>