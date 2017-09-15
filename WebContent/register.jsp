<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
<style>
	body {
		margin: 0;
		padding: 0;
		background-color: #F7F7F7;
		font-family: '汉仪大隶书繁';
	}

	form {
		max-width: 640px;
		width: 100%;
		margin: 24px auto;
		font-size: 28px;
	}

	label {
		display: block;
		margin: 10px 10px 15px;
		font-size: 24px;
	}

	input {
		display: block;
		width: 100%;
		height: 40px;
		font-size: 22px;
		margin-top: 10px;
		padding: 6px 10px;
		color: #333;
		border: 1px solid #CCC;
		box-sizing: border-box;
	}

	meter, progress {
		display: block;
		width: 100%;
		margin-top: 10px;
	}

	.btn {
		margin-top: 30px;
	}

	.btn input {
		color: #FFF;
		background-color: green;
		border: 0 none;
		outline: none;
		cursor: pointer;
	}

</style>
<script type="text/javascript">

$(function(){
	$(":input[name=u_name]").change(function(){
		var val = $(this).val();
		val = $.trim(val);
		var $this = $(this);
		
		if(val != ""){
			alert("发送ajax!");
			//把当前节点后面的所有 font 兄弟节点删除
			
			$this.nextAll("font").remove();
			var url = "user-checkName";
			var args = {"u_name":val, "time":new Date()};
			$.post(url, args, function(data){
				//表示可用
				if(data == "1"){
					$this.after("<font color='green'>LastName可用!</font>");
				}
				//不可用
				else if(data == "0"){
					$this.after("<font color='red'>LastName不可用!</font>");						
				}
				//服务器错误
				else{
					alert("服务器错误!");
				}

			}); 
				
			
		}else{
			alert("lastName 不能为空");
			$(this).val("");
			$this.focus();
		}
	});
})
</script>
</head>
<body>
<s:form action="user-save" method="post">
	
	
	
	<s:textfield name="u_name" label="姓名"></s:textfield>
 	<s:textfield name="u_addr" label="地址"></s:textfield>

	<s:textfield name="u_netaddr" label="单位网址"></s:textfield>

	<s:textfield name="u_email" label="Email"></s:textfield>

	<s:textfield name="u_fname" label="法人代表"></s:textfield>

	<s:textfield name="u_postcode" label="邮政编码"></s:textfield>
	<s:textfield name="u_linkman" label="联系人"></s:textfield>
	<s:textfield name="u_telephone" label="联系电话"></s:textfield>
	<s:textfield name="u_phone" label="手机"></s:textfield>
	<s:textfield name="u_fax" label="传真"></s:textfield>
	<s:textfield name="u_otype" label="企业类型"></s:textfield>
	
	
	<s:textarea name="u_introduce" label="企业简介"></s:textarea>
	<s:select list="#request.depts" 
		listKey="d_id" listValue="d_name" name="dept.d_id" label="Dept">
		
	</s:select>
	<s:submit  name=" 确认提交" id=" 确认提交"  class="btn"></s:submit>
</s:form>
<script>
	var score = document.getElementById('score');
	var level = document.getElementById('level');

	score.oninput = function () {
		level.value = this.value;
	}
</script>

<div style="text-align:center;">

</div>


</body>
</html>