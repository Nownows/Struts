<%@page import="metier.Message"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
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
            <h1> Les messages </h1>
            <br/>
            <table width="80%" >
                <tr bgcolor="#CCCCCC" style="text-align:center;">
                    <td>
                        Login
                    </td>
                    <td>
                        Message
                    </td>
                </tr>
            
        <%
        Session uneSession = HibernateUtil.currentSession();       
        List<Message> listMessage = uneSession.createCriteria(Message.class).list();
        int i = 0;
        for(Message message : listMessage ) {
            i++;
            if (i%2 == 0) {
            %>
                <%= "<tr bgcolor=\"#DDDDDD\">" %>
                <% } 
            else { %>
            <%= "<tr bgcolor=\"#EEEEEE\">" %>
            <% } %>
                <td>
                    <%= message.getAbonne().getLogin() %>
                </td>
                <td>
                    <span>
                        <%= message.getObjet() %>
                    </span>
                    <br/><br/>
                    <span>
                        <%= message.getCorps() %>
                    </span>
                </td>
            </tr>
            <%
        }
        if (i==0){
            %>
            <tr>
                <td colspan="2" style="text-align: center;">Aucun message </td>
            </tr>
            <%
        }
        %>
            </table>
        </div>
    </body>
</html>
