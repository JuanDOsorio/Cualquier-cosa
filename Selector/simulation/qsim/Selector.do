onerror {exit -code 1}
vlib work
vcom -work work Selector.vho
vcom -work work Waveform2.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Selector_vhd_vec_tst
vcd file -direction Selector.msim.vcd
vcd add -internal Selector_vhd_vec_tst/*
vcd add -internal Selector_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

