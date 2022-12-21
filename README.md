# Math-Minecraft-Squid-Workshop-Project
Common math functions in Minecraft

# Abstract
This datapack provide fast and high precision math operations using Scoreboard.

# Installation
- Step 01 Download this repository as a zip and unpack.
- Step 02 Go to minecraft directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft".
- Step 03 Choose the world folder in which you want to install the pack. Go to .../saves/world/datapacks folder.
- Step 04 Open Minecraft and open the world.
- Step 05 Type "/reload" command then press enter.
- Step 06 Enjoy

# How to use
## Overview
Constants are stored under objective **swMath_C**\
Variables, including inputs and outputs, are stored under objectove **swMath_V**\
The standard input and output have *units* of **10000**. i.e., the score **10000** is used to represent **1**, utilizing 4 digits for high precision computation.

## List of functions
The main function directory is math:functions/classes/core/. all functions provided are listed below

### Functions that require 0 input include:
| Function | Description |
| ----- | ----- |
| random/rng | generate a psuedo random integer|
| util/swap | a shortcut to assign value of output **#vOut** to input **#vIn**|

### Functions that require 1 scalar input **#vIn** include:
| Function | Description |
| ----- | ----- |
| operations/square | compute square (i, ii) |
| sqrt/sqrt | compute square root (ii) |
| trig/arccos_rad | compute inverse cosine |
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
| trig/arctan2_rad | compute inverse tangent with correct quadrant |

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

### The output values are one set of the following
| Scalar | Vector |
| ----- | ----- |
| **#vOut** | **#vOi, #vOj, #vOk** |

Example command to set the input:

    /scoreboard players set #vIn swMath_V 10000
Example command to get the output:

    /tellraw @s [{"text":"Output: "},{"score":{"name": "#vOut","objective": "swMath_V"}}]

### Note:
(i) Since the result may overflow the scoreboard, the magnitude is stored separately as **#vOut_Mag** and the **#vOut** may be scaled down to fit in the scoreboard.
- result = #vOut * #vOut_Mag

(ii) In these operations the input is considered _without_ units.