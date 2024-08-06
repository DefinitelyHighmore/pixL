data modify storage hm:pixl root.temp set string storage hm:pixl root.temp1 0 1
data modify storage hm:pixl root.temp1 set string storage hm:pixl root.temp1 1

function pixl:zprivate/getlength with storage hm:pixl root
execute if data storage hm:pixl root{temp:'"'} run scoreboard players set #temp hm.pixl 4
execute if data storage hm:pixl root{temp:"\\"} run scoreboard players set #temp hm.pixl 6
scoreboard players operation .out hm.pixl += #temp hm.pixl 
scoreboard players remove #loop hm.pixl 1

execute if score #loop hm.pixl matches 1.. run function pixl:zprivate/loop