<html>
<head>
<title>Marvel</title>
</head>
<body>
{
for $superheroe in doc("Superheroes.xml")/marvel/superheroe
let $nombre:=$superheroe/@nombre
let $poderes :=$superheroe/@poderes
let $amigos :=$superheroe/@amigos
let $nivel :=$superheroe/@nivel
where $nombre = $superheroe/@nombre
return <table border="1"><th bgcolor="yellow">Integrante<td bgcolor="white">"{ data($nombre)}"</td>
<td bgcolor="white">"{ data($poderes)}"</td>
<td bgcolor="white">"{ data($amigos)}"</td>
<td bgcolor="white">"{ data($nivel)}"</td>
</th><br></br></table>
}
</body>
</html>
