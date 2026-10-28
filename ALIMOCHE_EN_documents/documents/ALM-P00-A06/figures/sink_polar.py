# Figure: sink-rate polar in still air, true airspeed, 160 kg.
import sys, pathlib
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
sys.path.insert(0, str(pathlib.Path(__file__).parent))
import numpy as np
import alimoche_charts as ac
import aero_model as m

fig, ax = ac.figure(160, 70)
for i, (name, rho) in enumerate(m.RHO.items()):
    v = np.linspace(m.vs(rho), 100 / m.KMH, 200)
    sink = np.array([m.drag(x, rho) * x / m.W for x in v])
    ax.plot(v * m.KMH, sink, **ac.series(i), label=name)
    vb, _ = m.best_glide(rho)
    ax.plot([vb * m.KMH], [m.drag(vb, rho) * vb / m.W], "o", color=ac.series(i)["color"], markerfacecolor="white", markersize=5)
ax.set_xlim(40, 100); ax.set_ylim(1, 5)
ax.set_xlabel("True airspeed (km/h)"); ax.set_ylabel("Sink rate (m/s)")
ac.legend(ax, loc="upper left")
ac.save(fig, __file__)
