# Mooshak Unit Test v0.1
Pequeño script para automatizar la tarea de compilar y realizar casos de prueba sobre Mooshak.

Para que funcione correctamente deben darse las siguientes condiciones:

* Tener un archivo de tipo Makefile que genere un archivo objeto con el nombre a.out.
* Ficheros de texto plano que servirán para realizar los test: solucion.txt entrada.txt y salida.txt

### Ejemplo

    ## MOOSHAK UNIT TEST
    ## miércoles, 31 de julio de 2013, 13:37:38 CEST
    
    ######################
    ## COMPILANDO (1/2) ##
    ######################
    
    13:37:38 ~ Compilando...
    make: `a.out' is up to date.
    13:37:38 ~ Compilado correctamente.
    
    #####################
    ##    TEST (2/2)   ##
    #####################
    
    13:37:38 ~ Iniciando test...
    13:37:38 ~ ACEPTADO.
    
### Instalación
Copiar el shellscript en la carpeta de nuestro workspace y darle permisos de ejecución:  

`chmod +x ejecutar.sh`

Invocar desde el terminal:

`./ejecutar.sh`
