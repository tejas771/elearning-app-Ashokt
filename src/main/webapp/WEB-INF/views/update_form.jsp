<%@ page isELIgnored = "false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Product Details Form</title>
</head>
<body>

<div class="container mt-5">
    <h2>Update Product details</h2>

    <form action="${pageContext.request.contextPath }/handle-product" method="post">
    <input type="hidden" value="${product.id}" name="id"/>
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="name" placeholder="Enter Product Name" value="${product.name}" required>
        </div>

        <div class="form-group">
            <label for="productDescription">Product Description:</label>
            <textarea class="form-control" id="productDescription" rows="3" name="description" placeholder="Enter Product Description" required>${product.description}</textarea>
        </div>

        <div class="form-group">
            <label for="productPrice">Product Price:</label>
            <input type="number" class="form-control" id="productPrice" name="price" placeholder="Enter Product Price" value="${product.price}" required>
        </div>

        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>

        <button type="submit" class="btn btn-primary-primary">update</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>