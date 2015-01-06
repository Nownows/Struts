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
          <s:text name="accueil.identifiant"/> : <s:property value="unAbon.identifiant"/> <br/>
          <s:text name="accueil.motdepasse"/> : <s:property value="unAbon.motdepasse"/><br/>  
          <s:text name="accueil.nom"/> : <s:property value="nom"/> <br/>
          <s:text name="accueil.prenom"/> : <s:property value="prenom"/><br/> 
</div>
</body>
</html>
