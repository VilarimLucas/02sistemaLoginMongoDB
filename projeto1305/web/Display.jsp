<%-- 
    Document   : Display
    Created on : 13 de mai. de 2023, 15:26:25
    Author     : vilar
--%>

<%@ include file="referencias.jsp" %>
<!DOCTYPE html>

<html> 
    <head>
        <%@ include file="./css/style.jsp" %>
        <title>Consulta</title>
    </head> 
    <body>

        <div class="container mt-4 col-lg-4">
            <div class="row">
                <div class="col align-self-center">
                    <div class="card login">
                        <div class="card-body">

                            <%
                                if (session.getAttribute("userid") == null) {
                                    response.sendRedirect("login_first.jsp");
                                }


                            %>

                            <%    Conexao.connect();
                                MongoDatabase db = Conexao.getDatabase();

                                MongoCollection<Document> collection = db.getCollection("Contacts");

                                MongoCursor<Document> cursor = collection.find().iterator();

                                out.println("<table border='1' class='table table-striped table-hover'>");
                                out.println("<tr>");
                                out.println("<td>Id</td><td>Nome</td><td>País</td><td>Código</td></tr>");
                                try {
                                    while (cursor.hasNext()) {
                    Document documento = cursor.next();%>

                            <tr>
                                <td><%= documento.getObjectId("_id")%></td>
                                <td><%= documento.getString("Name")%></td>
                                <td><%= documento.getString("Location")%></td>
                                <td><%= documento.getString("Code")%></td>
                            </tr>
                            <%
                                    }
                                } finally {
                                    cursor.close();
                                }

                                Conexao.close();
                            %>
                            </table>
                            <a href="javascript:history.go(-1)"  class="btn btn-dark"><i class="bi bi-arrow-left-square-fill"></i> Go Back</a>
                        </div><!-- comment -->
                    </div>
                </div><!-- comment -->
            </div>
        </div>
    </body>
</html>