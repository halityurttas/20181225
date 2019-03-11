<cfquery name="query_insert" datasource="cfdemo">
INSERT INTO [sepet]
           ([urunid]
           ,[miktar]
           ,[toplamfiyat])
     VALUES
           (<cfqueryparam cfsqltype="cf_sql_integer" value="#form.anakart_adi#">
           ,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.anakart_miktar#">
           ,<cfqueryparam cfsqltype="cf_sql_decimal" scale="4" value="#form.anakart_toplamfiyat#"> )
</cfquery>

<cfquery name="query_insert" datasource="cfdemo">
    INSERT INTO [sepet]
               ([urunid]
               ,[miktar]
               ,[toplamfiyat])
         VALUES
               (<cfqueryparam cfsqltype="cf_sql_integer" value="#form.islemci_adi#">
               ,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.islemci_miktar#">
               ,<cfqueryparam cfsqltype="cf_sql_decimal" scale="4" value="#form.islemci_toplamfiyat#"> )
    </cfquery>

<cfquery name="query_insert" datasource="cfdemo">
INSERT INTO [sepet]
            ([urunid]
            ,[miktar]
            ,[toplamfiyat])
        VALUES
            (<cfqueryparam cfsqltype="cf_sql_integer" value="#form.ram_adi#">
            ,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.ram_miktar#">
            ,<cfqueryparam cfsqltype="cf_sql_decimal" scale="4" value="#form.ram_toplamfiyat#"> )
</cfquery>

<cfquery name="query_insert" datasource="cfdemo">
INSERT INTO [sepet]
            ([urunid]
            ,[miktar]
            ,[toplamfiyat])
        VALUES
            (<cfqueryparam cfsqltype="cf_sql_integer" value="#form.harddisk_adi#">
            ,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.harddisk_miktar#">
            ,<cfqueryparam cfsqltype="cf_sql_decimal" scale="4" value="#form.harddisk_toplamfiyat#"> )
</cfquery>

<cfquery name="query_insert" datasource="cfdemo">
INSERT INTO [sepet]
            ([urunid]
            ,[miktar]
            ,[toplamfiyat])
        VALUES
            (<cfqueryparam cfsqltype="cf_sql_integer" value="#form.klavye_adi#">
            ,<cfqueryparam cfsqltype="cf_sql_integer" value="#form.klavye_miktar#">
            ,<cfqueryparam cfsqltype="cf_sql_decimal" scale="4" value="#form.klavye_toplamfiyat#"> )
</cfquery>
<script>
document.location.href = "siparis.cfm";
</script>