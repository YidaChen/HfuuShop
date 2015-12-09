<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
String servletPath=path+"/GoodsCheckServlet";
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="panel panel-info">
<div class="panel-heading">
<%
	out.println("发布新物品");
%>
</div>
<div class="panel-body">

 <form  action="<%=servletPath%>" method="post" enctype="multipart/form-data">

 <%
 if(request.getAttribute("isCheck")!=null){%>
 <div class="alert alert-danger" role="alert">
 <%
 if(request.getAttribute("nameCheck")!=null&&!request.getAttribute("nameCheck").equals("")){
	 out.print(request.getAttribute("nameCheck"));

	 
 };if(request.getAttribute("quantityCheck")!=null&&!request.getAttribute("quantityCheck").equals("")){
	 out.print(request.getAttribute("quantityCheck"));
	 
 }if(request.getAttribute("contentCheck")!=null&&!request.getAttribute("contentCheck").equals("")){
	 out.print(request.getAttribute("contentCheck"));
	 
 }
 if(request.getAttribute("fileCheck")!=null&&!request.getAttribute("fileCheck").equals("")){
	 out.print(request.getAttribute("fileCheck"));
	 
 }
 %></div>
 <% }%>
  <div class="form-group">
    <p>物品名称：</p>
    <input class="form-control" name="name-goods">
  </div>
  <div class="form-group">
    <p>数量：</p>
    <input type="number" class="form-control" name="quantity-goods">
  </div>
  <div class="form-group">
    <p>物品简介：</p>
    <textarea rows="3" class="form-control" name="content-goods"></textarea>
  </div>
  <div class="form-group">
    <p>物品图片：</p>
    <input type="file" name="file">
    <p class="help-block">提醒：请上传真实物品照片</p>
  </div>
   <button type="submit" class="btn btn-primary">提交</button>
</form>
</div>
</div>