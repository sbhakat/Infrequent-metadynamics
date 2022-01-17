#excecute as gnuplot error-plt.plt
set terminal png enhanced size 750,650
set output 'plot_error_plmtrp.png'

set multiplot layout 2,1

set title 'Residue Trp ({/Symbol c}_2 - {/Symbol c}_1 infrequent metadynamics)

set xr[4:18]
set xlabel "Number of Simulations"

set ylabel "p-value"
plot "SD_Nsim.txt" using 1:6:7 lc 1 ps 2 pt 7 w yerr title "p-Value"

set ylabel "Transition time {/Symbol t} (sec)"
set format y "%2.2e"
plot "SD_Nsim.txt" using 1:8:9 lc 1 ps 2 pt 7 w yerr title " {/Symbol t} (sec)"


unset multiplot
