#!/bin/sh

function playe(){
(play -q milion_little_miracle.mp3)&
word="lennox"$1
echo $word

}

playe 1


