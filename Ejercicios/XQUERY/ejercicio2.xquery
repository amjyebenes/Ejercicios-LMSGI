<marvel> {
for $superheroe in doc('Superheroes.xml')/marvel/superheroe
where contains($superheroe/@poderes,'fuerza')
return <superheroe>{ data($superheroe/@nombre) }</superheroe>
} </marvel>