from math import sqrt
from math import pi
from uncertainties import ufloat
from uncertainties import unumpy

delta_u = 1
delta_i = 0.005
delta_r = 0.1
w = 100 * pi


def get_l(u, r, i1):
    return unumpy.sqrt(u**2 - (i1*r)**2 ) / (w * i1)


def get_err(u, r, i1):
    err2 = delta_u ** 2 * u ** 2 / (w**2) + delta_i ** 2 * u ** 4 / (w**2*i1**4*(u**2+i1**2*r**2)) + delta_r**2 * (i1*r)**2 /(w**2)
    return sqrt(err2)


def get_m_vacio(vl2 , i1 ):
    return vl2 / (w*i1)


def get_m(u ,i1 ,i2,r_l2,r_d,l2v):
    return i2*unumpy.sqrt((r_l2+r_d)**2 + (w*l2v)**2) / (w*i1)


def get_k(m,l1,l2):
    return m / unumpy.sqrt(l1*l2)


l1 = [ get_l( ufloat(100,1), ufloat(64.9,0.1) , ufloat(0.145,0.005) ), \
       get_l( ufloat(100,1), ufloat(22,0.1), ufloat(0.150,0.005) ) ]
l1.append(get_err(100, 64.9, 0.145))

factor = l1[1] / l1[0]

l2 = list()
l2.append(get_l( ufloat(100,1), ufloat(22,0.1), ufloat(0.135,0.005) ) )
l2.append(l2[0]*factor)


l3 = list()
l3.append(get_l( ufloat(100,1), ufloat(22,0.1), ufloat(0.285,0.005)))
l3.append(l3[0]*factor)

print("hierro solido: ",l1[0],l1[1] )
print("Nucleo laminado: ",l2[0],l2[1] )
print("Sin nucleo",l3[0],l3[1] )


h = list()

h.append( get_m_vacio( ufloat(18.4,0.1) , ufloat(0.150,0.005) ) )
h.append(get_m_vacio(ufloat(20.5,0.1), ufloat(0.150,0.005) ))
h.append(get_m_vacio(ufloat(5.2,0.1),ufloat(0.285,0.005)))

h.append(get_m(ufloat(100,1), ufloat(0.145,0.005), ufloat(0.055,0.001), ufloat(64.9,0.1), 200, l1[1]))
h.append(get_m(ufloat(100,1), ufloat(0.150,0.005), ufloat(0.067,0.001), ufloat(64.9,0.1), 200, l2[1]))
print("----------")


print("Hierro solido, vacio ",h[0] , get_k(h[0],l1[0],l1[1]))

print("Nucleo laminado, vacio ",h[1] , get_k(h[1],l2[0],l2[1]))
print("Sin nucleo, vacio ",h[2] , get_k(h[2],l3[0],l3[1]))

print("hierro solido, carga conectada" , h[3] , get_k(h[3],l1[0],l1[1]) )
print("nucleo laminado ,carga conectada" , h[4] , get_k(h[4],l2[0],l2[1]) )
