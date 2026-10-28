# Figure: maximum airframe mass keeping the powered version below 70 kg vs height gained under power.
# Data: data/max_airframe_A70.csv, digitised from the Rev. 0.5 chart (source data file
# datos/celula_max_A70.csv not available); values at 200, 400 and 600 m are those of Table A1.
import sys, pathlib, csv
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[3] / "template" / "charts"))
import alimoche_charts as ac

rows = list(csv.reader(open(pathlib.Path(__file__).parents[1] / "data" / "max_airframe_A70.csv", encoding="utf-8")))
head, data = rows[0], rows[1:]
h = [float(r[0]) for r in data]
fig, ax = ac.figure(160, 80)
ax.axhspan(60, 65, color="#e6e6e6", zorder=0, linewidth=0)
ax.text(790, 64.0, "Realistic airframe 60–65 kg", ha="right", va="center", fontsize=7.5)
for i in range(1, len(head)):
    ax.plot(h, [float(r[i]) for r in data], **ac.series(i - 1), label=head[i].replace(" (kg)", ""))
ax.set_xlim(100, 800); ax.set_ylim(25, 70)
ax.set_xlabel("Height gained under power (m)"); ax.set_ylabel("Maximum airframe mass (kg)")
ac.legend(ax, loc="lower left", ncol=2, bbox_to_anchor=(0.0, 0.33))
ac.save(fig, __file__)
