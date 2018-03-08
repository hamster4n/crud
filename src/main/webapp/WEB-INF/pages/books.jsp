<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>
    <style>
        <%@include file="css/bootstrap.min.css"%>
        <%@include file="css/tables.css"%>
    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>


<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h1 class="named">Book List</h1>
        </div>
        <div class="col-md-4"></div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <c:if test="${!empty listBooks}">
                <table class="tg table table-striped table-bordered table-hover">
                    <thead class="bg-primary">
                    <tr>
                        <th class="col1">ID</th>
                        <th class="col3">Title</th>
                        <th class="col2">Author</th>
                        <th class="col2">Price</th>
                        <th class="col2">Edit</th>
                        <th class="col2">Delete</th>
                    </tr>
                    </thead>

                    <c:forEach items="${listBooks}" var="book">
                        <tr>
                            <td>${book.id}</td>
                            <td><a href="/bookdata/${book.id}" target="_blank">${book.bookTitle}</a></td>
                            <td>${book.bookAuthor}</td>
                            <td>${book.price/100}${book.price%100}</td>
                            <td><a href="<c:url value='/edit/${book.id}'/>" class="btn btn-warning">Edit</a></td>
                            <td><a href="<c:url value='/remove/${book.id}'/>" class="btn btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <hr>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>



<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 class="named">Add a Book</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <c:url var="addAction" value="/books/add"/>

            <form:form action="${addAction}" commandName="book">
                <form:hidden path="id"/>
                <form:input path="bookTitle" placeholder="Title" class="form-control"/>
                <form:input path="bookAuthor" placeholder="Author" class="form-control"/>
                <form:input path="price" placeholder="Price" class="form-control"/>
                <c:if test="${!empty book.bookTitle}">
                    <input class="btn btn-warning btn-block" type="submit" value="Edit Book"/>
                </c:if>
                <c:if test="${empty book.bookTitle}">
                    <input class="btn btn-success btn-block" type="submit" value="Add Book"/>
                </c:if>
            </form:form>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
