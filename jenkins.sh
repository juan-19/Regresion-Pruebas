#!/bin/bash

var=1
line=1

if [ $line -eq $var ]; then
    	sudo git add .
        sudo git commit -m "agregando cambios"
	sudo git push https://github.com/juan-19:narusake100/Regresion-Pruebas.git
        echo "git repo updated"
else
        echo "Fallo las pruebas"
fi;
