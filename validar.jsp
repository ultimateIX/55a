<%-- 
    Document   : validar
    Created on : 11-20-2020, 11:23:34 PM
    Author     : Geovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <title>VALIDACION DE USUARIOS</title>
    </head>
    <body>
        <h1>Verificación de Usuarios</h1>
        <sql:setDataSource var = "fuenteDatos" driver = "org.mariadb.jdbc.Driver"
                           url = "jdbc:mariadb://localhost:3308/biblioteca"
                           user = "root"  password = ""/>
        <c:if test="${empty param.usuario or empty param.clave}">
            <c:redirect url="frmlogin.jsp">
                <c:param name="msg" value="login o clave vacios"/>
            </c:redirect>
        </c:if>

        <sql:query dataSource = "${fuenteDatos}" var = "result">
            SELECT count(*) as cant from usuarios where login=? and clave=?;
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.clave}"/>
        </sql:query>
        <c:if test="${result.rows[0].cant < 1}"> 
            <c:redirect url="frmlogin.jsp">
                <c:param name="msg" value="login o clave incorrectos"/>
            </c:redirect>
        </c:if> 
        <sql:query dataSource = "${fuenteDatos}" var = "datos">
            SELECT login,nombre,nivel from usuarios where login=? and clave=?;
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.clave}"/>
        </sql:query>
        <c:set var="usuario" value="${datos.rows[0].login}" scope="session" />
        <c:set var="nombre" value="${datos.rows[0].nombre}" scope="session" />
        <c:set var="nivel" value="${datos.rows[0].nivel}" scope="session" />
        <p style="color:white;"><br><br>En unos segundos se redirijirá a la página de inicio</p>
        <script>
            setTimeout(function () {
                location.href = "index.jsp";
            }, 5000);
        </script>
    </body>
</html>
