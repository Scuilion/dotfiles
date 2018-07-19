current_clock_emoji() {
    hour=$(date +"%l")
    echo -n '\U'$(([##16] 0x1F550 + hour - 1))
}

display_clocks(){
    for i in `seq 0 $((0x1F567 - 0x1F550))`;
    do
        echo ' \U'$(([##16] 0x1F550 + $i)) $i
    done
}
