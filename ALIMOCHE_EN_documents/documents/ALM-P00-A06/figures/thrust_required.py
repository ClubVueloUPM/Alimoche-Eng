# Figure: hypothetical thrust required, 160 kg, Lillo density.
import sys, pathlib
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
sys.path.insert(0, str(pathlib.Path(__file__).parent))
import numpy as np
import alimoche_charts as ac
import aero_model as m

rho = m.RHO["Lillo 40 °C"]
v = np.linspace(m.vs(rho), 100 / m.KMH, 200)
d = np.array([m.drag(x, rho) for x in v])
fig, ax = ac.figure(160, 70)
for i, (r, lab) in enumerate([(0, "Level flight"), (1, "Climb 1 m/s"), (2, "Climb 2 m/s")]):
    ax.plot(v * m.KMH, d + m.W * r / v, **ac.series(i), label=lab)
ax.set_xlim(50, 100); ax.set_ylim(0, 500)
ax.set_xlabel("True airspeed (km/h)"); ax.set_ylabel("Thrust (N)")
ac.legend(ax, loc="upper right")
ac.save(fig, __file__)
