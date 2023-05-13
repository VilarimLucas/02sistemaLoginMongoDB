<%-- 
    Document   : login_authentication
    Created on : 13 de mai. de 2023, 14:36:30
    Author     : vilar
--%>

<%@ include file="referencias.jsp" %>

<%

String user = request.getParameter("username");
String pass = request.getParameter("password"); 

    Conexao.connect();
    MongoDatabase db = Conexao.getDatabase();
  
    MongoCollection<Document> collection = db.getCollection("Users");
    
 Document cursor = collection.find(new Document("user", user)).first();
    if (cursor != null && cursor.getString("password").equals(pass)) {
        // Autenticação bem sucedida. Defina o usuário na sessão e redirecione para a página inicial.
        session.setAttribute("userid", user);
        response.sendRedirect("Choose.jsp");
    } else {
        // Autenticação falhou. Exiba uma mensagem de erro na página de login.
        out.print("Invalid username or password");
    }
Conexao.close();
%>