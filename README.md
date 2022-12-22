# Math-Minecraft-Squid-Workshop-Project
Minecraft math helper.

# Abstract
This datapack provide fast, high precision math operation functions using Scoreboard.

# Installation
- Step 01 Download this repository as a zip and unpack.
- Step 02 Go to minecraft directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft".
- Step 03 Choose the world folder in which you want to install the pack. Go to .../saves/world/datapacks folder.
- Step 04 Open Minecraft and open the world.
- Step 05 Type "/reload" command then press enter.
- Step 06 Enjoy

# How to use
## Overview
- Constants are stored under objective **swMath_C**.
- Variables, including inputs and outputs, are stored under objectove **swMath_V**.
- The standard input and output have *units* of **10000**. i.e., the score **10000** is used to represent **1**, utilizing 4 digits for high precision computation. Actual error in computation is usually on magnitude of 0.01%.
- No entity involved in calculations, avoiding entity selection ensures high throughout performance.

## List of functions
The main function directory is math:functions/classes/core/. All functions provided are listed below.\
To execute a function, consult the table and run the command

    /function math:classes/core/Function
### Functions that require 0 input include:
| Function | Description |
| ----- | ----- |
| random/rng | generate a psuedo random integer |
| util/swap | a shortcut to assign value of output **#vOut** to input **#vIn** |

### Functions that require 1 scalar input **#vIn** include:
| Function | Description |
| ----- | ----- |
| operations/square | compute square (i, ii) |
| operations/sqrt | compute square root (ii) |
| trig/arccos_rad | compute inverse cosine (iii)|
| trig/arcsin_rad | compute inverse sine |
| trig/arctan_rad | compute inverse tangent |
| trig/cos_rad | compute cosine |
| trig/sin_rad | compute sine |
| trig/tan_rad | compute tangent |
| util/deg2rad | convert from degrees to radians |
| util/rad2deg | convert from radians to degrees |

### Functions that require 2 scalar inputs **#vIn, #vIn2** include:'
| Function | Description |
| ----- | ----- |
| operations/division_4d | compute #vIn2 / #vIn with high precision |
| trig/arctan2_rad | compute inverse tangent of  #vIn2 / #vIn choosing the quadrant correctly |

### Functions that require 1 3D vector inputs **#vAi, #vAj, #vAk** include:
| Function | Description |
| ----- | ----- |
| vector/magnitude | compute magnitude of vector |
| vector/unit | compute unit vector |

### Functions that require 2 3D vector inputs **#vAi, #vAj, #vAk; #vBi, #vBj, #vBk** include
| Function | Description |
| ----- | ----- |
| vector/cross | compute cross product |
| vector/dot | compute dot product |

### The output values are one set from the following
| Scalar | Vector |
| ----- | ----- |
| **#vOut** | **#vOi, #vOj, #vOk** |

## Example
Compute cosine of 0.5 radians:
- Set input

    /scoreboard players set #vIn swMath_V 5000
- Run function

    /function math:classes/core/trig/cos_rad
- Get output

    /scoreboard players get #vOut swMath_V

Which outputs 8776 matching the exact value 0.8775825619.

### Note
(i) Since the result may overflow the scoreboard, the magnitude is stored separately as **#vOut_Mag** and the **#vOut** may be scaled down to fit in the scoreboard.
- result = #vOut * #vOut_Mag

(ii) In square and square root operations, the input is considered _without_ units.

(iii) All trignometry operations use radians as unit of measurement.


# Projects powered by Math Datapack
[Pool Datapack](https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project)  \
[Soccer Datapack](https://github.com/MingshiYangUIUC/Soccer-Minecraft-Squid-Workshop-Project)

# Terms of Use

**NO COMMERCIAL USE.** 

## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# More About Squid Workshop
More datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on youtube [here](https://www.youtube.com/channel/UCwPMgfjjh2d7fFqQ1PXHP7w) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on wechat: 鱿鱼MC工作室 