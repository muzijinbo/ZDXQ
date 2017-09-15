<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>

</head>
<body>

	

	<h4>need Input Page</h4>

	<s:form action="need-save" method="post">
		
		<s:hidden name="u_id"></s:hidden>
		<s:textfield name="u_name" label="姓名"></s:textfield>
		<s:textfield name="u_addr" label="地址"></s:textfield>
		<s:textfield name="#request.needuser.u_addr" label="地址"></s:textfield>
	
		<s:submit></s:submit>	
	</s:form>

</body>
</html>