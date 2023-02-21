echo %~dp0
cd %~dp0

curl -L -o sw_tmp.zip https://github.com/MingshiYangUIUC/Math-Minecraft-Squid-Workshop-Project/archive/refs/heads/main.zip
tar -xf sw_tmp.zip
move ./Math-Minecraft-Squid-Workshop-Project-main/Math-Datapack-Squid-Workshop .

del sw_tmp.zip
rmdir /s /q Math-Minecraft-Squid-Workshop-Project-main
