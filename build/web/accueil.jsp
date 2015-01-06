<%-- 
    Document   : accueil
    Created on : 11 sept. 2014, 13:11:17
    Author     : gilles
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title><s:text name="accueil.label"/></title>
<style type="text/css">@import url(css/styles.css);</style>
</head>
<body>
<%--<s:debug/>--%>
<div id="enveloppe">
    <P> 
     <h4> <s:text name="accueil.label"/> </h4>
          <s:text name="accueil.login"/> : <s:property value="unAbon.login"/> <br/>
          <s:text name="accueil.mdp"/> : <s:property value="unAbon.mdp"/><br/>  
</div>
</body>
</html>
