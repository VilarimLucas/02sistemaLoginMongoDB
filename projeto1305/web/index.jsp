<%-- 
    Document   : index
    Created on : 13 de mai. de 2023, 14:07:21
    Author     : vilar
--%>
<%@ include file="referencias.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="css/style.jsp" %>
        <title>Login</title>
    </head>
    <body> 
        <div class="container mt-4 col-lg-4">
            <div class="row">
                <div class="col align-self-center">
                    <div class="card login">
                        <div class="card-body">
                            <form  method="get" action="login_authentication.jsp">
                                <center>
                                    <br><br><br><br><br><br><br><br>
                                    Enter UserName <input type=text name="username" size="25">
                                    <br><br>
                                    Enter Password <input type="password" name="password" size="25">
                                    <br><br>
                                    <input type=submit name=Enter value="Enter" />
                                </center>
                                <center>
                                    <tb>
                                </center>
                            </form>
                        </div><!-- comment -->
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>