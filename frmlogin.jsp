<%-- 
    Document   : frmlogin
    Created on : 11-20-2020, 11:07:40 PM
    Author     : Geovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css">      
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <title>INICIO DE SESIÓN</title>
    </head>
    <body>
        <h1 style="color: white">AUTENTICACION DE USUARIOS</h1>
         <div id="id_div_sesion">
            <c:if test="${not empty param.msg}">
                <p style="color:red;">Error: ${param.msg}</p>
            </c:if>
            <form name="form_login" action="validar.jsp" method="post">
                <!-- Username -->
                <label for="usuario">Login:</label>
                <input name="usuario" id="usuario" type="input" value="">
                <!-- Password -->
                <label for="clave">Clave:</label>
     
                    <input name="clave" id="clave" type="password">
                <div id="lower">
                   
                    <input type="submit" value="Ingresar">
                </div>
            </form>       
        </div>
    </body>
</html>
