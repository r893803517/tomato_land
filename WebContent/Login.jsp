<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta charset="UTF-8">
<title>登录 | MyBlog</title>

 	<!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" rel="stylesheet">
    <!-- Custom styles for this template -->   
    
    <link type="text/css" rel="stylesheet" href="/Blog/css/login.css" />  
    <script type = "text/javascript" src="${pageContext.request.contextPath }/js/formSerialize.js">
    </script>
    <script>
    

    function getFormInfo(){
        var params = serializeForm('form');
        console.log(params);
    }
            function commit()
    		{
    		    var xmlhttp;
    		    if(window.XMLHttpRequest){
    		        xmlhttp = new XMLHttpRequest();
    			}else{
    		        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    			}
    			xmlhttp.onreadystatechange = function(){
    		        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
    		            console.log(xmlhttp.responseText);
    		            var result =JSON.parse( xmlhttp.responseText);
    		            switch (result.statu)
    					{
    						case 1: document.getElementById("message").innerHTML = "登录成功";
    						setTimeout(() => {
    							window.location.href = "/Blog/index.jsp";
    						}, 2000);
    						break;
    						case 2: document.getElementById("message").innerHTML = "账号密码错误"; break;
    					
    					}
    				}
    			};

    		    xmlhttp.open("POST","/Blog/LoginServlet",true);
                xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    		  
    			var param = serializeForm('form');
    			console.log(param);
    			xmlhttp.send(param.toString());
    		}

    </script>

</head>
<body>
	<div class="container" id="main">

		<form class="form-signin"  name = "form" id="form" action="/Blog/LoginServlet"
			method="post">
			<h2 class="form-signin-heading"><a href="/Blog/index.jsp">Tomato</a></h2>
			<br>
			<br>
			<label for="input" class="sr-only">用户名</label> <input type="text"
				id="input" class="form-control" placeholder="用户名" name="username"
				required> <label for="inputPassword" class="sr-only">密码</label>
				<br>
			<input type="password" id="inputPassword" class="form-control"
				placeholder="密码" name="password" required>

			<button class="btn btn-lg btn-primary btn-block" type="button"
				id="submit" onclick="commit()">登录</button>
			<a id = "register" href = "/Blog/page/register.jsp">注册</a>
		
		</form>
		<div class = "c_center">
			<span id = "message"></span>
		</div>
		<!-- /form -->

	</div>
	<!-- /container -->

	


</body>
</html>