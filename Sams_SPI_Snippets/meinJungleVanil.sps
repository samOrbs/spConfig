# key: meinJungleVanil
# point_line: 0
# point_index: 11
# --

live_loop :aVanilBreak do
  use_bpm 160
  
  
  e = "/Users/sEriOuS/Google Drive/ZigLibDrive/breaksSamples/"
  
  a = 1
  b = 2
  c = 3
  duble = 1
  rtalk = 1
  d = (r 0,1,2,3,4)[(r a,b,c,a,b).stretch(duble).tick(:d)] # the onset
  sample  e, 8, onset: d, rate: rtalk
  
  sleep 0.5
  
end
