<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:pageTemplate pageTitle="Users">

    <h1>Users</h1>

    <!-- ADD USER button (optional) -->
    <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
        <a href="${pageContext.request.contextPath}/AddUser" class="btn btn-primary mb-3">
            Add User
        </a>
    </c:if>

    <!-- INVOICE + DELETE FORM -->
    <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">

        <form method="post" action="${pageContext.request.contextPath}/Users">

            <!-- INVOICE BUTTON -->
            <button type="submit" class="btn btn-secondary mb-3 me-2">
                Invoice
            </button>

            <!-- DELETE BUTTON -->
            <button type="submit" formaction="${pageContext.request.contextPath}/DeleteUsers"
                    class="btn btn-danger mb-3">
                Delete Selected Users
            </button>

            <!-- USERS TABLE -->
            <div class="container text-center">
                <div class="row fw-bold mb-2">
                    <div class="col-1">Select</div>
                    <div class="col">Username</div>
                    <div class="col">Email</div>
                </div>

                <c:forEach var="user" items="${users}">
                    <div class="row mb-2">

                        <!-- CHECKBOX -->
                        <div class="col-1">
                            <input type="checkbox" name="user_ids" value="${user.id}">
                        </div>

                        <!-- USERNAME -->
                        <div class="col">
                                ${user.username}
                        </div>

                        <!-- EMAIL -->
                        <div class="col">
                                ${user.email}
                        </div>
                    </div>
                </c:forEach>
            </div>

        </form>

    </c:if>

    <!-- INVOICE LIST -->
    <c:if test="${not empty invoices}">
        <h2 class="mt-4">Invoices</h2>

        <c:forEach var="username" items="${invoices}" varStatus="status">
            ${status.index + 1}. ${username}<br/>
        </c:forEach>
    </c:if>

</t:pageTemplate>
