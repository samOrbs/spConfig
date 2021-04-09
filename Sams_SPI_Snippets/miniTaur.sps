# key: miniTaur
# point_line: 0
# point_index: 11
# --
##| MINITAUR SNIPP

live_loop :note do
  use_bpm 160
  x = 0.5
  midi (ring :ds1,:d1).stretch(16).tick(:ooo), port: "sport_a", channel: 1, sustain: x
  sleep x
end

live_loop :cc_CUTTOFF do
  sync :note
  2.times do
    midi_cc 19, value: 127, port:"sport_A",channel: 1
  end
end

live_loop :cc_RES do
  sync :note
  2.times do
    midi_cc 21, value: 0, port:"sport_A",channel: 1
  end
end

live_loop :cc_VCO2FREQ do
  sync :note
  x = (ring 2,4).mirror.tick(:thr)
  x.times do
    midi_cc 17, value: (ring 120,64).stretch(4).tick(:one), port:"sport_A",channel: 1
    midi_cc 49, value: (line 0,16,steps:16).tick(:two), port:"sport_A",channel: 1 ##|LSB
  end
end

live_loop :cc_LFO_CLK_DIV do
  sync :note
  8.times do
    midi_cc 87, value: 120, port: "sport_A", channel: 1
    midi_cc 82, value: 127, port: "sport_A", channel: 1 if(spread 2,4).tick
  end
  midi_cc 86, value: 117, port: "sport_A", channel: 1
end

