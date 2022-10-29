# lun 24 oct 2022 12:51:50 CST
# p2f.gp
# Diego Sarceno (dsarceno68@gmail.com)

# Resumen

# Codificado del texto: UTF8
# Compiladores probados: GNUPLOT (Ubuntu 20.04 Linux) 5.2
# Instruciones de Ejecución: no requiere nada mas
# gnuplot p2f.gp


# PROGRAM
# Idioma
set encoding utf8

# Terminal
unset label
clear
set terminal pdf
set output "./img/p2f.pdf"


set isosamples 50



set grid
set xlabel "x"
set ylabel "y"
set zlabel "z"
set title "Representación Tridimensional de los Estados"
set nokey
unset xtics
unset ytics
set size ratio -1


splot sqrt(x**2 + z**2) w l lc "blue" t "ψ_o y ψ(2π/ω)", -sqrt(x**2 + z**2) w l lc "black" t "ψ(π/ω)"
