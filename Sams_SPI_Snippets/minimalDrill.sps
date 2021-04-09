# key: minimalDrill
# point_line: 0
# point_index: 11
# --
live_loop :foo do
  b = (ring :b1, :b2, :b3, :b4).tick
  puts b
  with_fx :record, buffer: b do
    with_fx :reverb, room: 0.8 do
      live_audio :foo
    end
  end
  sleep 8
  cue :play
end

live_loop :rado do
  midi 24, port:"sport_a", channel:1 if(spread 7,12).tick
  midi 30, port:"sport_a", channel:1 if(spread 4,4).look
  midi 39, port:"sport_a", channel:1 if(spread 3,4).look
  
  time_warp (ring 0.25,0.5).look do
    midi 39, port:"sport_a", channel:1 if(spread 4,4).look
  end
  
  sleep (ring 0.25,0.5).look
end

live_loop :hh do
  ##| sync :play
  8.times do
    density (ring 0.5,1,1,4,0.25).tick(:foo) do
      midi 30, port:"sport_a", channel:1 if(spread 4,4).tick
      sleep 0.125
    end
  end
end

live_loop :rad do
  
  sync :play
  with_fx :slicer, phase:0.125 do
    with_fx :hpf,cutoff: 8 do
      with_fx :reverb, room:1 do
        sample (ring buffer[:b1],buffer[:b2],buffer[:b3],buffer[:b4]).tick, rate: (scale :c, :aeolian).tick*-0.05, onset:tick
      end
    end
  end
  sleep 1
end

