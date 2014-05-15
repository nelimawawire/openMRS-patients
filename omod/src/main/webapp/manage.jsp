<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<openmrs:htmlInclude file="/assets/jquery/jquery-1.11.1.js" />
<script type="text/javascript">
    var $j = jQuery.noConflict();
</script>

<p>Hello ${user.systemId}!</p>
<%--
<openmrs:htmlInclude file="/moduleResources/patients/css/dataTables.css" />--%>
<openmrs:htmlInclude file="/moduleResources/patients/js/jquery.dataTables.js" />

<script type="text/javascript">
    $j(document).ready(function() {
        $j('#myTable').dataTable({  "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        });
    } );
</script>

<table id="myTable">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="patient" items="${patients}" varStatus="status">
        <tr>
            <td><a href="encounter.form?patientId=${patient.patientId}">${patient.givenName}</a></td>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>