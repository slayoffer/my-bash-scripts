#!/bin/bash

BOT=bot1
PATH=$PATH:.
LD_LIBRARY_PATH=./lib/

ls /run/bot/bot.pid &> /dev/null

if [ $? -eq 0 ]
  then
    tmux attach -t bot
  else
    tmux new -s bot
    bot -$BOT
fi
