<%-- 
    Document   : identification
    Created on : 11 sept. 2014, 10:14:31
    Author     : gilles
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Identification</title>
<style type="text/css">@import url(css/styles.css);</style>
</head>
<body>
<div id="enveloppe">									
	<h3>Identification</h3>
	<s:form method="post" action="ValiderInscriptionEntreprise">
		<s:textfield name="login" id="login" label="Login" labelposition="top" cssClass="input"/>
                <s:textfield name="email" id="email" label="Email" labelposition="top" cssClass="input"/>
                <s:textfield name="raisonsociale" id="raisonsociale" label="RaisonSociale" labelposition="top" cssClass="input"/>
                <s:password name="mdp" id="mdp" label="Mot de passe" labelposition="top" cssClass="input"/>        
		<s:submit value="Identification"/>
	</s:form>     
</div>
</body>
</html>