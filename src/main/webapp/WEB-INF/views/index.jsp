<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Parcels Delivery</title>
</head>
<body>

<%@ include file='header.jsp' %>

<h3> Send your parcel</h3>

<c:url var="sendAction" value="/parcels/send"/>

<form:form method="post" action="${sendAction}" modelAttribute="parcel">
    <table>
        <tr>
            <td>
                <form:input path="id" type="hidden"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="sender">
                    Sender
                </form:label>
            </td>
            <td>
                <form:input path="sender" placeholder="Input parcel's sender"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="message">
                    Parcel's message
                </form:label>
            </td>
            <td>
                <form:input path="message" placeholder="Input parcel's message"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="path">
                    Path
                </form:label>
            </td>
            <td>
                <form:input path="path" placeholder="Input parcelss path"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:input path="status" type="hidden" value="Transit"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form:form>

<img alt="map" src="<c:url value="/resources/map.png"/>" align="middle"/>

</body>
</html>