<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<div class="container">

    <c:if test="${not empty msg}">
        <div class="alert alert-${css} alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>${msg}</strong>
        </div>
    </c:if>

    <div class="container">
        <div class="text-center">
            <h3><b>HOW find BEER CITY night club</b></h3>

            <br />
            <br />

            <div id="map" style="width:100%;height:500px"></div>
            <div></div>
        </div>
    </div>

</div>

<jsp:include page="../fragments/footer.jsp" />


<script>
    function myMap() {
        var myCenter = new google.maps.LatLng(50.4249317, 30.5322558);
        var mapCanvas = document.getElementById("map");
        var mapOptions = {center: myCenter, zoom: 10};
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({position:myCenter});
        marker.setMap(map);
    }
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyChNVhml-nd5OLEFs5hs5zMxBxpnwbR1vM&callback=myMap"></script>

</body>
</html>
