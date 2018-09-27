#!/bin/bash

var=1
line=1

if [ $line -eq $var ]; then
    	sudo git add .
        sudo git commit -m "agregando cambios"
	sudo git push origin master
        echo "git repo updated"
else
        echo "Fallo las pruebas"
fi;
