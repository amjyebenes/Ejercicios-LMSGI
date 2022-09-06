<marvel> {
for $superheroe in doc('Superheroes.xml')/marvel/superheroe
where contains($superheroe/@poderes,'fuerza')
and contains(lower-case($superheroe/@amigos), lower-case('Iron Man'))
return <superheroe>{ data($superheroe/@nombre) }</superheroe>
} </marvel>