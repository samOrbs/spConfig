# key: lorenz
# point_line: 0
# point_index: 11
# --
##| initial variables, makes huge difference, see chaos in wonderland...Clifford Pickover...
x0=2.0
y0=3.0
z0=5.0
t=0.01

##| // Lorenz loop
live_loop :lorenz do
  x = x0 + (t*10*(y0-x0))
  y = y0 + (t*((x0*(28-z0))-y0))
  z = z0 + (t*((x0*y0)-(8*z0/3)))
  x0=x
  y0=y
  z0=z
  puts("tzero ones:")
  puts(x,y,z) ##| print x,y,z
  
  if(x0 < 0) ##| digital rectifiers = x0p (p means positive)
    x0p = x0*-1
  else
    x0p = x0
  end
  if(y0 < 0)
    y0p = y0*-1
  else
    y0p = y0
  end
  if(y0 < 0)
    z0p = z0*-1
  else
    z0p = z0
  end
  puts("positve ones:")
  puts(x0p,y0p,z0p)
  sleep 0.5 ##| update time in beats
  
end
