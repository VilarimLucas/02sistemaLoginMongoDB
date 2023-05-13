<%-- 
    Document   : Choose
    Created on : 13 de mai. de 2023, 14:45:12
    Author     : vilar
--%>
<%@ include file="referencias.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./css/style.jsp" %>
        <title>Choose</title>
    </head>
    <body> 
        <form>
            <%
                if (session.getAttribute("userid") == null) {
                    response.sendRedirect("login_first.jsp");
                }
            %>
            <br><br>
            <center>...Enter Choice... </center>
            Enter New Data &nbsp;&nbsp; <input type="button" name = "ENTER" value = "ENTER" onclick="location = 'insert.jsp'" >
            <br>  <br>
            Display Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name = "DISPLAY" value = "DISPLAY" onclick="location = 'Display.jsp'" >
            <br> <br>
        </form>
    </body>
</html>
