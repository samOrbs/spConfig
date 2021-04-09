# key: patTwo
# point_line: 0
# point_index: 11
# --
x = 1
xy = 1
bpm = 130

live_loop :pat2 do
  cue :ja
  use_bpm bpm
  midi 24, port:"sport_a", channel:1 if(spread 2,4).tick(:ah)
  time_warp x - (ring 0.125, 0).tick(:swnf) do
    midi (ring 30,39).tick(:foo), port:"sport_a", channel:1  if(spread (ring 3,4).mirror.tick(:weg),4).look(:ah)
  end
  time_warp 0.5 do
    midi 33,port:"sport_a", channel:1,  vel:(ring 100,100,100,127).choose
  end
  sleep xy
  x+=1
  puts(x)
end

live_loop :swing do
  sync :ja
  use_bpm bpm
  
  3.times do
    time_warp 0.5 do
      midi 27, port:"sport_a", channel:1  if(spread 4,4).tick
      time_warp 0.25 do
        midi 26, port:"sport_a", channel:1  if(spread 3,4).look
      end
      sleep 0.5
    end
  end
  ##| sleep 1
end