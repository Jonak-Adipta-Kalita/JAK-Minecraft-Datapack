scoreboard players add number list 1
tag @r add playing
tellraw @s [{"text": "", "color": "FFFF55"}, {"score": {"name": "number", "objective": "list"}},") ", {"selector": "@a[tag=playing]"}]
tag @a[tag=playing] add played
tag @a remove playing
execute if entity @a[tag=!played] as @s run function jak:players/loop
execute unless entity @a[tag=!played] run tag @a remove played
