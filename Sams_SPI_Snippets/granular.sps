# key: granular
# point_line: 0
# point_index: 11
# --
  granular(
    1,#rate
    0.1,#grainSize
    0,#bufferPosition
    0.1,#posDither
    20,#triggerRate
    0,#panPos
    0.1,#attack (amplitude)
    1,#sustain (amplitude)
    0.1,#release (amplitude)
    0,#timeAttack 
    0,#timeSustain 
    0,#timeRelease
    0,#timeLevelAdd
    0,#pitchAttack
    0,#pitchSustain
    0,#pitchRelease 
    0,#pitchLevelAdd
    1,#amplifier
    0 #buffer select
    ) if(spread 1,16).tick(:granular)
