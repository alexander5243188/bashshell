#!/bin/bash

verdadero=1
falso=0
echo "Pleace give a random number"
read num1
echo "Pleace give me another one"
read num2

# utilizando expr para numero enteros
suma=$(($num1 + $num2))
resta=$(expr $num1 - $num2)
modulo=$(($num1 % $num2))

# utilizando bc para numeros decimales
sumaDecimal=$(echo "$num1 + $num2" | bc)
restaDecimal=$(echo "$num1 - $num2" |bc)
moduloDecimal=$(echo "$num1 % $num2" | bc)

# Operaciones relacionales
operadorMayor=$(($num1 > $num2))
operadorMenor=$(($num1 < $num2))
operadorIgual=$(($num1 == $num2))
operadorMayorQue=$(($num1 >= $num2))
operadorMenorQue=$(($num1 <= $num2))
operadorDiferente=$(($num1 != $num2))


echo "**** Operacione con enteros ****"
echo "$num1 + $num2 = $suma"
echo "$num1 - $num2 = $resta"
echo "$num1 % $num2 = $modulo"

echo "**** Operaciones con decimales ****"
echo "$num1 + $num2 = $sumaDecimal"
echo "$num1 - $num2 = $restaDecimal"
echo "$num1 % $num2 = $moduloDecimal"

echo -e "\n **** Operadores relacionales ****"
echo "$num1 > $num1 = $operadorMayor"
echo "$num1 < $num2 = $operadorMenor"
echo "$num1 == $num2 = $operadorIgual"
echo "$num1 >= $num2 = $operadorMayorQue"
echo "$num1 <= $num2 = $operadorMenorQue"
echo "$num1 != $num2 = $operadorDiferente"

# -e para caracteres especiales
echo -e "\n **** Operadores relacionales ****"
echo "$verdadero and $verdadero = $(($verdadero && $verdadero))"
echo "$verdadero and $falso = $(($verdadero && $falso))"
echo "$num1 and $num2 = $(($falso && $verdadero))"
echo "$num1 and $num2 = $(($falso && $falso))"
echo ""
echo "$verdadero or $verdadero = $(($verdadero||$verdadero))"
echo "$verdadero or $falso = $(($verdadero||$falso))"
echo "$falso or $verdadero = $(($falso||$verdadero))"
echo "$falso or $falso = $(($falso||$falso))"
echo ""
echo "not $verdadero = $((!$verdadero))"
echo "not $falso = $((!$falso))"

