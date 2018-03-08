<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>
    <!--Bootstrap-->
    <style>
        <%@include file="css/bootstrap.min.css"%>
        <%@include file="css/tables.css"%>
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h1 class="named">Book Details</h1>
        </div>
        <div class="col-md-4"></div>
    </div>
    <br>

    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <table class="tg table table-striped table-bordered table-hover">
                <thead class="bg-primary">
                <tr>
                    <th class="col1">ID</th>
                    <th class="col3">Title</th>
                    <th class="col2">Author</th>
                    <th class="col2">Price</th>
                </tr>
                </thead>
                <tr>
                    <td>${book.id}</td>
                    <td>${book.bookTitle}</td>
                    <td>${book.bookAuthor}</td>
                    <td>${book.price/100}${book.price%100}</td>
                </tr>
            </table>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>