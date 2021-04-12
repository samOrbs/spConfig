# key: lambdaDrums
# point_line: 0
# point_index: 11
# --
##| lazy drum machine commands

# bd,bd9,sn,sn9,cow,cp,cp9,rim9,rim,hh,hh9,clav,lcong,mcong,hcong
# args order: velocity,tune,tone1,tone2,tone3

# drumstation lambdas

bd = -> (vel = 120,tun = 60, dec = 60, dis = 0){
  bassDrum(
      vel, # velo
          0, # sleep
              tun,# tune
                  dec, # decay
                      60, # pan
                          dis, # distortion
                              0 # tone

)
}

bd9 = -> (vel = 120,tun = 60, att = 0, dec = 60, dis = 0){
  bassDrum909(
      vel, # velo
          0, # sleep
              tun,# tune
                  att, # attak
                      dec, # decay
                          60, # pan
                              dis # distortion

)
}

sn = -> (vel = 120, tun = 60, snap = 60, dis = 0){
  snareDrum(
      vel, # velo
          0, # sleep
              tun, # tune
                  snap, # snappy
                      60, # pan
                          dis, # distortion
                              60 # tone

)
}

sn9 = -> (vel = 120, tun = 60, ton = 0, snap = 60, dis = 0){
  snareDrum909(
      vel, # velo
          0, # sleep
              tun, # tune
                  ton,
                      snap, # snappy
                          60, # pan
                              dis # distortion

)
}

cow = -> (vel = 127, tun = 20, dis = 0){
  cowBell(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60,
                      distortion = dis

)
}

cp = -> (vel = 120, tun = 60){
  handClap(
      vel, # velo
          0, # sleep
              tun, # tune
                  60, # pan

)
}

cp9 = -> (vel = 127, tun = 20){
  handClap909(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60

)
}

rim9 = -> (vel = 127, tun = 20){
  rimShot909(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60

)
}

rim = -> (vel = 127, tun = 20){
  rimShot(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60

)
}

hh = -> (vel = 120, tun = 60, dec = 60){
  closedHH(
      vel, # velo
          0, # sleep
              tun, # tune
                  60, # pan
                      dec # decay

)
}

hh9 = -> (vel = 127, tun = 20, dec = 60, dis = 0){
  closedHH909(
      vel = vel,
          slep = 0,
              tune = tun,
                  decay = dec,
                      pan = 60,
                          distortion = dis

)
}

clav = -> (vel = 127, tun = 20){
  claves(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60

)
}

lcong = -> (vel = 127, tun = 20, dis = 0){
  lowConga(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60,
                      distortion = dis

)
}

mcong = -> (vel = 127, tun = 20, dis = 0){
  midConga(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60,
                      distortion = dis

)
}

hcong = -> (vel = 127, tun = 20, dis = 0){
  highConga(
      vel = vel,
          slep = 0,
              tune = tun,
                  pan = 60,
                      distortion = dis

)
}
# lambda end
