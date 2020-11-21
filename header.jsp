<%-- 
    Document   : header
    Created on : 11-21-2020, 02:35:59 PM
    Author     : Geovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<td>
    SISTEMA DE REGISTRO DE PERSONAS<br>
    <b style="color:red;">${sessionScope.nombre}</b>
</td>
            
    <c:if test="${not empty sessionScope.usuario}">
        <c:if test="${sessionScope.usuario != 'Anonimo'}">
            <span style="color:blue;font-size:5mm;">
                Usuario: ${sessionScope.usuario}</span><br>
            <a href="logout.jsp">Salir de sesión</a>
        </c:if>
    </c:if>
    <c:if test="${empty sessionScope.usuario or sessionScope.usuario eq 'Anonimo'}">
          <span style="color:brown;font-size:5mm;">
              <a href="frmlogin.jsp">Iniciar sesión</a>
        </span>
    </c:if>
                
