randomize()
en = argument0

en.hp--
if(player.combo != player.maxCombo) audio_play_sound(hitSound,5,0)

if!(player.combo = player.maxCombo) score += (3*player.scoreMod)
else score += (8*player.scoreMod)

if(en != player) 
{
if(player.combo = player.maxCombo)
{
with(en)
{
knockback = irandom(10) + 15
hsp = 16
vsp = irandom(10) - 5
hsp *= player.image_xscale
audio_play_sound(comboSound,5,0)
}
}
}

//with(instance_create(en.x+irandom(48) - 24,en.y + irandom(48) - 24,hurtText)) val = other.loss

if(en = player) en.hurting = 60
else 
{
en.hurting = 7
player.hits++
player.hitTimer = 120
if!(place_meeting (en.x+(2*player.image_xscale),y,wall)) en.x += (2*player.image_xscale)
}
