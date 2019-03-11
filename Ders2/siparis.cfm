<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <cfquery name="query_sepet" datasource="cfdemo">
        SELECT sepet.*, urunler.urun, urunler.satisfiyati, urunler.kategori FROM sepet INNER JOIN urunler ON sepet.urunid = urunler.id
    </cfquery>
    <table style="width:100%" border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td>Kategori</td>
            <td>Urun</td>
            <td>Fiyat</td>
            <td>Miktar</td>
            <td>Toplam Fiyat</td>
        </tr>
        <cfoutput query="query_sepet">
        <tr>
            <td>#kategori#</td>
            <td>#urun#</td>
            <td>#satisfiyati#</td>
            <td>#miktar#</td>
            <td>#toplamfiyat#</td>
        </tr>
        </cfoutput>
        <tr>
            <td colspan="4">&nbsp;</td>
            <td>
                <cfquery name="query_sepet_toplam" dbtype="query">
                SELECT SUM(toplamfiyat) AS toplam FROM query_sepet
                </cfquery>
                <cfoutput>#query_sepet_toplam.toplam#</cfoutput>
            </td>
        </tr>
    </table>
</body>
</html>