<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<c:set var="webRoot" value="<%=basePath%>"/>
<c:set var="prc" value="${pageContext.request.contextPath}"/>
<c:set var="layoutJs" value="${pageContext.request.contextPath}/bootstrap/assets/js/"/>
<c:set var="layoutCss" value="${pageContext.request.contextPath}/bootstrap/assets/css/"/>
<c:set var="layoutImages" value="${pageContext.request.contextPath}/bootstrap/assets/images/"/>
<c:set var="myJs"  value="${pageContext.request.contextPath}/resources/js/" />
<c:set var="myCss"  value="${pageContext.request.contextPath}/resources/css/" />
<c:set var="qiniu"  value="http://oud3stsjg.bkt.clouddn.com/" />

    