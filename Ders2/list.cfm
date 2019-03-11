<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<cfquery name="query_urunler" datasource="cfdemo">
    SELECT * FROM urunler
</cfquery>
<body>
    <form method="POST" action="save.cfm">
        <table style="width:100%" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <td>Anakart</td>
                <td>
                    <cfquery name="query_anakart" dbtype="query">
                        SELECT * FROM query_urunler WHERE kategori = 'anakart'
                    </cfquery>
                    <select name="anakart_adi" 
                    onchange="$('#anakart_fiyat').val($(this).find('[value='+$(this).val()+']').data('fiyat'))">
                        <option value="">Seciniz</option>
                        <cfoutput query="query_anakart">
                        <option value="#id#" data-fiyat="#satisfiyati#">#urun#</option>
                        </cfoutput>
                    </select>
                </td>
                <td>
                    <input type="text" name="anakart_fiyat" id="anakart_fiyat">
                </td>
                <td>
                    <input type="text" name="anakart_miktar" id="anakart_miktar" 
                    onchange="$('#anakart_toplamfiyat').val( parseFloat($('#anakart_fiyat').val()) * parseFloat($(this).val()) )">
                </td>
                <td>
                    <input type="text" name="anakart_toplamfiyat" id="anakart_toplamfiyat" role="toplamfiyat">
                </td>
            </tr>
            <tr>
                <td>İşlemci</td>
                <td>
                    <cfquery name="query_islemci" dbtype="query">
                        SELECT * FROM query_urunler WHERE kategori = 'islemci'
                    </cfquery>
                    <select name="islemci_adi" 
                    onchange="$('#islemci_fiyat').val($(this).find('[value='+$(this).val()+']').data('fiyat'))">
                        <option value="">Seciniz</option>
                        <cfoutput query="query_islemci">
                        <option value="#id#" data-fiyat="#satisfiyati#">#urun#</option>
                        </cfoutput>
                    </select>
                </td>
                <td>
                    <input type="text" name="islemci_fiyat" id="islemci_fiyat">
                </td>
                <td>
                    <input type="text" name="islemci_miktar" id="islemci_miktar" 
                    onchange="$('#islemci_toplamfiyat').val( parseFloat($('#islemci_fiyat').val()) * parseFloat($(this).val()) )">
                </td>
                <td>
                    <input type="text" name="islemci_toplamfiyat" id="islemci_toplamfiyat" role="toplamfiyat">
                </td>
            </tr>
            <tr>
                <td>Ram</td>
                <td>
                    <cfquery name="query_ram" dbtype="query">
                        SELECT * FROM query_urunler WHERE kategori = 'ram'
                    </cfquery>
                    <select name="ram_adi" 
                    onchange="$('#ram_fiyat').val($(this).find('[value='+$(this).val()+']').data('fiyat'))">
                        <option value="">Seciniz</option>
                        <cfoutput query="query_ram">
                        <option value="#id#" data-fiyat="#satisfiyati#">#urun#</option>
                        </cfoutput>
                    </select>
                </td>
                <td>
                    <input type="text" name="ram_fiyat" id="ram_fiyat">
                </td>
                <td>
                    <input type="text" name="ram_miktar" id="ram_miktar" 
                    onchange="$('#ram_toplamfiyat').val( parseFloat($('#ram_fiyat').val()) * parseFloat($(this).val()) )">
                </td>
                <td>
                    <input type="text" name="ram_toplamfiyat" id="ram_toplamfiyat" role="toplamfiyat">
                </td>
            </tr>
            <tr>
                <td>Harddisk</td>
                <td>
                    <cfquery name="query_harddisk" dbtype="query">
                        SELECT * FROM query_urunler WHERE kategori = 'harddisk'
                    </cfquery>
                    <select name="harddisk_adi" 
                    onchange="$('#harddisk_fiyat').val($(this).find('[value='+$(this).val()+']').data('fiyat'))">
                        <option value="">Seciniz</option>
                        <cfoutput query="query_harddisk">
                        <option value="#id#" data-fiyat="#satisfiyati#">#urun#</option>
                        </cfoutput>
                    </select>
                </td>
                <td>
                    <input type="text" name="harddisk_fiyat" id="harddisk_fiyat">
                </td>
                <td>
                    <input type="text" name="harddisk_miktar" id="harddisk_miktar" 
                    onchange="$('#harddisk_toplamfiyat').val( parseFloat($('#harddisk_fiyat').val()) * parseFloat($(this).val()) )">
                </td>
                <td>
                    <input type="text" name="harddisk_toplamfiyat" id="harddisk_toplamfiyat" role="toplamfiyat">
                </td>
            </tr>
            <tr>
                <td>Klavye</td>
                <td>
                    <cfquery name="query_klavye" dbtype="query">
                        SELECT * FROM query_urunler WHERE kategori = 'klavye'
                    </cfquery>
                    <select name="klavye_adi" 
                    onchange="$('#klavye_fiyat').val($(this).find('[value='+$(this).val()+']').data('fiyat'))">
                        <option value="">Seciniz</option>
                        <cfoutput query="query_klavye">
                        <option value="#id#" data-fiyat="#satisfiyati#">#urun#</option>
                        </cfoutput>
                    </select>
                </td>
                <td>
                    <input type="text" name="klavye_fiyat" id="klavye_fiyat">
                </td>
                <td>
                    <input type="text" name="klavye_miktar" id="klavye_miktar" 
                    onchange="$('#klavye_toplamfiyat').val( parseFloat($('#klavye_fiyat').val()) * parseFloat($(this).val()) )">
                </td>
                <td>
                    <input type="text" name="klavye_toplamfiyat" id="klavye_toplamfiyat" role="toplamfiyat">
                </td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: right;">
                    <input name="toplamfiyat" id="toplamfiyat">
                    <button type="button" onclick="hesapla()">Hesapla</button>
                    <button type="submit">Kaydet</button>
                </td>
            </tr>
        </table>
    </form>
    <script>
    function hesapla() {
        var toplamfiyat = 0;
        $('[role="toplamfiyat"]').get().forEach( function( element ) {
            if ( ! isNaN( $(element).val() ) && $(element).val() != "" )
                toplamfiyat += parseFloat( $(element).val() );
        });
        $("#toplamfiyat").val(toplamfiyat);
    }
    </script>
</body>
</html>