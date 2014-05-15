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
        <th>Date</th>
        <th>Location</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="Encounter" items="${allEncounters}" varStatus="status">
        <tr>
            <td>${Encounter.encounterType.name}}</td>
            <td>${Encounter.encounterDatetime}</td>
            <td>${Encounter.location}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include file="/WEB-INF/template/footer.jsp"%>