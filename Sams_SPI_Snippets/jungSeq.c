# key: jungSeq
# point_line: 0
# point_index: 11
# --
live_loop :jungSeq do

# setup
use_bpm 160
n = 1 # midi channel
port = "loopMidi Port" # midi port
restBeats = 1 # beats to rest
stutPat1 = [0] # no stutter
stutPat2 = [s64[0],s64[8],s64[16],s64[24],s64[32],s64[40],s64[48],s64[56]] # 64s stutter

# sequences
double = (knit 1,16).tick(:a1) # sequence for retrigering sequence state n times
a1 = (r 0).stretch(double).tick(:b1) # selector Sequences
b1 = (r 0).stretch(double).tick(:c1)
c1 = (r 0).stretch(double).tick(:d1)
offset = 41 + (r 0).tick(:e1) # shifts into midi note range (for DrRex it has weird range around 40)
stutter = (k stutPat1,60,stutPat2,4).tick(:f1) # every 64 roll

# init
sequence = (r 0,1,2,3,4,5,6,7)[(r a1,b1,c1).tick(:g1)] # creates 8 step sequence uses selectors to choose element

# crunch
time_warp stutter do # stutter effect
midi sequence+offset, channel: n, port: port # sends sequence
end

sleep restBeats
end
