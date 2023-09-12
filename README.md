# Pangea 2023

Running Pangea in 2023 

## What is?

## Contents

To run this repo, you need it plus the following files that cannot be distribuited:

- tightvnc
- pangea.disk
- win95.img

Other prerequisites

- qemu-386
- java
- telnet



### Pangea

This is Wordgroup 2 server running on DOS, over a network. It is already correctly licensed for 5 channels (!).

You need to run this script as `sudo ./pangy.sh`, as it has to bind to port 23.

This is a 128mb PC witha ne2000-pci.

We forward ports 23 (for remote access) and 80 (but it does not seem to work with our version of Worldgroup).

When it starts, you have to type:

	wg

And then select "Go!"

From the host, you can acces Pangea via:

	telnet 127.0.0.1 23

### Win95

The VM for Windows 95, that can be run from the command `./win95.sh`, is accessible over VNC at port 5901.

Worldgroup client is already installed, as well as telnet.

This is a 64-Mb Pentium with a ne2000 card. TCP-IP is working, though with the severely limited qemu nwtwork. DNS works.

You can also connect to Pangea over telnet by opening CMD and calling:

	telnet 10.0.2.2 


By duplicating this script, and the disk, we can show how it multi-user works.


### Remote forwardings

You can use

	ssh -L 10023:localhost:23 -L 5902:localhost:5902 -L 5901:localhost:5901 -L 5900:localhost:5900 marcopilter

To forward:

- Port 23 (for telnet access to Pangea)
- Port 5900 (VNC for Pangea - Worldgroup server)
- Port 5901 (VNC for Win95)

I have seen that ThightVNC works well (or at least works...) and you can run it by issuing:

	java -jar tightvnc-jviewer.jar

## In practice

- Go to the main folder
- Open "screen"
- In one screen run "sudo ./pangy.sh"
- In another one run "sudo ./win95.sh"
- Then start two copies of tightvnc


