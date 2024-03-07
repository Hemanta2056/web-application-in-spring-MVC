<html>
<head>
<%@ include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<div class="container mt-3 bg-dark text-white">
	
	
	
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-3 text-uppercase ">Welcome to product app</h1>


				<table class="table text-white">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#36;${p.price }</td>
								<td>
								<a href="delete/${p.id }"><i class="fas fa-trash text-danger" aria-hidden="true"></i></a>
								<a href="update/${p.id }"><i class="fas fa-pen-nib text-success mx-2" aria-hidden="true"></i></a>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<div class="container text-center mt-5 mb-5">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
