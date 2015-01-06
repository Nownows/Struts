<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title><s:text name="accueil.label"/></title>
<style type="text/css">@import url(css/styles.css);</style>
</head>
<body>
    bonjour, <%= session.getAttribute("login") %>
<%--<s:debug/>--%>
<div id="enveloppe">
    envoyer un message
</div>
</body>
</html>
