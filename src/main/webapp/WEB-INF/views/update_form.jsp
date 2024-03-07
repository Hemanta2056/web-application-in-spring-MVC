<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <%@include file="./base.jsp"%>
    
</head>
<body>

<!-- form layout with html -->
<div class="container mt-3 bg-dark text-white" >


    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3 text-uppercase">
                Change Product Details
            </h1>
            

            <form action="${pageContext.request.contextPath}/handle-product" method="post">

                <input type="hidden" value="${product.id}" name="id"/>
                
                <div class="form-group">
                    <label for="name" >Product Name</label>
                    <input
                            type="text"
                            class="form-control"
                            id="name"
                            aria-describedby="emailHelp"
                            name="name"
                            placeholder="Enter the product name here"
                            value="${product.name }"
                            
                    >
                </div>

                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea
                            class="form-control"
                            name="description"
                            id="description"
                            rows="5"
                            placeholder = "Enter the product description">${product.description}
                    </textarea>
                </div>

                <div class="form-group">
                    <label for="price">Product Price</label>
                    <input type="text" name="price" class="form-control" id="price" value="${product.price }">
                </div>

                <div class="container text-center">
                    <a href="${pageContext.request.contextPath }/"
                       class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>

            </form>

        </div>

    </div>
</div>

</body>
</html>