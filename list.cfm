<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <table border="1" style="width: 100%">
        <thead>
            <tr>
                <th>Marka</th>
                <th>Model</th>
                <th>Yaş</th>
            </tr>
        </thead>
        <cfquery name="qlist" datasource="data1">
            SELECT * FROM arabalar
        </cfquery>
        <tbody>
            <cfoutput query="qlist">
            <tr>
                <td>#marka#</td>
                <td>#model#</td>
                <td>#yas#</td>
            </tr>
            </cfoutput>
        </tbody>
        <cfquery name="qtoplam" datasource="data1">
            SELECT SUM(yas) AS yastoplam FROM arabalar
        </cfquery>
        <tfoot>
            <tr>
                <td></td>
                <td></td>
                <td><cfoutput>#qtoplam.yastoplam#</cfoutput></td>
            </tr>
        </tfoot>
    </table>
</body>
</html>