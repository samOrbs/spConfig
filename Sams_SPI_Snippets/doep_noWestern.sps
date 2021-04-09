# key: doep_noWestern
# point_line: 0
# point_index: 11
# --

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

##| globals for in thread itteration
vco1Att = 0.1
vco1Sus = 0.1
vco1Rel = 0.1
##|///////////
vco2Att = 0.1
vco2Sus = 0.1
vco2Rel = 0.1
##|///////////
vco3Att = 0.1
vco3Sus = 0.1
vco3Rel = 0.1
##|timing offsets
timingOs1 = 0
timingOs2 = 0
timingOs3 = 0
##| SCALES
scales1 = 440
scales2 = 441
scales3 = 442
##| sleep for glbl envelope update.
nap = 1

##|//////TIMINGS_LOOP//////////////////
live_loop :itterateEnvelopeControls do
  gnar = get :one ##| get knob one
  use_random_seed 101 + gnar ##| find a seed with knob then preset
  use_random_seed 101 + 91 ##| preset
  
  puts(gnar)
  sum = 1
  vco1Att = (ring 0.01).tick*sum
  vco1Sus = (ring 1).look*sum
  vco1Rel = (ring 0.01).look*sum
  timingOs1 =(ring 0.125).look ##| timing offSets, the gap between each sound envelope.. 0 is just envelope.
  scales1 = midi_to_hz(ring :C1, :F2,:B2,:Es2,:As3,:Ds3,:Gs3,:Bs4,:E4,:A4,:D5,:G5,:C5).pick(2).look
  
  vco2Att = (ring 0.01,0.3).look*sum
  vco2Sus = (ring 0.05,0.2).look*sum
  vco2Rel = (ring 0.02).look*sum
  timingOs2 = (ring 0.25).look*sum
  scales2 = midi_to_hz(ring :C1, :F2,:B2,:Es2,:As3,:Ds3,:Gs3,:Bs4,:E4,:A4,:D5,:G5,:C5).pick(2).look
  
  vco3Att = (ring 1).look*sum
  vco3Sus = (ring 0.1).look*sum
  vco3Rel = (ring 0.01).look*sum
  timingOs3 = (ring 0.25).look*sum
  scales3 = midi_to_hz(ring :C1, :F2,:B2,:Es2,:As3,:Ds3,:Gs3,:Bs4,:E4,:A4,:D5,:G5,:C5).pick(1).look
  
  sleep nap
end

##| ///////////SND_LOOPONE//////////////////
with_fx :sound_out, output: 3 do ##| output to channel 3 of soundcard, I am using an ES-8
  
  live_loop :noWestern1 do ##| new looping thread
    
    vco1 = scales1 ##| scale or note arrays to be converted into CV using 'noWestern.scsyndef' patch
    
    synth :noWestern, freq: vco1, att: vco1Att, sus: vco1Sus, rel: vco1Rel ##| send updated arguments
    
    sleep (vco1Att+vco1Sus+vco1Rel)+ timingOs1 ##| NB! --> sleeps within tonal loops have to be set to the sum of envelopes within ll_noWestern 1, 2 & 3!
  end
end

##| ///////////SND_LOOPTWO//////////////////
with_fx :sound_out, output: 4 do
  
  live_loop :noWestern2 do
    
    vco2 = scales2
    
    synth :noWestern, freq: vco2, att: vco2Att, sus: vco2Sus, rel: vco2Rel
    
    sleep (vco2Att+vco2Sus+vco2Rel)+ timingOs2
  end
end

##| ///////////SND_LOOPTHREE//////////////////
with_fx :sound_out, output: 5 do
  
  live_loop :noWestern3 do
    
    vco3 = scales3
    
    synth :noWestern, freq: vco3, att: vco3Att, sus: vco3Sus, rel: vco3Rel
    
    sleep (vco3Att+vco3Sus+vco3Rel)+ timingOs3
  end
end


live_loop :midi do
  midi :c2
  sleep 1
end


