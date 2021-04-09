# key: chorr
# point_line: 0
# point_index: 11
# --
##| bAsIcChOrD


a = [0,0,0]
b = [0,0,0]
c = [0,0,0]
d = [0,0,0]

tick(:bcs0) if(spread 4,4).tick(:spr1)

time_warp (r a,b,c,d).look(:bcs0) do
  synth :fm, note:(chord_degree 1,60,:aeolian,3).tick(:bcs1), pan:(r -1,1,-0.1).look(:bcs1)

end



