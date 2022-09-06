<marvel> {
for $superheroe in doc('Superheroes.xml')/marvel/superheroe
where contains($superheroe/@poderes,'fuerza')
and contains($superheroe/@amigos, 'Iron Man')
return <superheroe>{ data($superheroe/@nombre) }</superheroe>
} </marvel>