<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <title><s:text name="accueil.label"/></title>
        <style type="text/css">@import url(css/styles.css);</style>
    </head>
    <body>
        <h1>bonjour, <%= session.getAttribute("login")%></h1>
        <%--<s:debug/>--%>
        <div id="menuGauche">
            <ul>
                <li>
                    <s:a action="Home"><s:text name="Accueil"/></s:a>
                    </li>
                    <li>
                    <s:a action="ShowMessages"><s:text name="Voir les messages"/></s:a>
                    </li>
                    <li>
                    <s:a action="SendMessage"><s:text name="Envoyer un message"/></s:a>
                    </li>
                    <li>
                    <s:a action="ShowAbonnes"><s:text name="Consulter les abonnés"/></s:a>
                </li>
            </ul>
        </div>
        <div id="menuDroit">
            <h2>Envoyer un message</h2>
            <s:form method="post" action="ValiderMessage">
		<s:textfield name="objet" id="objet" label="Objet" labelposition="top" cssClass="input"/>
                <s:textarea cols="50" rows="10"  name="corps" id="corps" label="Corps" labelposition="top" cssClass="input"/>        
                <s:submit value="Envoyer Le message"/>
	</s:form>  
        </div>
    </body>
</html>
