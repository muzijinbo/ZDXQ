<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建新角色</title>

 <link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
    	<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
    	<link rel="stylesheet" type="text/css" href="demo.css">
    	<script type="text/javascript" src="scripts/jquery.min.js"></script>
    	<script type="text/javascript" src="scripts/jquery.easyui.min.js"></script>
</head>
<body>
	<s:form action="identity-save" method="post" theme="simple" class="easyui-panel" style="width:400px;padding:30px 60px">
		<table class="hovertable">
			<tr >
				<th colspan="2">添加新角色</th>
			</tr>
			<tr >
				<td style="width:100px">角色名称</td>
				<td>
					<s:textfield name="i_name" style="width:200px"  class="easyui-textbox" ></s:textfield>
				</td>
			</tr>
			
			<tr >		
				<td style="width :100px">填写需求权限</td>
				<td>
					<s:select name="limitofadd" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"
					style="width:200px;height:32px" class="easyui-combobox"
					/>
				</td>
			</tr>
			<tr >
				<td style="width :100px">权限管理权限</td>
				<td>
				<s:select name="limitofedit" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"
				style="width:200px;height:32px" class="easyui-combobox"
				/>
				</td>
			</tr>
			<tr >
				<td  style="width :100px">删除需求权限</td>
				<td>
				<s:select name="limitofdelete" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"				
				style="width:200px;height:32px" class="easyui-combobox"
				/>
				</td>
			</tr>
			<tr >
				<td style="width :100px">形式审核权限</td>
				<td>
				<s:select name="limitofaudit1" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"
				style="width:100%;height:32px" class="easyui-combobox"/>
				</td>
			</tr>	
			<tr >
				<td style="width :100px">部门审核权限</td>
				<td>
				<s:select name="limitofaudit2" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"
					style="width:200px;height:32px" class="easyui-combobox" label="部门审核权限"
				/>
				</td>
			</tr>
			<tr >
				<td style="width :100px">统计查询权限</td>
				<td>
				<s:select name="limitofcheckall" list="#{'false':'拒绝','true':'拥有'}" listKey="key" listValue="value"
					style="width:200px;height:32px"  class="easyui-combobox" label="统计查询权限"
				/>
				</td>
			</tr>
			<tr >
				<td colspan="2">			
					<s:submit class="easyui-linkbutton"  style="width:300px;height:32px"  ></s:submit>
				</td>
			</tr>
		</table>
	</s:form>
	
</body>
</html>