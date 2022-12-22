# input is #vIn and #power

scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
scoreboard players remove #power swMath_V 1
execute if score #power swMath_V matches 1.. run function math:classes/supp/division/div10
execute unless score #power swMath_V matches 1.. run scoreboard players operation #vOut swMath_V = #vIn swMath_V