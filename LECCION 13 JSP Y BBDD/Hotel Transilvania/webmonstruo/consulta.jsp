<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
     <link rel="stylesheet" type="text/css" href="../css/estilos.css" />
    <title>Hotel Transilvania: Conferencia Monstruosa</title>
  </head>

  <body>
    <div>
			<br><br>			
      <div>
        <div><h1>Participantes Conferencia Monstruosa</h1></div>
          
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM Monstruo");
        %>

        <table>
            <tr><th>Nombre</th><th>Tipo</th><td><a href="accesoMons.jsp"> Volver </a></td></tr>
        
        <%
          while (listado.next()) {
             out.println("<tr><td>");           
            out.println(listado.getString("Nombre") + "</td>");
            out.println("<td>" + listado.getString("Tipo") + "</td></tr>");
         %>
         
        <%
          } // while   

          conexion.close();
        %>

        </table>
       
      </div>
    </div>
    
   </body>
</html>
