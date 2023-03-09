#!/bin/bash

# Read BOT_TOKEN and CHAT_ID from environment variables
BOT_TOKEN=$BOT_TOKEN
CHAT_ID=$CHAT_ID

# Replace "connected" with the message you want to send
MESSAGE="connected"

# Send message to Telegram bot
curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
    -d chat_id="${CHAT_ID}" \
    -d text="${MESSAGE}"
