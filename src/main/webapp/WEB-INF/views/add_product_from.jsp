
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="./base.jsp"%>
</head>
<body>

    <!-- form layout with html -->
    <div class="container mt-3 bg-dark text-white">
        <div class="row">
             <div class="col-md-6 offset-md-3">
                 <h1 class="text-center mb-3">
                     FILL THE PRODUCT DETAILS
                 </h1>

                 <form action="handle-product" method="post">
                     <div class="form-group">
                         <label for="name" >Product Name</label>
                         <input
                                 type="text"
                                 class="form-control"
                                 id="name"
                                 aria-describedby="emailHelp"
                                 name="name"
                                 placeholder="Enter the product name here"
                            >
                     </div>

                     <div class="form-group">
                         <label for="description">Product Description</label>
                         <textarea class="form-control" name="description" id="description"
                                   rows="5" placeholder="Enter the product description"></textarea>
                     </div>

                     <div class="form-group">
                         <label for="price">Product Price</label>
                         <input type="text" name="price" class="form-control" id="price">
                     </div>

                     <div class="container text-center">
                         <a href="${pageContext.request.contextPath}"
                            class="btn btn-outline-danger">Back</a>
                         <button type="submit" class="btn btn-primary">Add</button>
                     </div>

                 </form>

             </div>

        </div>
    </div>

</body>
</html>