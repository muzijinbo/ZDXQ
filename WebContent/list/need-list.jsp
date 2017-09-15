<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/delete.js"></script>
</head>
<body>
<h4>用户列表</h4>

	<s:if test="#request.needs == null || #request.needs.size() == 0">
		没有任何员工信息
	</s:if>
	<s:else>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>N_ID</td>
				<td>需求名称</td>
				<td>主要问题</td>
				<td>关键字</td>
				<td>操作</td>
			
			</tr>
			<s:iterator value="#request.needs">
				<tr>
					<td>${n_id }</td>
					<td>${n_name }</td>
					<td>${n_problem }</td>
					<td>${n_key }</td>
					
					<td>
						<a href="need-delete?n_id=${n_id}" class="Delete">删除</a>
						<input type="hidden" value="${u_name }"/>
						<a href="need-input?n_id=${n_id}" class="edit">编辑</a>
					</td>
				</tr>
			</s:iterator>
			
		</table>
	</s:else>
</body>
</html>