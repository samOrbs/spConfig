# key: patThree
# point_line: 0
# point_index: 11
# --

bpm = 130*0.5

live_loop :rado do
  use_bpm bpm
  midi 24, port:"sport_a", channel:1 if(spread 7,12).tick
  midi 30, port:"sport_a", channel:1 if(spread 4,4).look
  midi 39, port:"sport_a", channel:1 if(spread 3,4).look
  
  time_warp (ring 0.25,0.5).look do
    midi 39, port:"sport_a", channel:1 if(spread 4,4).look
  end
  
  sleep (ring 0.25,0.5).look
end

live_loop :hh do
  use_bpm bpm
  ##| sync :play
  8.times do
    density (ring 0.5,1,1,4,0.25).tick(:foo) do
      midi 30, port:"sport_a", channel:1 if(spread 4,4).tick
      sleep 0.125
    end
  end
end

live_audio :la
