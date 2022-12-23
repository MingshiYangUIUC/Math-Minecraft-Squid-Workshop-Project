# iteratively scale input and change output magnitude

scoreboard players operation #vIn swMath_V /= #C_10 swMath_C
scoreboard players operation #vOut_Mag swMath_V *= #C_100 swMath_C

execute if score #vIn swMath_V matches 46341.. run function math:classes/supp/square/div10