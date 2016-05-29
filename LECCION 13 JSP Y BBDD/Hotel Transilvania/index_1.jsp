

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/estilos.css" />
  </head>
  <body>
    <div class="container">
        
            <form method="post" action="acceso.jsp">
            <table>    
            <tr>   
               <td id="libre"> <label for="usuario">Monstruo</label> </td>   
               <td id="libre"> <input type="text" name="usuario" id="usuario"class="boton"></td> 
            </tr>
            <tr>
               <td id="libre"><label for="clave">Contraseña</label></td>                   
               <td id="libre"><input type="password" name="clave" id="clave"  class="boton"></td>
            </tr> 
            <tr>
               <td id="libre"> </td>                   
               <td id="libre"><button type="submit" name="aceptar" class="boton">Aceptar </button></td>
            </tr> 
            </table>
            </form>
            <form method="post" action="index.jsp">
            <table>
            <tr>
               <td id="libre"> </td>                   
               <td id="libre"><a href="webmonstruo/claveMonstruos.jsp" class="boton">Nuevo Monstruo </a></td>
            </tr> 
            </table>
              
         </form>
      
      </div>
  </body>
</html>
