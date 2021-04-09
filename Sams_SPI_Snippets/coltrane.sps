# key: coltrane
# point_line: 0
# point_index: 11
# --
live_loop :coltrane do
  x = midi_to_hz(ring :C1, :F2,:B2,:Es2,:As3,:Ds3,:Gs3,:Bs4,:E4,:A4,:D5,:G5,:C5).tick(:loo)
  y = midi_to_hz(ring :C4, :F4,:B4,:Es4,:As4,:Ds4,:Gs4,:Bs4,:E4,:A4,:D4,:G4,:C4).reverse.look(:loo)

end

