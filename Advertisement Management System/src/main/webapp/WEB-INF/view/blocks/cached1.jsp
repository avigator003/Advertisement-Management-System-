     
     <%
     String  pa=application.getContextPath();
     
     
     %>
     
     
     
      <%
    
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("customer")==null)
    response.sendRedirect("/akshat/customerpage");

%>