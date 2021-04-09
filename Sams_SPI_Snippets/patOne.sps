# key: patOne
# point_line: 0
# point_index: 11
# --
live_loop :drumPttr1 do
  use_bpm 160
  density 4 do
    x = 0.25
    y = (ring 4,2).tick(:loo)
    midi 24, port:"sport_a", channel: 1 if(spread 1,4).tick
    time_warp (ring -0.25,-0.25,-0.25,-0.5).tick(:swng) do
      midi 41, port:"sport_a", channel: 1, vel: 70 if(spread 1,32).look
      ##| midi 62, port:"sport_a", channel: 1, vel: 50 if(spread 3,32).look
    end
    y.times do
      density (ring 0.25,0.5,0.25).mirror.look(:loo) do
        midi 30, port:"sport_a", channel: 1, vel: 70 if(spread 3,(ring 8,4).mirror.tick(:la)).look
        midi 39, port:"sport_a", channel: 1 if(spread (ring 1,3).mirror.tick(:aso),8).look
        sleep x
      end
    end
    sleep x
  end
end