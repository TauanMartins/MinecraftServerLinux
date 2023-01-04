#!/bin/bash

nice java -Xmx600M -Xms512M -XX:+UseG1GC -jar /home/ubuntu/McServerV1.10/mcserver/minecraft_server.jar nogui
