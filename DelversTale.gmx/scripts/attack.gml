randomize()
en = argument0

loss = en.def - att
if(loss < 1) loss = 1

if(en != player) 
{
if(player.combo = (player.maxCombo))
{
loss *= 2
with(en)
{
knockback = 15
hsp = 16
vsp = irandom(10) - 5
hsp *= player.image_xscale
}
}
}

en.hp -= loss

//with(instance_create(en.x+irandom(48) - 24,en.y + irandom(48) - 24,hurtText)) val = other.loss

if(en = player) en.hurting = 60
else 
{
en.hurting = 10
player.hits++
player.hitTimer = 30
if!(place_meeting (en.x+(2*player.image_xscale),y,wall)) en.x += (2*player.image_xscale)
}
