<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Add car photo">

    <h1>Add Car Photo</h1>

    <form method="POST"
          enctype="multipart/form-data"
          action="${pageContext.request.contextPath}/AddCarPhoto">

        <div class="row mb-3">
            <div class="col-md-6">
                License plate: ${car.licensePlate}
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <label for="file">Photo</label>
                <input type="file" name="file" id="file" required class="form-control">
            </div>
        </div>

        <input type="hidden" name="car_id" value="${car.id}" />

        <button type="submit" class="btn btn-primary">Save</button>

    </form>

</t:pageTemplate>
