execute @a[tag=!vs] ~~~  gamerule sendcommandfeedback false
tag @a[tag=!vs] add vs

execute @p ~ -66 ~ execute @p[r=1] ~ ~ ~ effect @s blindness 5 1 true

execute @p ~ -66 ~ execute @p[r=1] ~ ~ ~ effect @s slow_falling 150 1 true

execute @p ~ -66 ~ execute @p[r=1] ~ ~ ~ tp @s ~ 300 ~ 

execute @p[tag=vshi] ~ -30 ~ execute @p[r=30] ~ ~ ~ effect @s blindness 5 1 true

execute @e[hasitem={item=shield,location=slot.weapon.offhand}] ~~~ tag @s add atoff

execute @e[hasitem={item=totem,location=slot.weapon.offhand}] ~~~ tag @s remove atoff

execute @e[hasitem={item=totem}] ~~~ tag @s[tag=!atoff] add atom

execute @e[hasitem={item=totem,location=slot.weapon.offhand}] ~~~ tag @s[tag=atom] remove atom

replaceitem entity @a[tag=atom] slot.weapon.offhand 0 totem

clear @a[tag=atom] totem 0 1