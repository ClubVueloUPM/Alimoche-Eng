"""Provisional aerodynamic model of ALM-P00-A06 (shared by the chart scripts)."""
import math
G = 9.80665
M = 160.0                 # kg, maximum calculation mass
W = M * G                 # N
S = 10.0                  # m², wing area
AR = 10.0
E = 0.70                  # Oswald factor
CD0 = 0.055
K = 1 / (math.pi * AR * E)
CLMAX = 1.50
ETA_P = 0.70              # propulsive efficiency
RHO = {"ISA sea level": 1.225, "Lillo 40 °C": 1.04}
KMH = 3.6

def vs(rho, w=W, clmax=CLMAX):
    return math.sqrt(2 * w / (rho * S * clmax))

def cl(v, rho, w=W):
    return w / (0.5 * rho * v * v * S)

def drag(v, rho, w=W):
    c = cl(v, rho, w)
    return 0.5 * rho * v * v * S * (CD0 + K * c * c)

def best_glide(rho, w=W):
    c = math.sqrt(CD0 / K)
    v = math.sqrt(2 * w / (rho * S * c))
    return v, c
