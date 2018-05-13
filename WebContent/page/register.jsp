<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>注册一个账号 </title>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath }/css/registerStyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Checkbox Background Signup Form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="text/javascript" src = "${pageContext.request.contextPath }/js/formSerialize.js"></script>
<!--Google Fonts-->
<script>
 /*      
//获取指定form中的所有的<input>对象
function getElements(formId) {
    var form = document.getElementById(formId);
    var elements = new Array();
    var tagElements = form.getElementsByTagName('input');
    for (var j = 0; j < tagElements.length; j++){
        elements.push(tagElements[j]);

    }
    return elements;
}

//获取单个input中的【name,value】数组
function inputSelector(element) {
    if (element.checked)
        return [element.name, element.value];
}

function input(element) {
    switch (element.type.toLowerCase()) {
        case 'submit':
        case 'hidden':
        case 'password':
        case 'text':
            return [element.name, element.value];
        case 'checkbox':
        case 'radio':
            return inputSelector(element);
    }
    return false;
}

//组合URL
function serializeElement(element) {
    var method = element.tagName.toLowerCase();
    var parameter = input(element);

    if (parameter) {
        var key = encodeURIComponent(parameter[0]);
        if (key.length == 0) return;

        if (parameter[1].constructor != Array)
            parameter[1] = [parameter[1]];

        var values = parameter[1];
        var results = [];
        for (var i=0; i<values.length; i++) {
            results.push(key + '=' + encodeURIComponent(values[i]));
        }
        return results.join('&');
    }
}

//调用方法
function serializeForm(formId) {
    var elements = getElements(formId);
    var queryComponents = new Array();

    for (var i = 0; i < elements.length; i++) {
        var queryComponent = serializeElement(elements[i]);
        if (queryComponent)
            queryComponents.push(queryComponent);
    }

    return queryComponents.join('&');
}
*/
function redirectTo(url){
	window.location.href = url;
}

function getFormInfo(){
    var params = serializeForm('registerForm');
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
						case 1: document.getElementById("message").innerHTML = "注册成功";
						setTimeout(() => {
							window.location.href = "/Blog/index.jsp";
						}, 2000);
						break;
						case 2: document.getElementById("message").innerHTML = "账号已注册"; break;
					
					}
				}
			};

		    xmlhttp.open("POST","/Blog/Register",true);
            xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		  
			var param = serializeForm('registerForm');
			console.log(param);
			xmlhttp.send(param.toString());
		}

	</script>
</head>
<body>
<!--signup page start here-->
<h2>Signup and join us!</h2>
<div class="signup">
		
		<form id="registerForm" name = "registerForm" method="post" >
			
			<input type="text" name = "username" placeholder="账户名" required>
			
			<input type="password" name = "password" placeholder="登陆密码" required>
			
			<input type="password" placeholder="确认密码" required>
			<input type="button" value="REGISTER NOW!" onclick="commit()">
			
		</form>
		<div class = "c_center">
			<span id = "message"></span>
		</div>
</div>
<div class="copyright">
	<p>Copyright &copy; 2018 | R0b1n</p>
</div>
<!--signup page end here-->
</body>
</html>