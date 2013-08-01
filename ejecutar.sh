#!/bin/bash

function logtime() {
  echo `date "+%H:%M:%S"` '~' $1
}

TEMP=`mktemp /tmp/ejecutar.XXX` || { echo "Error al crear el archivo temporal"; exit 1; }
clear

echo    "## MOOSHAK UNIT TEST";echo    "## `date`";echo

echo    "######################"
echo    "## COMPILANDO (1/2) ##"
echo    "######################"
echo

logtime Compilando...
make
[ $? -eq 0 ] && logtime "Compilado correctamente". || exit 1
#TODO: Añadir el caso de que no se compile bien

echo
echo    "#####################"
echo    "##    TEST (2/2)   ##"
echo    "#####################"
echo

logtime "Iniciando test..."
diff salida.txt solucion.txt > $TEMP
if [ `cat $TEMP | wc -l` -eq "0" ] ;then logtime "ACEPTADO."
else cat $TEMP; fi

rm $TEMP
