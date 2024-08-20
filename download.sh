#!/bin/bash

#REQUIRED INSTALLS run lines 4-7 individually in the regular command line
#Lines 11-21 are the downloading lines
#Requires installing pipx before running with command 
#sudo apt-get install pipx
#sudo apt-get install ffmpeg
#pipx install yt-dlp


pipx upgrade yt-dlp
#echo what is the url for the playlist :
#read playlistURL
cd /mnt/d/Music/
if [ ! -d /mnt/d/Music/"$(date +%b) $(date +%Y)" ]; then

mkdir "$(date +%b) $(date +%Y)" 
fi 
cd "$(date +%b) $(date +%Y)"
#Replace below youtube url with your playlist url you can get from trying to share your playlist. It must be public.
yt-dlp --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" https://www.youtube.com/playlist?
