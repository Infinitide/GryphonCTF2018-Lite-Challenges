#!/bin/sh
docker build -t disallowed .
docker run --restart always --memory 128M -d -p 18132:80 --name web-disallowed disallowed
docker start web-disallowed