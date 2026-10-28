# Figure: provisional parabolic drag polar of the complete aircraft.
import sys, pathlib
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
sys.path.insert(0, str(pathlib.Path(__file__).parent))
import numpy as np
import alimoche_charts as ac
import aero_model as m

cl = np.linspace(0, m.CLMAX, 200)
fig, ax = ac.figure(160, 70)
ax.plot(cl, m.CD0 + m.K * cl**2, **ac.series(0), label="Total drag coefficient")
ax.plot(cl, m.K * cl**2, **ac.series(1), label="Induced drag coefficient")
ax.plot(cl, np.full_like(cl, m.CD0), **ac.series(2), label="Zero-lift drag coefficient")
_, c = m.best_glide(1.225)
ax.plot([c], [m.CD0 + m.K * c**2], "o", color="black", markerfacecolor="white", markersize=5)
ac.annotate(ax, "Best glide", (c, m.CD0 + m.K * c**2), (c - 0.35, 0.135))
ax.set_xlim(0, 1.5); ax.set_ylim(0, 0.16)
ax.set_xticks([0, 0.3, 0.6, 0.9, 1.2, 1.5]); ax.set_yticks([0, 0.04, 0.08, 0.12, 0.16])
ax.set_xlabel("Lift coefficient CL (–)"); ax.set_ylabel("Drag coefficient CD (–)")
ac.legend(ax, loc="upper left")
ac.save(fig, __file__)
