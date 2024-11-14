<%-- 
    Document   : changepass
    Created on : 11 thg 11, 2024, 21:02:50
    Author     : duyne
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="shared/header.jsp" />
<jsp:include page="shared/nav.jsp" />
<%@page import="model.Hoa"%>
<%@page import="dao.HoaDAO"%>

<div class="container">
    <form action="changePassword" method="post">
        <h2>change password</h2>
        <div>
            <label>old password</label>
            <input type="password" name="oldpassword" value="" required="" class="form-control">
        </div>
        <div>
            <label>new Password</label>
            <input type="password" name="newpassword" value="" required="" class="form-control">
        </div>
        <div>
            <label>confirm new Password</label>
            <input type="password" name="confirmnewpassword" value="" required="" class="form-control">
        </div>
        <div class="mt-2 mb-2">
            <button type="submit" class="btn btn-primary">save</button>
        </div>
          </form>
        <%
            if (request.getAttribute("error") != null) {
        %>
        <div class="text-danger mb-3">
            <%=request.getAttribute("error") %>
        </div>
        <%
            }
        %>
  
</div>
<jsp:include page="shared/footer.jsp" />