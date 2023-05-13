<%-- 
    Document   : insert
    Created on : 13 de mai. de 2023, 15:27:54
    Author     : vilar
--%>

<%@ include file="referencias.jsp" %>
<!DOCTYPE html>


<html>
    <head>
        <%@ include file="./css/style.jsp" %>
        <title>Insert title here</title>
    </head>
    <body>
        <form action="datainsert.jsp" method="get">
            <h3>HI</h3>
            Enter Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Name" value="">
            <br>
            <br>
            Enter Location&nbsp;&nbsp;<input type="text" name="Location" value="">
            <br><br>
            Enter Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Code" value="" size="5">
            <input type="button" name="Back" value = "Back" onclick="location = 'Choose.jsp'">
            <input type="submit" name="Save" value = "Save">
        </form>
    </body>
</html>
