<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link href="css/themes/icon.css" rel="stylesheet" />
<link href="../css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../css/themes/icon.css" rel="stylesheet" />
    <link href="../css/themes/color.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限管理</title>
</head>
<style type="text/css">  
table.hovertable {  
    font-family: verdana,arial,sans-serif;  
    font-size:11px;  
    color:#333333;  
    border-width: 1px;  
    border-color: #999999;  
    border-collapse: collapse;  
}  
table {
            height: 80%;
            width: 80%;         /*  必须设置一个宽度， margin: 0 auto才能使之居于父组件中央*/
            margin: 10px auto;  /*  通过设置外边距（margin）中的左右外边距属性为auto使之居于父组件（body）中间*/
        }
table.hovertable th {  
    background-color:#c3dde0;  
    border-width: 1px;  
    padding: 8px;  
    border-style: solid;  
    border-color: #a9c6c9;  
}  
table.hovertable tr {  
	
    background-color:#d4e3e5;  
}  
table.hovertable td {  
	
    border-width: 1px;  
    padding: 8px;  
    border-style: solid;  
    border-color: #a9c6c9;  
} 
  body { padding: 20px; font-size: 0.85em; font-family: georgia, serif; }  
.btn { display: block; position: relative; background: #aaa; padding: 5px; float: left; color: #fff; text-decoration: none; cursor: pointer; }  


.btn.green { background: #9d4; } 
.btn:hover { background-color: #2ae; }  
</style>
  
	<s:if test="#request.identitys == null ||  #request.identitys.size() == 0">
		没有任何角色信息！
	</s:if>
	<s:else>
			<s:iterator value="#request.identitys">
			<table id="sec" border="1" cellpadding="10" cellspacing="0" class="hovertable" style="white-space: nowrap;">
			
					<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
						<td style="width: 100px">${i_name}</td>
						<td>权限</td>
					</tr>
					<s:checkbox label="添加权限" name="limitofadd"/>
					<s:checkbox label="编辑权限" name="limitofedit" />
					<s:checkbox label="删除权限" name="limitofadd" />
					<s:checkbox label="形式审核权限" name="limitofaudit1" />
					<s:checkbox label="部门审核权限" name="limitofaudit2" />
					<s:checkbox label="统计查询" name="limitofcheckall" />
				 	<%-- <td><a href="##" class="Delete">删除</a>
						<input type="hidden" value="${b_name }"/>		
					</td>	 --%>	
					
					<tr>
						<td colspan="2" align="center">
						
						<input type="hidden" value="${i_name}"/>
                    		<a  href="identity-delete?i_id=${i_id}" id="btnSerach" class="btn green" style="width:80px">删除角色</a>
                    		<a href="identity-input" id="btnSerach" class="btn green" style="width:160px">添加新角色</a>
                    		<a href="identity-input?i_id=${i_id}" id="btnSerach" class="btn green" style="width:240px">修改角色权限</a>
                			
                		</td>                		
           			</tr>					
			</table>
			</s:iterator>
	</s:else>
	
<body>

</body>
</html>