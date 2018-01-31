#!/bin/bash

echo "THIS IS INFO ABOUT DEVICE NAMED tty1 IN /dev DIRECTORY"
echo "IT MAY REQUIRE YOUR PASSWORD <AnyKey>"
read
sudo udevadm info --query=all --name=/dev/tty1 | more
echo "WRITING A STREAM OF RANDOM CHARACTERS TO A FILE Randomness <AnyKey>"
read
dd if=/dev/random of=Randomness bs=1k count=1
echo " "
echo "THIS IS THE CONTENTS <AnyKey>"
read
cat Randomness
echo " "
rm Randomness
echo " "
echo "THAT'S IT. THANK YOU FOR PLAYING. BYE."

