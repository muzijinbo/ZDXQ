<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
    <html>
    <head>
    	<meta charset="UTF-8">
    	<title>Basic TextBox - jQuery EasyUI Demo</title>
    	<link rel="stylesheet" type="text/css" href="../css/themes/default/easyui.css">
    	<link rel="stylesheet" type="text/css" href="../css/themes/icon.css">
    	<link rel="stylesheet" type="text/css" href="../demo.css">
    	<script type="text/javascript" src="../scripts/jquery.min.js"></script>
    	<script type="text/javascript" src="../scripts/jquery.easyui.min.js"></script>
    </head>
    <body>
    	<h2>Basic TextBox</h2>
    	<p>The textbox allows a user to enter information.</p>
    	<div style="margin:20px 0;"></div>
    	<div class="easyui-panel" title="Register" style="width:400px;padding:30px 60px">
    		<div style="margin-bottom:20px">
    			<div>Email:</div>
    			<input class="easyui-textbox" data-options="prompt:'Enter a email address...',validType:'email'" style="width:100%;height:32px">
    		</div>
    		<div style="margin-bottom:20px">
    			<div>First Name:</div>
    			<input class="easyui-textbox" style="width:100%;height:32px">
    		</div>
    		<div style="margin-bottom:20px">
    			<div>Last Name:</div>
    			<input class="easyui-textbox" style="width:100%;height:32px">
    		</div>
    		<div style="margin-bottom:20px">
    			<div>Company:</div>
    			<input class="easyui-textbox" style="width:100%;height:32px">
    		</div>
    		
    		<div>
    			<a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
    		</div>
    	</div>
    </body>
    </html>