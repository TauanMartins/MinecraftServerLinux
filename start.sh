#!/bin/bash

nice java -Xmx600M -Xms512M -XX:+UseG1GC -jar ./mcserver/minecraft_server.jar nogui
