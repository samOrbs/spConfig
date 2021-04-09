# Sonic Pi init file
# Code in here will be evaluated on launch.
def pi
pi = 3.14159265359
end
def gr
gr = 1.61803398875
end
# function to make 16 step sequencer from golden ratio
def grs
1.times do
grss = []
16.times do
grss << gr*(line 0,1,steps:16).tick
end
return grss
end
end
# function to make 64 step sequencer from western meter
def s64
    1.times do
        sixtyFourths = []
        oneSixFourth = 0
        sixtyFourths << oneSixFourth
64.times do
            incer = 0.015625
            oneSixFourth = oneSixFourth+incer
            sixtyFourths << oneSixFourth
        end
        return sixtyFourths
    end
end
#granular synth check github for supercollider synthDef also snipper 'granular' controls it
def granular(rt = 1, grainSize = 0.1, pos = 0, posDither = 0.1, trigR = 20, panPos = 0, att = 0.1, sus = 1, rel = 0.1, timeAttack = 0, timeSustain = 0, timeRelease = 0, timeLevelAdd = 0, pitchAttack = 0, pitchSustain = 0, pitchRelease = 0, pitchLevelAdd = 0, amps= 1,buff = 0)
    use_osc("127.0.0.1",8085)
    buff = buff
    pos = pos
    att = att
    sus = sus
    rel = rel
    rt = rt
    trigR = trigR
    amps = amps
    grainSize = grainSize
    posDither = posDither
    panPos = panPos
    timeAttack = timeAttack
    timeSustain = timeSustain
    timeRelease = timeRelease
    timeLevelAdd = timeLevelAdd
    pitchAttack = pitchAttack
    pitchSustain = pitchSustain
    pitchRelease = pitchRelease
    pitchLevelAdd = pitchLevelAdd
    osc('/liveo',buff,pos,att,sus,rel,trigR,rt,amps,grainSize,posDither,panPos,timeAttack,timeSustain,timeRelease,timeLevelAdd,pitchAttack,pitchSustain,pitchRelease,pitchLevelAdd)
end
# loads snippets
load_snippets("/Users/sEriOuS/Documents/ZigLib/chronicles/Sams_SPI_Snippets/")
# load synths
load_synthdefs("/Users/sEriOuS/Documents/ZigLib/chronicles/mySynths")
# gives option to abriviate ring to r
define :r do |*args|
    ring *args
end
# gives option to abriviate knit to k
define :k do |*args|
    knit *args
end
# gives opton to abreviate spread to e
define :e do |*args|
    spread *args
end
# gives option to abreviate sample to s
define :s do |*args|
    sample *args
end
# gives option to abreviate midi to m
define :m do |*args|
    midi *args
end

#drumstation:

#bassDrum808
def bassDrum(vel = 127, slep = 1, tune = 20, decay = 20, pan = 60, distortion = 20, tone = 20)
    a = "sport_d"
    c = 2
    midi 24, vel: vel, channel:c, port:a
    midi_cc 23, tune, channel:c, port:a
    midi_cc 25, decay, channel:c, port:a
    midi_cc 21, pan, channel:c, port:a
    midi_cc 22, distortion, channel:c, port:a
    midi_cc 24, tone, channel:c, port:a
    sleep slep
end

#bassDrum909
def bassDrum909(vel = 127, slep = 1, tune = 20,attack = 0, decay = 20, pan = 60, distortion = 20)
    a = "sport_d"
    c = 2
    midi 36, vel: vel, channel:c, port:a
    midi_cc 76, tune, channel:c, port:a
    midi_cc 77, attack, channel:c, port:a
    midi_cc 78, decay, channel:c, port:a
    midi_cc 106, pan, channel:c, port:a
    midi_cc 107, distortion, channel:c, port:a
    sleep slep
end

#snareDrum
def snareDrum(vel = 127, slep = 1, tune = 20, snappy = 20, pan = 60, distortion = 20, tone = 20)
    a = "sport_d"
    c = 2
    midi 26, vel: vel, channel:c, port:a
    midi_cc 29, tune, channel:c, port:a
    midi_cc 31, snappy, channel:c, port:a
    midi_cc 27, pan, channel:c, port:a
    midi_cc 28, distortion, channel:c, port:a
    midi_cc 30, tone, channel:c, port:a
    sleep slep
end

#snareDrum909
def snareDrum909(vel = 127, slep = 1, tune = 20, tone = 0, snappy = 20, pan = 60, distortion = 20)
    a = "sport_d"
    c = 2
    midi 38, vel: vel, channel:c, port:a
    midi_cc 79, tune, channel:c, port:a
    midi_cc 80, tone, channel:c, port:a
    midi_cc 81, snappy, channel:c, port:a
    midi_cc 109, pan, channel:c, port:a
    midi_cc 110, distortion, channel:c, port:a
    sleep slep
end

#rimShot
def rimShot(vel = 127, slep = 1, tune = 20, pan = 60)
    a = "sport_d"
    c = 2
    midi 25, vel: vel, channel:c, port:a
    midi_cc 48, tune, channel:c, port:a
    midi_cc 28, pan, channel:c, port:a
    sleep slep
end

#rimShot909
def rimShot909(vel = 127, slep = 1, tune = 20, pan = 60)
    a = "sport_d"
    c = 2
    midi 37, vel: vel, channel:c, port:a
    midi_cc 98, tune, channel:c, port:a
    midi_cc 97, pan, channel:c, port:a
    sleep slep
end

#handClap
def handClap(vel = 127, slep = 1, tune = 20, pan = 60)
    a = "sport_d"
    c = 2
    midi 27, vel: vel, channel:c, port:a
    midi_cc 50, tune, channel:c, port:a
    midi_cc 49, pan, channel:c, port:a
    sleep slep
end

#handClap909
def handClap909(vel = 127, slep = 1, tune = 20, pan = 60)
    a = "sport_d"
    c = 2
    midi 39, vel: vel, channel:c, port:a
    midi_cc 100, tune, channel:c, port:a
    midi_cc 99, pan, channel:c, port:a
    sleep slep
end

#lowTom
def lowTom(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 28, vel: vel, channel:c, port:a
    midi_cc 35, tune, channel:c, port:a
    midi_cc 36, decay, channel:c, port:a
    midi_cc 33, pan, channel:c, port:a
    midi_cc 34, distortion, channel:c, port:a
    sleep slep
end

#lowTom909
def lowTom909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 60)
    a = "sport_d"
    c = 2
    midi 41, vel: vel, channel:c, port:a
    midi_cc 85, tune, channel:c, port:a
    midi_cc 86, decay, channel:c, port:a
    midi_cc 83, pan, channel:c, port:a
    midi_cc 84, distortion, channel:c, port:a
    sleep slep
end

#midTom
def midTom(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 29, vel: vel, channel:c, port:a
    midi_cc 40, tune, channel:c, port:a
    midi_cc 41, decay, channel:c, port:a
    midi_cc 38, pan, channel:c, port:a
    midi_cc 39, distortion, channel:c, port:a
    sleep slep
end

#midTom909
def midTom909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 60)
    a = "sport_d"
    c = 2
    midi 45, vel: vel, channel:c, port:a
    midi_cc 90, tune, channel:c, port:a
    midi_cc 91, decay, channel:c, port:a
    midi_cc 88, pan, channel:c, port:a
    midi_cc 89, distortion, channel:c, port:a
    sleep slep
end

#highTom
def highTom(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 31, vel: vel, channel:c, port:a
    midi_cc 45, tune, channel:c, port:a
    midi_cc 46, decay, channel:c, port:a
    midi_cc 43, pan, channel:c, port:a
    midi_cc 44, distortion, channel:c, port:a
    sleep slep
end

#highTom909
def highTom909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 60)
    a = "sport_d"
    c = 2
    midi 48, vel: vel, channel:c, port:a
    midi_cc 95, tune, channel:c, port:a
    midi_cc 96, decay, channel:c, port:a
    midi_cc 93, pan, channel:c, port:a
    midi_cc 94, distortion, channel:c, port:a
    sleep slep
end

#cowBell
def cowBell(vel = 127, slep = 1, tune = 20,  pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 56, vel: vel, channel:c, port:a
    midi_cc 53, tune, channel:c, port:a
    midi_cc 51, pan, channel:c, port:a
    midi_cc 52, distortion, channel:c, port:a
    sleep slep
end

#closedHH
def closedHH(vel = 127, slep = 1, tune = 20,  pan = 60, decay = 0)
    a = "sport_d"
    c = 2
    midi 30, vel: vel, channel:c, port:a
    midi_cc 55, tune, channel:c, port:a
    midi_cc 54, pan, channel:c, port:a
    midi_cc 56, decay, channel:c, port:a
    sleep slep
end

#closedHH909
def closedHH909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60, distortion = 60)
    a = "sport_d"
    c = 2
    midi 42, vel: vel, channel:c, port:a
    midi_cc 102, tune, channel:c, port:a
    midi_cc 103, decay, channel:c, port:a
    midi_cc 111, pan, channel:c, port:a
    midi_cc 101, distortion, channel:c, port:a
    sleep slep
end

#openHH
def openHH(vel = 127, slep = 1, tune = 20,  pan = 60, decay = 0)
    a = "sport_d"
    c = 2
    midi 34, vel: vel, channel:c, port:a
    midi_cc 58, tune, channel:c, port:a
    midi_cc 57, pan, channel:c, port:a
    midi_cc 59, decay, channel:c, port:a
    sleep slep
end

#openHH909
def openHH909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60)
    a = "sport_d"
    c = 2
    midi 46, vel: vel, channel:c, port:a
    midi_cc 104, tune, channel:c, port:a
    midi_cc 113, decay, channel:c, port:a
    midi_cc 112, pan, channel:c, port:a
    sleep slep
end

#crashCymbal
def crashCymbal(vel = 127, slep = 1, tune = 20,  pan = 60, decay = 0)
    a = "sport_d"
    c = 2
    midi 32, vel: vel, channel:c, port:a
    midi_cc 61, tune, channel:c, port:a
    midi_cc 60, pan, channel:c, port:a
    midi_cc 62, decay, channel:c, port:a
    sleep slep
end

#crashCymbal909
def crashCymbal909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60)
    a = "sport_d"
    c = 2
    midi 49, vel: vel, channel:c, port:a
    midi_cc 115, tune, channel:c, port:a
    midi_cc 116, decay, channel:c, port:a
    midi_cc 114, pan, channel:c, port:a
    sleep slep
end

#rideCymbal909
def rideCymbal909(vel = 127, slep = 1, tune = 20, decay = 60, pan = 60)
    a = "sport_d"
    c = 2
    midi 51, vel: vel, channel:c, port:a
    midi_cc 118, tune, channel:c, port:a
    midi_cc 119, decay, channel:c, port:a
    midi_cc 117, pan, channel:c, port:a
    sleep slep
end

#lowConga
def lowConga(vel = 127, slep = 1, tune = 20,  pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 64, vel: vel, channel:c, port:a
    midi_cc 65, tune, channel:c, port:a
    midi_cc 63, pan, channel:c, port:a
    midi_cc 64, distortion, channel:c, port:a
    sleep slep
end

#midConga
def midConga(vel = 127, slep = 1, tune = 20,  pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 63, vel: vel, channel:c, port:a
    midi_cc 68, tune, channel:c, port:a
    midi_cc 66, pan, channel:c, port:a
    midi_cc 67, distortion, channel:c, port:a
    sleep slep
end

#highConga
def highConga(vel = 127, slep = 1, tune = 20,  pan = 60, distortion = 0)
    a = "sport_d"
    c = 2
    midi 62, vel: vel, channel:c, port:a
    midi_cc 71, tune, channel:c, port:a
    midi_cc 69, pan, channel:c, port:a
    midi_cc 70, distortion, channel:c, port:a
    sleep slep
end

#maracas
def maracas(vel = 127, slep = 1, tune = 20,  pan = 60)
    a = "sport_d"
    c = 2
    midi 70, vel: vel, channel:c, port:a
    midi_cc 73, tune, channel:c, port:a
    midi_cc 72, pan, channel:c, port:a
    sleep slep
end

#claves
def claves(vel = 127, slep = 1, tune = 20,  pan = 60)
    a = "sport_d"
    c = 2
    midi 75, vel: vel, channel:c, port:a
    midi_cc 75, tune, channel:c, port:a
    midi_cc 74, pan, channel:c, port:a
    sleep slep
end


# a way to turn all scales into an array called scales
define :scales do | selector = 0 |
za =:diatonic # 0
zb =:ionian # 1
zc =:major # 2
zd =:dorian # 3
ze =:phrygian # 4
zf =:lydian # 5
zg =:mixolydian # 6
zh =:aeolian # 7
zi =:minor # 8
zj =:locrian # 9
zk =:hex_major6 # 10
zl =:hex_dorian # 11
zm =:hex_phrygian # 12
zn =:hex_major7 # 13
zo =:hex_sus # 14
zp =:hex_aeolian # 15
zq =:minor_pentatonic # 16
zr =:yu # 17
zs =:major_pentatonic # 18
zt =:gong # 19
zu =:egyptian # 20
zv =:shang # 21
zw =:jiao # 22
zx =:zhi # 23
zy =:ritusen # 24
zz =:whole_tone # 25
za2 =:whole # 26
zb2 =:chromatic # 27
zc2 =:harmonic_minor # 28
zd2 =:melodic_minor_asc # 29
ze2 =:hungarian_minor # 30
zf2 =:octatonic # 31
zg2 =:messiaen1 # 32
zh2 =:messiaen2 # 33
zi2 =:messiaen3 # 34
zj2 =:messiaen4 # 35
zk2 =:messiaen5 # 36
zl2 =:messiaen6 # 37
zm2 =:messiaen7 # 38
zn2 =:super_locrian # 39
zo2 =:hirajoshi # 40
zp2 =:kumoi # 41
zq2 =:neapolitan_major # 42
zr2 =:bartok # 43
zs2 =:bhairav # 44
zt2 =:locrian_major # 45
zu2 =:ahirbhairav # 46
zv2 =:enigmatic # 47
zw2 =:neapolitan_minor # 48
zx2 =:pelog # 49
zy2 =:augmented2 # 50
zz2 =:scriabin #51
za3 =:harmonic_major #52
zb3 =:melodic_minor_desc # 53
zc3 =:romanian_minor # 54
zd3 =:hindu # 55
ze3 =:iwato # 56
zf3 =:melodic_minor # 57
zg3 =:diminished2 # 58
zh3 =:marva # 59
zi3 =:melodic_major # 60
zj3 =:indian # 61
zk3 =:spanish # 62
zl3 =:prometheus # 63
zm3 =:diminished # 64
zn3 =:todi # 65
zo3 =:leading_whole # 66
zp3 =:augmented # 67
zq3 =:purvi # 68
zr3 =:chinese # 69
zs3 =:lydian_minor # 70
zt3 =:blues_major # 71
zu3 =:blues_minor # 72
scalez =[za,zb,zc,zd,ze,zf,zg,zh,zi,zj,zk,zl,zm,zn,zo,zp,zq,zr,zs,zt,zu,zv,zw,zx,zy,zz,za2,zb2,zc2,zd2,ze2,zf2,zg2,zh2,zi2,zj2,zk2,zl2,zm2,zn2,zo2,zp2,zq2,zr2,zs2,zt2,zu2,zv2,zw2,zx2,zy2,zz2,za3,zb3,zc3,zd3,ze3,zf3,zg3,zh3,zi3,zj3,zk3,zl3,zm3,zn3,zo3,zp3,zq3,zr3,zs3,zt3,zu3]
scales = scalez[selector]
end
