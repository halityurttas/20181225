<!---
id, marka, model, yas
table: arabalar    
--->
<cfquery name="qinsert" datasource="data1">
    INSERT INTO arabalar(marka, model, yas)
    VALUES(
        <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#form.marka#'>,
        <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#form.model#'>,
        <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#form.yas#'>
    )
</cfquery>
<script>
location.href= "list.cfm";
</script>