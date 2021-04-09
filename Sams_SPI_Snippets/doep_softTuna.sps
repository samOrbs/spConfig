# key: doep_softTuna
# point_line: 0
# point_index: 11
# --
eoe = "/Users/SamuelOrbyConran/Music/samps/eoe/"

live_loop :doep_midi do ##| set up for set/get of doepfer pocket control
  ctl, val = sync "/midi/sport_a/4/4/control_change"
  case ctl
  when 67
    set :One, val
  when 1
    set :two, val
  when 2
    set :three, val
  when 3
    set :four, val
  when 4
    set :five, val
  when 5
    set :six, val
  when 6
    set :seven, val
  when 7
    set :eight, val
  when 8
    set :nine, val
  when 9
    set :ten, val
  when 10
    set :eleven, val
  when 12
    set :twelve, val
  when 13
    set :thirteen, val
  when 14
    set :fourteen, val
  when 15
    set :fifteen, val
  when 16
    set :sixteen, val
  end
end


##|  following loop to turn the 16 knobs into a sequencer, edit the ring functions for editing steps..
live_loop :gnar do
  gnar = get (ring :one,:two,:three,:four,:five,:six,:seven,:eight,:nine,:ten,:eleven,:twelve,:thirteen,:fourteen,:fifteen,:sixteen).drop_last(16-4).tick
  density 3 do
    with_fx :panslicer, phase: 0.25 do
      with_fx :echo, mix:0.5, phase: 0.5, decay: 10, amp: 0.25 do
        sample eoe,(ring "bd",(ring "lt","bd",(ring "bd","bd","bd","cp").tick(:lalaa)).tick(:foob)).tick(:zed),pan: rrand(-1,1), rate: gnar*0.5 if(spread 7,12).tick(:as)
        
        sample eoe,(ring "bd").tick(:zedo),pan: rrand(-1,1), rate: gnar*0.1 if(spread 4,4).tick(:as) ##| commment out for weird effect
        
      end
    end
    sample eoe,1,pan: rrand(-1,1), amp: 0.5,rate: gnar*0.1 if(spread 7,12).look(:as)
    
  end
  x = get :eight
  use_random_seed 101 + x
  puts(x)
  midi (scale :c2,:harmonic_major).pick(3).tick, port:"sport_a" if(spread 2,4).tick(:midi)
  puts("val")
  puts(gnar)
  sleep (gnar*0.005)
end








