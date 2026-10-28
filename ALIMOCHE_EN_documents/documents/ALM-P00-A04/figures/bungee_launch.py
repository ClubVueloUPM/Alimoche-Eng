# Figure: bungee launch on level ground, tensioned with tackles (plan view, not to scale).
# Schematic sketch redrawn from ALM-P00-A04 Rev. 0.2 (Spanish original).
import sys, pathlib, math
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
import alimoche_charts as ac
from matplotlib.patches import Arc, FancyArrowPatch

fig, ax = ac.figure(160, 72)
ax.set_aspect("equal"); ax.axis("off"); ax.grid(False)
fs = 7.5
a = math.radians(20); L = 10.0
ends = [(L * math.cos(a), s * L * math.sin(a)) for s in (1, -1)]
for (x, y) in ends:
    ax.plot([0, x], [0, y], color="black", linewidth=2.2, solid_capstyle="butt")   # rubber arm
    ax.plot(x, y, marker="x", color="black", markersize=7, mew=1.2)                # stake
    # rope back from the tackle to the crew
    sgn = 1 if y > 0 else -1
    ax.plot([x, x - 1.6], [y, y + sgn * 0.15], color="black", linewidth=0.7)
    for k in range(3):
        ax.plot(x - 1.4 - 0.35 * k, y + sgn * (0.13 + 0.03 * k), "o", color="black", markersize=3)
# aircraft at the vertex: wing (vertical), fuselage, tail anchor
ax.plot([0, 0], [-1.0, 1.0], color="black", linewidth=1.6)
ax.plot([-1.6, 0.25], [0, 0], color="black", linewidth=1.2)
ax.plot([-1.6, -1.6], [-0.35, 0.35], color="black", linewidth=1.2)
ax.plot(-2.3, 0, marker="x", color="black", markersize=7, mew=1.2)
ax.plot([-2.3, -1.6], [0, 0], color="black", linewidth=0.7, linestyle=(0, (3, 2)))
ax.add_patch(Arc((0, 0), 5.0, 5.0, theta1=-20, theta2=20, linewidth=0.6))
ax.text(2.8, 0.55, "2 × 20°", fontsize=fs)
# labels
ax.text(ends[0][0] - 1.4, ends[0][1] + 0.55, "2–3 people pulling the rope", fontsize=fs, ha="center")
ax.text(ends[0][0] + 0.35, ends[0][1] - 0.7, "Stake +\n3:1 or 4:1 tackle", fontsize=fs, va="top")
ax.text(4.6, 2.35, "Bungee 40 m → ≈ 75–80 m stretched", fontsize=fs, rotation=20, ha="center", va="bottom", rotation_mode="anchor")
ax.text(-0.15, 1.2, "Wingtip (1 person)", fontsize=fs, ha="right")
ax.text(-2.5, -0.5, "Tail anchor\nwith release", fontsize=fs, ha="left", va="top")
ax.annotate("Open nose hook", xy=(0.25, 0), xytext=(-0.6, -2.3), fontsize=fs,
            arrowprops=dict(arrowstyle="-", linewidth=0.5, color="black"))
ax.add_patch(FancyArrowPatch((6.3, 0), (8.6, 0), arrowstyle="->", mutation_scale=9, linewidth=0.8, color="black"))
ax.text(7.45, 0.25, "Launch", fontsize=fs, ha="center")
ax.set_xlim(-3.4, 11.8); ax.set_ylim(-4.0, 4.4)
ac.save(fig, __file__)
