<%-- 
    Document   : datainsert
    Created on : 13 de mai. de 2023, 15:29:49
    Author     : vilar
--%>

<%@ include file="referencias.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./css/style.jsp" %>
        <title>Insert title here</title>
    </head>
    <body bgcolor=#81BEF7>
        <form>
            <br>
            <%
                Conexao.connect();
                MongoDatabase db = Conexao.getDatabase();

                MongoCollection<Document> collection = db.getCollection("Contacts");
                Document document = new Document("Name", request.getParameter("Name"))
                        .append("Location", request.getParameter("Location"))
                        .append("Code", request.getParameter("Code"));
                collection.insertOne(document);

                Conexao.close();

                out.println(request.getParameter("Name"));
                out.println(request.getParameter("Location"));
                out.println(request.getParameter("Code"));
            %>  
            <br>
            <a href="javascript:history.go(-1)">Confirm</a>
        </form>
    </body>
</html>
