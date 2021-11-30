set terminal png size 1200,600;
set title "omicron repo 'Rust' workflow billable time"

set xdata time;
set timefmt "%Y-%m-%dT%H:%M:%S";
set format x "%Y-%m-%d"; # XXX

# Add 10% padding to the top
set offsets graph 0, 0, 0.1, 0;
# Start at zero
set yrange [0:*];
set ylabel "Billable time (minutes)";
set ytics;
#set logscale y

plot "data/summary.out" using 1:($2/60000) with points title "Ubuntu", \
     "data/summary.out" using 1:($3/60000) with points title "Mac"

