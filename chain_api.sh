#!/bin/bash

clear
if [ $# -ne 1 ]
then

	echo "Usage: ./chain_api.sh <YOUR_API_KEY>"
	exit
else

	echo "  .oooooo.   oooo                   o8o                                         o8o"
	echo " d8P    Y8b   888                                                               "
	echo "888           888 .oo.    .oooo.   oooo  ooo. .oo.         .oooo.   oo.ooooo.  oooo"
	echo "888           888P Y88b   P  )88b   888   888P Y88b        P  )88b   888   88b  888"
	echo "888           888   888   .oP 888   888   888   888        .oP 888   888   888  888"
	echo " 88b    ooo   888   888  d8(  888   888   888   888       d8(  888   888   888  888"
	echo "  Y8bood8P   o888o o888o  Y888  8o o888o o888o o888o       Y888 8o   888bod8P  o888o"
	echo "                                                                     888"
	echo "                                                                    o888o"
	echo " By Deckcard23 "
	echo "---------------"
	echo "Chainalisys API_KEY to search sanctions in cryptocurrencies address"
	echo
	API_KEY=$1
	salida=0
	while [ $salida -ne 6 ]
	do
		echo -n "Select the file with cryptocurrencies address to analyze (Press 6 to exit): "
		read option
		if [ -e $option ]
		then
			echo "El fichero existe"
			echo "Your API_KEY is $1"
			while read line
			do
				output=$(curl -X GET 'https://public.chainalysis.com/api/v1/address/'$line'' --header 'X-API-Key: '$API_KEY'' --header 'Accept:application/json' 2>&1 | tee /dev/tty)

			done < $option
			echo "Hemos finalizado"
			exit
		elif [ $option -eq 6 ]
		then
			echo
			echo "Thanks to use CHAIN_API. Follow me in Twitter @rickdeckard23"
			salida=6
		else
			echo "That file dont exits, try another one."
		fi
	done
fi
