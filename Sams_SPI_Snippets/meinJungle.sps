# key: meinJungle
# point_line: 0
# point_index: 11
# --

set_volume! 1

live_loop :aBreak do
  use_bpm 160
  
  samp = :loop_amen
  
  a = (r 0,1,3).tick(:a)
  b = (r 2,5,3).tick(:b)
  c = (r 0,1,0,0).tick(:c)
  duble = (knit 1,15-2,4,2,2,1).tick(:dble)
  rtalk = (knit 1,15,-1,2,1,14,-1,1,1.1,16,1.15,14,-1.1,2).tick(:blah)
  ons = (knit 0,32,4,16,2,16).tick(:zong)
  
  d = (r 0,1,2,3,4)[(r a,b,c,a,b).stretch(duble).tick(:d)] # the onset
  
  sample  samp, onset: d+ons, rate: rtalk
  
  sleep 0.5
  
end

