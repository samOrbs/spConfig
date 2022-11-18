# key: pattr
# point_line: 0
# point_index: 11
# --

# if(spread 2,5) = "x.x.." is a thirteenth century Persian rhythm called Khafif-e-ramal [34]. It is also the metric pattern of the second movement of Tchaikovsky’s Symphony No. 6 [17]. When it is started on the second onset ([x . . x .]) it is the metric pattern of Dave Brubeck’s Take Five as well as Mars from The Planets by Gustav Holst [17].
# if(spread 3,4) = "x.xx" is the archetypal pattern of the Cumbia from Colombia [20], as well as a Calypso rhythm from Trinidad [13]. It is also a thirteenth century Persian rhythm called Khalif-e-saghil [34], as well as the trochoid choreic rhythmic pattern of ancient Greece [21].
# if(spread 3,5) = "x.x.x", when started on the second onset, is another thirteenth century Persian rhythm by the name of Khafif-e-ramal [34], as well as a Rumanian folk-dance rhythm [25].
# if(spread 3,7) = "x.x.x.." is a Ruchenitza rhythm used in a Bulgarian folk-dance [24]. It is also the metric pattern of Pink Floyd’s Money [17].
# if(spread 3,8) = "x..x..x." is the Cuban tresillo pattern discussed in the preceding [15].
# if(spread 4,7) = "x.x.x.x" is another Ruchenitza Bulgarian folk-dance rhythm [24]. E(4,9)=[x.x.x.x..]istheAksakrhythmofTurkey[6]. ItisalsothemetricpatternusedbyDave
#Brubeck in his piece Rondo a la Turk [17].
# if(spread 4,11) = "x..x..x..x." is the metric pattern used by Frank Zappa in his piece titled Outside Now [17]. E(5,6)=[x . x x x x] yields the York-Samai pattern, a popular Arab rhythm, when started on the second
#onset [30].
# if(spread 5,7) = "x.xx.xx" is the Nawakhat pattern, another popular Arab rhythm [30].
# if(spread 5,8) = "x.xx.xx." is the Cuban cinquillo pattern discussed in the preceding [15]. When it is started
#on the second onset it is also the Spanish Tango [13] and a thirteenth century Persian rhythm, the Al-saghil- al-sani [34].
# if(spread 5,9) = "x.x.x.x.x" is a popular Arab rhythm called Agsag-Samai [30]. When started on the second onset, it is a drum pattern used by the Venda in South Africa [26], as well as a Rumanian folk-dance rhythm [25].
# if(spread 5,11) = "x.x.x.x.x.." is the metric pattern used by Moussorgsky in Pictures at an Exhibition [17]. E(5,12) = [x . . x . x . . x . x .] is the Venda clapping pattern of a South African children’s song [24]. E(5,16)=[x..x..x..x..x....]istheBossa-NovarhythmnecklaceofBrazil. TheactualBossa-
#Nova rhythm usually starts on the third onset as follows: "x..x..x...x..x.." [31]. However, there are other starting places as well, as for example [x . . x . . x . . x . . . x . .] [3].
# if(spread 7,8) = "x.xxxxxx" is a typical rhythm played on the Bendir (frame drum), and used in the accom- paniment of songs of the Tuareg people of Libya [30].



#-- a pattern definition...dont worry to much about this
define :p1 do |p1|
  return p1.ring.tick(:p1) == "x"
end
define :p2 do |p2|
  return p2.ring.tick(:p2) == "x"
end
define :p3 do |p3|
  return p3.ring.tick(:p3) == "x"
end
define :p4 do |p4|
  return p4.ring.tick(:p4) == "x"
end
define :p5 do |p5|
  return p5.ring.tick(:p5) == "x"
end
define :p6 do |p6|
  return p6.ring.tick(:p6) == "x"
end
define :p7 do |p7|
  return p7.ring.tick(:p7) == "x"
end
