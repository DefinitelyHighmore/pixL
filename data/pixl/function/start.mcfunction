scoreboard players reset .out hm.pixl
data remove storage hm:pixl root.chars

#Get Length
execute store result score .chars hm.pixl store result score #loop hm.pixl run data get storage hm:pixl root.in
data modify storage hm:pixl root.temp1 set from storage hm:pixl root.in
function pixl:zprivate/loop


#Adjust for Bold
execute if score .bold hm.pixl matches 1 run scoreboard players operation .out hm.pixl += .chars hm.pixl
scoreboard players set .bold hm.pixl 0