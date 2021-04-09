# key: jungle
# point_line: 0
# point_index: 11
# --
bpm = 160
live_loop :at do
  use_bpm bpm
  use_random_seed 101
  sample :loop_amen, onset: (ring 1,3,5,8,4).mirror.tick, amp: 4, rate: (ring 1,1,1,1,1,1,1,-1).tick(:ness)
  cue :piano
  sleep (ring 0.5,0.25).choose
end

live_loop :piano do
  sync :piano
  sample :ambi_piano, amp: 2.5,rate: (ring 1,1,1,2,1,-1.1,-0.9,-2).tick(:la) if(spread 1,8).tick
end

live_loop :ahh do
  sync :piano
  x = (ring 4,8,2).choose
  y = (ring 4,0.5).choose
  use_bpm bpm
  sleep 8
  density y do
    x.times do
      sample :drum_cymbal_closed, amp: 1.5 if(spread 1,8).tick
      sleep 0.125
    end
  end
end
