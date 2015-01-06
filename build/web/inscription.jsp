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
    <table >
        <tr style="padding:20px">
            <td style="padding:20px">
                <h3>Inscription Particulier</h3><br/>
                <s:form method="post" action="ValiderInscriptionParticulier.action">
		<s:textfield name="login"  type="email" label="Identifiant" cssClass="input"/>
                <s:password name="mdp"  label="Mot de passe"  cssClass="input"/> 
		<s:submit value="Inscription"/>
                </s:form> 
            </td>
            <td style="padding:20px">
                <h3>Inscription Entreprise</h3><br/>
                <s:form method="post" action="ValiderInscriptionEntreprise.action">
		<s:textfield name="login"  type="email" label="Identifiant" cssClass="input"/>
                <s:password name="mdp"  label="Mot de passe"  cssClass="input"/> 
		<s:submit value="Inscription"/>
                </s:form> 
            </td>
                
        </tr>
    </table>
        
    
        
       
</div>
</body>
</html>