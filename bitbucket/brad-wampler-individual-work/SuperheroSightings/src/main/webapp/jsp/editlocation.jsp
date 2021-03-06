<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Location</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Edit a Location</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                    <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/hello/sayhi">Hello Controller</a></li>
                </ul>    
            </div>

            <div class =" row">
                <div class="col-md-12">
                    <h2>Please Update Location Info</h2>
                    <form class="form-horizontal" 
                          role="form" method="POST" 
                          action="editLocation">
                        <div class="form-group">
                            <label for="editLocationName" class="col-md-4 control-label">Location Name:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.locationName}" type="text" class="form-control" name="locationName" placeholder="Location Name"/>
                                <input value="${updateLocation.locationId}" type="hidden" class="form-control" name="locationId"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="addLocationDesc" class="col-md-4 control-label">Description:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.locationDesc}" type="text" class="form-control" name="locationDesc" placeholder="Enter a short description"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label for="addlat" class="col-md-4 control-label">Latitude:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.lat}" type="text" class="form-control" name="lat" placeholder="Latitude"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label for="addlongitude" class="col-md-4 control-label">Longitude:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.longitude}" type="text" class="form-control" name="longitude" placeholder="Longitude"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label for="addstreet" class="col-md-4 control-label">Street:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.street}" type="text" class="form-control" name="street" placeholder="Street"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label for="addcity" class="col-md-4 control-label">City:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.city}" type="text" class="form-control" name="city" placeholder="City"/>
                            </div>
                        </div>
                            <div class="form-group">
                            <label for="addstate" class="col-md-4 control-label">State:</label>
                            <div class="col-md-8">
                                <input value="${updateLocation.state}" type="text" class="form-control" name="state" placeholder="State"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-4 col-md-8">
                                <input type="submit" class="btn btn-default" value="Update Location"/>
                            </div>
                        </div>               
                        <div class="form-group">
                            <div class="col-md-offset-4 col-md-8">
                                <a href="${pageContext.request.contextPath}/alllocations">
                                    <button type="cancel" class="btn btn-default " id="/alllocations">Cancel</button>
                                </a> 
                            </div>
                        </div>

                    </form>

                </div> <!-- End col div -->
            </div>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
