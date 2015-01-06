<%-- 
    Document   : identification
    Created on : 11 sept. 2014, 10:14:31
    Author     : gilles
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Inscription</title>
<style type="text/css">@import url(css/styles.css);</style>
</head>
<body>
    <s:if test="hasErrors()">
 <div id="message_erreur"/>   
    <s:fielderror />
    <s:actionerror/>
 </div>
    </s:if>
<div id="enveloppe">									
	<h3>Inscription</h3>
	<s:form method="post" action="ValiderInscription.action">
		<s:textfield name="identifiant"  type="email" label="Identifiant" cssClass="input"/>
                <s:password name="motdepasse"  label="Mot de passe"  cssClass="input"/> 
                <s:textfield name="nom"  label="Nom"  cssClass="input"/>
                <s:textfield name="prenom"  label="Prenom"  cssClass="input"/>
		<s:submit value="Inscription"/>
	</s:form>     
       
</div>
</body>
</html>