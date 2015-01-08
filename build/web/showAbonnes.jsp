<%@page import="metier.Particulier"%>
<%@page import="java.util.List"%>
<%@page import="metier.Entreprise"%>
<%@page import="org.hibernate.Session"%>
<%@page import="util.HibernateUtil"%>
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
        <div id="menuDroit" style="text-align: center;">
            <h1> Les abonnés </h1>
            <br/>
            <br/>
            <h2 style="text-align: left;"> Les entreprises </h2>
            <table width="80%" >
                <tr bgcolor="#CCCCCC">
                    <td>
                        Login
                    </td>
                    <td>
                        Email
                    </td>
                    <td>
                        Raison Sociale
                    </td>
                </tr>
                <%
                Session uneSession = HibernateUtil.currentSession();       
        List<Entreprise> listEntreprise = uneSession.createCriteria(Entreprise.class).list();
        int i = 0;
        for(Entreprise entreprise : listEntreprise ) {
            i++;
            if (i%2 == 0) {
            %>
                <%= "<tr bgcolor=\"#DDDDDD\">" %>
                <% } 
            else { %>
            <%= "<tr bgcolor=\"#EEEEEE\">" %>
            <% } %>
                <td>
                    <%= entreprise.getLogin() %>
                </td>
                <td>
                  
                        <%= entreprise.getEmail() %>
                </td>
                <td>
                        <%= entreprise.getRaisonSociale() %>
                    
                </td>
            </tr>
            <%
        }
        if (i==0){
            %>
            <tr>
                <td colspan="3" style="text-align: center;">Aucune entreprise </td>
            </tr>
            <%
        }
        %> 
            </table>
            
            <br/>
            <h2 style="text-align: left;"> Les particuliers </h2>
            <table width="80%">
                <tr bgcolor="#CCCCCC">
                    <td>
                        Login
                    </td>
                    <td>
                        Email
                    </td>
                    <td>
                        Nom
                    </td>
                    <td>
                        Prenom
                    </td>
                    <td>
                        Date de naissance
                    </td>
                </tr>
                <%
                uneSession = HibernateUtil.currentSession();       
        List<Particulier> listParticulier = uneSession.createCriteria(Particulier.class).list();
         i = 0;
        for(Particulier particulier : listParticulier ) {
            i++;
            if (i%2 == 0) {
            %>
                <%= "<tr bgcolor=\"#DDDDDD\">" %>
                <% } 
            else { %>
            <%= "<tr bgcolor=\"#EEEEEE\">" %>
            <% } %>
                <td>
                    <%= particulier.getLogin() %>
                </td>
                <td>
                  
                        <%= particulier.getEmail() %>
                </td>
                <td>
                    <%= particulier.getNom() %>
                    
                </td>
                <td>
                    <%= particulier.getPrenom()  %>
                    
                </td>
                <td>
                    <%= particulier.getDateNaissance()%>
                    
                </td>
            </tr>
            <%
        }
        if (i==0){
            %>
            <tr>
                <td colspan="5" style="text-align: center;">Aucun particulier </td>
            </tr>
            <%
        }
        %>
            </table>
        </div>
    </body>
</html>
