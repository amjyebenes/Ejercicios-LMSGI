<marvel> {
for $superheroe in doc('Superheroes.xml')/marvel/superheroe
where ends-with($superheroe/@nombre, 'a')
return <superheroe>{ data($superheroe/@nombre) }</superheroe>
} </marvel>

