#!/bin/bash

nombre=$1
tarea=$2

echo "$nombre hoy tienes que $tarea"

#Nombre del script
echo "Nombre del script: $0"

#Numero de argumentos
echo "Numero de parámetros: $#"

# Lista de parámetros 
echo "Parámetros enviados al script: $*" 

# PID del script 
echo "PID del script actual es: $$" 

# Proceso en segundo plano 
echo "Abriendo Firefox.."
firefox & 

# El PID del proceso en segundo plano 
echo "El PID de Firefox: $!" 

