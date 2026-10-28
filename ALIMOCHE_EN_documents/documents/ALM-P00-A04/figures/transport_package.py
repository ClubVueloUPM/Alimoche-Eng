# Figure: transport package on a 4.5 m platform (a) and section with two aircraft (b).
# Schematic sketch redrawn from ALM-P00-A04 Rev. 0.2 (Spanish original), dimensions in metres.
import sys, pathlib
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
import alimoche_charts as ac
from matplotlib.patches import Rectangle, Circle, FancyArrowPatch

fig, (ax, bx) = ac.figure(160, 62, cols=2, gridspec_kw=dict(width_ratios=[2.6, 1]))
for a in (ax, bx):
    a.set_aspect("equal"); a.axis("off"); a.grid(False)
K = dict(color="black", linewidth=0.8)
D = dict(color="black", linewidth=0.7, linestyle=(0, (4, 2)))
fs = 7

def dim(a, x0, y0, x1, y1, text, off=(0, -0.22), ha="center"):
    a.add_patch(FancyArrowPatch((x0, y0), (x1, y1), arrowstyle="<->", mutation_scale=6, linewidth=0.5, color="black"))
    a.text((x0 + x1) / 2 + off[0], (y0 + y1) / 2 + off[1], text, ha=ha, va="center", fontsize=fs)

# (a) elevation
ax.text(-4.3, 3.2, "(a) Elevation", fontsize=7.5, weight="bold")
car_x = [-4.2, -4.2, -3.4, -2.8, -1.4, -0.9, -0.5, -0.5, -4.2]
car_y = [0.25, 0.85, 0.95, 1.45, 1.45, 0.95, 0.85, 0.25, 0.25]
ax.plot(car_x, car_y, **K)
for cx in (-3.5, -1.2):
    ax.add_patch(Circle((cx, 0.25), 0.28, fill=False, **K))
ax.plot([-0.5, 0.0], [0.55, 0.55], **K)                                        # drawbar
ax.add_patch(Rectangle((0.0, 0.5), 4.5, 0.12, fill=False, **K))                # platform
ax.add_patch(Circle((2.6, 0.25), 0.25, fill=False, **K))
ax.add_patch(Rectangle((0.0, 0.62), 6.0, 1.8, fill=False, **D))               # package envelope
ax.text(3.0, 1.62, "Package (cradle + fuselage + wings)\n+ PMF shell", ha="center", va="center", fontsize=fs)
ax.add_patch(Rectangle((5.92, 0.75), 0.16, 0.3, fill=True, color="black"))
ax.text(5.75, 0.9, "V-20", ha="right", va="center", fontsize=6.5)
dim(ax, 0.0, 2.75, 6.0, 2.75, "Longest part ≤ 6.0 m (commercial tube length)", off=(0, 0.22))
dim(ax, 0.0, -0.25, 4.5, -0.25, "Platform 4.5 m", off=(0, -0.24))
dim(ax, 4.5, -0.25, 6.0, -0.25, "Overhang 1.5 m", off=(0.2, -0.24))
dim(ax, 6.45, 0.0, 6.45, 2.42, "≈ 2.4 m above\nroad surface", off=(0.15, 0), ha="left")
ax.set_xlim(-4.4, 8.0); ax.set_ylim(-0.75, 3.4)

# (b) section with two aircraft
bx.text(-0.15, 3.2, "(b) Section: two aircraft", fontsize=7.5, weight="bold")
bx.add_patch(Rectangle((0.0, 0.5), 2.1, 0.12, fill=False, **K))
for cx in (0.35, 1.75):
    bx.add_patch(Circle((cx, 0.25), 0.25, fill=False, **K))
for x0 in (0.05, 1.05):
    bx.add_patch(Rectangle((x0, 0.62), 1.0, 1.8, fill=False, **D))
    bx.add_patch(Rectangle((x0 + 0.25, 0.85), 0.5, 1.3, fill=False, color="black", linewidth=0.5))
dim(bx, 0.0, 2.75, 2.1, 2.75, "Platform 2.0–2.1 m", off=(0, 0.22))
dim(bx, 0.05, -0.25, 1.05, -0.25, "≤ 1.0 m", off=(0, -0.24))
dim(bx, 1.05, -0.25, 2.05, -0.25, "≤ 1.0 m", off=(0, -0.24))
bx.set_xlim(-0.2, 2.3); bx.set_ylim(-0.75, 3.4)
ac.save(fig, __file__)
