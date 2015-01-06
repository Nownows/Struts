<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Identification</title>
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
	<h3>Identification</h3>
	<s:form method="post" action="ValiderIdentification">
		<s:textfield name="unAbon.login" id="login" label="Identifiant" labelposition="top" cssClass="input"/>
                <s:password name="unAbon.mdp" id="mdp" label="Mot de passe" labelposition="top" cssClass="input"/>        
		<s:submit value="Identification"/>
	</s:form>  
        <s:a action="Inscription"><s:text name="inscription"/></s:a>
</div>
</body>
</html>