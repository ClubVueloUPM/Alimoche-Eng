#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-P00-A04",
  title: "Operations study",
  doctype: "Supporting study",
  revision: "0.2",
  status: "Draft",
  created: "28/10/2026",
  author: "Augusto Aizpún",
  checker: "Pending",
  approved-by: "Pending",
  contents: true,
)

= Purpose and scope

This study describes how ALIMOCHE is transported, launched, assembled and stored in an optimistic operating scenario, and turns that description into values for ALM-P00: ASM-01, REQ-04, REQ-08, REQ-14 and CRIT-03. It does not choose a configuration: it sets the framework within which P01 compares proposals. Inputs: ALM-00 Rev. 0.3, «Objective of the P00 studies» (23/10/2026) and ALM-P00-A06 Rev. 0.2 [12].

The figures are calculated on the reference aircraft of the aerodynamic estimate ALM-P00-A06 [12], not on a design (@tab:reference). The SG-38 is used for comparison (#qty(16, "m²"), #qty(100, "kg") empty, #qty(210, "kg") maximum, glide ratio 10, VNE #qty(115, "km/h")) [6].

#figure(
  table(
    columns: (1fr, 34mm, 1fr),
    align: (left, right, left),
    [Parameter], [Calculation value], [Remark],
    [Empty mass], [#qty(70, "kg")], [ALM-00],
    [Pilot], [#qty(90, "kg")], [ALM-00],
    [Maximum mass (MTOW)], [#qty(160, "kg")], [70 + #qty(90, "kg")],
    [Span / chord], [#num(10.0, dec: 1) m / #qty(1.0, "m", dec: 1)], [A06; rectangular wing],
    [Wing area], [#qty(10.0, "m²", dec: 1)], [A06; wing loading #qty(16, "kg/m²")],
    [CLmax], [#num(1.5)], [A06, central case (range 1.2–1.5)],
    [Maximum glide ratio], [≈ 10], [A06 (CD0 = #num(0.055, dec: 3); e = #num(0.70, dec: 2))],
  ),
  caption: [Reference aircraft for the calculation.],
) <tab:reference>

= Operating base (ASM-01) <sec:base>

The base is Lillo aerodrome (LELT), 1 km from the village and about #qty(100, "km") south of Madrid (A-4, exit 81 La Guardia–Lillo). Elevation #qty(681, "m"), asphalt runway 12/30 of 750 × #qty(18, "m"), frequency #qty(123.375, "MHz", dec: 3), gliding activity of the Real Aeroclub de Toledo [1]. These are secondary-source data: they must be confirmed against the current aeronautical publication and with the aero club, together with the grass area available for operating without occupying the active runway.

*Critical condition: #qty(40, "°C").* At #qty(681, "m") and #qty(40, "°C") the density is #qty(1.039, "kg/m³", dec: 3) (σ = #num(0.85, dec: 2)), equivalent to a density altitude of about #qty(1700, "m"). At the same mass, all true airspeeds rise by 9 % compared with the standard atmosphere at sea level, and the energy that must be given to the aircraft at launch by 18 %. For the reference aircraft, the stall speed goes from 47 to #qty(51, "km/h") and the take-off speed (1.2 Vs) from 56 to #qty(61, "km/h") [12]. At that temperature there are also strong thermals and dust devils from midday, and the ground crew suffers from the heat: summer operation is concentrated in the early morning (@sec:day).

*Coexistence with the aerodrome.* ALIMOCHE flies a few metres above the ground and does not enter the circuit, but it occupies a strip of about #qty(150, "m") during each launch. The proposal is to operate on a strip parallel to the runway agreed with the aero club, with a person on the ground listening out on the frequency, and on days or time slots with little traffic.

= Road transport (REQ-08) <sec:transport>

*Legal framework.* The General Traffic Regulations (art. 15) allow an indivisible load (beams, posts, tubes) on a goods vehicle to project up to one third of the vehicle length at each end if the vehicle is 5 m long or less, and up to 2 m at the front and 3 m at the rear if it is longer. Sideways it may project #qty(0.40, "m", dec: 2) on each side without exceeding #qty(2.55, "m", dec: 2) overall width. The part projecting at the rear carries the V-20 sign and, at night, a red light [2]. A light trailer (MAM ≤ #qty(750, "kg")) needs no registration certificate, own number plate or separate insurance, and is driven with a category B licence [3]. Above #qty(750, "kg") the trailer has its own documents, and the B licence is valid only if the combination does not exceed #qty(3500, "kg") (B96 up to #qty(4250, "kg"); otherwise BE). With a trailer, the speed limit is #qty(90, "km/h") on dual carriageways and #qty(80, "km/h") on single carriageways [4].

*Consequence: 6 m.* With a #qty(4.5, "m") platform, a 6 m part projects #qty(1.5, "m") at the rear. This complies in both cases: one third of #qty(4.5, "m") is #qty(1.5, "m"), and a trailer with a drawbar longer than 5 m allows up to 3 m. In addition, 6 m is the usual commercial length of aluminium tube bars (to be confirmed in A03), so a 6 m spar needs no splices. The proposal is that the longest part shall not exceed #qty(6.0, "m", dec: 1). The overhang is always at the rear, because at the front the load interferes with the car when turning. It remains to be confirmed with A01 that a wing or a fuselage counts as an indivisible load. @tab:trailers compares the two trailer options.

#figure(
  table(
    columns: (25mm, 1fr, 1fr),
    align: (left, left, left),
    [], [Car-transporter platform (hire)], [Light boat trailer (purchase)],
    [Useful size], [4.0–5.0 × 2.0–2.1 m [11]], [Central beam; 4.0–6.5 m overall length [5]],
    [MAM], [1300–3500 kg, braked], [500–750 kg],
    [Documents], [Own registration, insurance and roadworthiness test (the hirer's)], [Uses the car's registration and insurance],
    [Licence], [B if the combination ≤ #qty(3500, "kg"); B96 or BE], [B],
    [Aircraft per trip], [1 or 2 (@fig:transport b)], [1],
    [Cost], [Daily hire; no investment], [One-off purchase; e.g. 500 kg and 4.0 m: 1105 € + VAT [5]],
    [Adaptation], [The cradle rests on it and is tied to its rings; nothing fixed], [Mounting frame bolted to the cross-members, without rollers; stays fitted],
  ),
  caption: [Trailer options.],
) <tab:trailers>

*Proposed use.* The light boat trailer is the one to buy: it is cheap, has no documents of its own and accepts a fixed mounting frame for the cradle, so it remains dedicated to ALIMOCHE. It must have at least #qty(4.5, "m") of useful length so as not to exceed #qty(1.5, "m") of overhang and, with about 200–250 kg of load (aircraft, cradle and shell), it has ample capacity. The car-transporter platform is for hire on occasional days, when two aircraft must be carried or the own trailer is not available. For this reason the cradle cannot depend on a particular trailer: it must be possible to tie it down to any flat platform with straps.

*Package.* Each aircraft travels folded on its cradle (@sec:storage), supported at the hard points and with the wings on edge. The straps are tied to the cradle, never to the aircraft. Road vibration is a fatigue case: no support may bear on fabric or ribs. Proposed envelope per aircraft: 6.0 × 1.0 × #qty(1.8, "m", dec: 1) (length × width × height above the platform). With that width, two aircraft fit on a 2.0–2.1 m platform, and the overall height is about #qty(2.4, "m", dec: 1) above the road, well below the 4 m limit. With the A06 wing (10 × 1 m), each half-wing is about 5 m long, within the envelope. No part moved by hand shall exceed #qty(50, "kg") (two people). @fig:transport shows the package.

#figure(
  image("figures/transport_package.svg", width: 100%),
  caption: [Transport package on a #qty(4.5, "m") platform (a) and section with two aircraft (b). Dimensions in metres. Schematic sketch redrawn from Rev. 0.2.],
) <fig:transport>

= Bungee launch (REQ-04) <sec:bungee>

This is the only mandatory launch method. The bungees form a V with the aircraft at the vertex [10]; the central ring sits on an open nose hook, which releases it by itself when the bungee slackens, and the tail is held by an anchor with a release. The bungee is an energy store: what limits the height is not the people but the energy stored in it. The proposal is therefore to tension calmly rather than by running: each arm is stretched with a pulley tackle (3:1 or 4:1) anchored to a stake, and the crew pull the rope at a steady walk. A few people can store all the energy needed; they just take longer and walk further. With the bungee tensioned and the arms fixed to their stakes, the launch master releases the tail: the aircraft accelerates over about 35–40 m, takes off, gains height with the surplus speed and glides straight to the ground (@fig:bungee). The main case is a launch on level ground with no wind; from a hill of height H, that height is added and the glide grows by about 10·H.

#figure(
  image("figures/bungee_launch.svg", width: 100%),
  caption: [Bungee launch on level ground, tensioned with tackles (plan view, not to scale). Schematic sketch redrawn from Rev. 0.2.],
) <fig:bungee>

*Calculation.* It is an energy balance, on level ground, with no wind, at #qty(40, "°C") at Lillo, with #qty(160, "kg") and the A06 wing (S = #qty(10, "m²"), C#sub[L,max] = #num(1.5)). The release speed $V_r$ is sought which, after converting the surplus into height, leaves the aircraft at a height $h$ flying at 1.2 $V_s$ (@eq:vs to @eq:crew):

$ V_s = sqrt((2 m g) / (rho S C_(L,max))) = 51 "km/h", quad V_1 = 1.2 V_s = 61 "km/h" $ <eq:vs>
$ V_r^2 = V_1^2 + (2 g h) / eta_z $ <eq:vr>
$ E_k = 1/2 m V_r^2 $ <eq:ek>
$ E_f = 1/2 mu m g d, quad d approx epsilon L_0 $ <eq:ef>
$ E_g = 2 dot 1/2 (T epsilon)(epsilon L_0) = T L_0 epsilon^2 $ <eq:eg>
$ eta_g E_g = E_k + E_f $ <eq:balance>
$ n = (T epsilon) / (k F_p), quad s = k epsilon L_0, quad t = (E_g \/ 2) / (n P) $ <eq:crew>

where $eta_z = 0.75$ is the efficiency of converting speed into height; $mu = 0.35$ is the friction of the skid on grass, applied over half the run because lift unloads the skid; $L_0$ is the unstretched bungee length of each arm; $epsilon$ the elongation (1 = 100 %); $T$ the tension of one arm at 100 %, with linear bungee; $eta_g = 0.8$ covers the bungee hysteresis; $k$ is the mechanical advantage of the tackle (3 or 4); $F_p = 250$ N is the sustained pull of one person; $s$ the distance the crew walk pulling the rope; and $P = 75$ W the sustained power per person. The force on the hook is obtained as $F = 2 T epsilon cos 20 degree$. Results are given in @tab:bungee.

#figure(
  table(
    columns: (1fr, 46mm, 46mm),
    align: (left, left, left),
    [], [Case A: 5–10 m], [Case B: 10–15 m],
    [Bungee per arm], [L#sub[0] = 40 m; T = #qty(1.75, "kN") at 100 %], [L#sub[0] = 40 m; T = #qty(2.25, "kN") at 100 % (more strands)],
    [Elongation ε], [90–100 %], [90–95 %],
    [Energy in the bungee E#sub[g] (2 arms)], [57–70 kJ], [73–81 kJ],
    [Friction losses E#sub[f]], [10–11 kJ], [10–11 kJ],
    [Release speed V#sub[r]], [76–85 km/h], [89–94 km/h],
    [Acceleration run d], [36–40 m], [36–38 m],
    [Height reached h], [≈ 6–10 m], [≈ 12–15 m],
    [People per arm (tackle)], [2 (4:1 tackle)], [3 (3:1 tackle)],
    [Crew walking distance s], [145–160 m], [110–115 m],
    [Tensioning time t], [≈ 3.5 min], [≈ 3 min],
    [Hook force / acceleration], [3.0–3.3 kN / 1.7–1.9 g], [3.8–4.0 kN / 2.3–2.4 g],
  ),
  caption: [Bungee launch on level ground, no wind, at #qty(40, "°C") and #qty(160, "kg").],
) <tab:bungee>

*Reading.* Height is regulated by the amount of bungee and by how far it is stretched. With the same 40 m length, adding strands (from 1.75 to #qty(2.25, "kN") per arm) moves from 6–10 m to 12–15 m. Lower elongation gives lower hops for the first sessions: in case A, at 80 % it stays at about 2 m. People do not limit the energy. If there are few, more tackle advantage or a manual ratchet winch per arm is used, at the cost of more distance or more time. Skid friction losses take about 15 % of the bungee energy; a wheel or a sliding skid would reduce them greatly. Any headwind improves all the values. The release speeds remain below the reference VNE (#qty(115, "km/h")), although case B approaches #qty(95, "km/h"). The result is sensitive to C#sub[L,max]: if it were #num(1.2), as A06 allows, V#sub[1] rises to #qty(69, "km/h") and of the order of 10–15 % more bungee would be needed.

*Loads, roughly.* The hook forces and accelerations of @tab:bungee are a first order of magnitude, from a simplified calculation: linear bungee, without aircraft or bungee dynamics. They serve as a reminder that the launch is a load case for the nose and the forward fuselage structure, of the order of 2–2.5 times the weight (#qty(1569, "N")). Their design values are set by the calculation phase with A01. The bungee is chosen by tensile test, with a margin of at least 2 on breaking, and is checked every day because it ages in the sun.

*Proposed crew and limits.* Each launch needs a launch master, who releases the tail; one person at the wingtip; and 2–3 people per arm on the tackles. In total, 6 people in case A and 8 in case B, not counting the pilot. With one winch per arm, 4 are enough. Proposed wind limits: headwind from 0 to #qty(6, "m/s"), crosswind component #qty(2, "m/s") at most, gusts no more than #qty(3, "m/s") above the mean and no dust devils in sight.

= Future launch methods (REQ-14) <sec:future>

They are not mandatory, but the design must not prevent them. Each asks something different of the aircraft (@tab:methods).

*Car tow.* The car pulls the aircraft with a 150–200 m rope along the runway or a grass strip, at 60–75 km/h airspeed. Before release, the glider climbs above and somewhat behind the car [7]. The height depends on how far the car can run: in 750 m, with the rope laid out ahead and a margin for braking, it covers about #qty(450, "m"). With a climb gradient of 1:4 to 1:5, 50–90 m is reached. It requires a CG hook with automatic back-release, a calibrated weak link, communication with the driver and a clear runway.

*Winch.* The drum is fixed at one end and the cable occupies the whole strip; that is the difference from the car, which needs room to run. For reference, a #qty(1500, "m") strip gives about #qty(1500, "ft") (≈ 0.3 times the length) with modern gliders [8]. A primary glider, slow and with a low permissible cable force, will achieve less (0.15–0.25). With 600–700 m of cable at Lillo, 100–180 m is expected. It uses the same hook as the car tow, with higher cable forces, and requires a winch and a trained operator.

*Aerotow.* It is the only launch that allows real thermal soaring (300–600 m). The problem is speed: the usual tugs fly faster than a primary glider allows. A slow, ultralight-type tug would be needed, and an aircraft designed for a tow speed of at least #qty(100, "km/h"), with the SG-38 VNE (#qty(115, "km/h")) as reference [6]. It is hooked to a nose hook (closing, not open) with a rope of at least #qty(60, "m") [7].

#figure(
  table(
    columns: (20mm, 28mm, 23mm, 20mm, 18mm, 1fr),
    align: (left, left, left, left, left, left),
    [Method], [Rope / cable], [Speed], [Expected height], [People], [Demands on the aircraft],
    [Bungee on level ground], [2 × 40 m of bungee + tackle], [Release at 75–95 km/h], [5–15 m], [6–8], [Open nose hook; 3.0–4.0 kN],
    [Car], [150–200 m], [60–75 km/h], [50–90 m], [3–4], [CG hook with automatic release; weak link],
    [Winch], [600–700 m], [60–80 km/h], [100–180 m], [4–5], [Same, with more load on the hook],
    [Aerotow], [≥ 60 m], [≈ 80–100 km/h], [300–600 m], [3 + tug], [Nose hook; V#sub[T] ≥ #qty(100, "km/h")],
  ),
  caption: [Comparison of launch methods (Lillo, 750 m runway).],
) <tab:methods>

The weak-link rating and the hook load cases are set with A01, taking CS-22 as reference. To keep doors open it is enough to reserve the two hook points (nose and centre of gravity) with a load path to the main structure, and not to set a VNE below the one indicated without an explicit prior decision.

= Assembly and disassembly (CRIT-03) <sec:assembly>

Proposed target: 2 people, 30 minutes and basic hand tools only (spanners, screwdriver, pliers). To achieve this, field joints use captive pins or standard fasteners with visible locking, controls are connected so that correct connection can be seen at a glance, and the cable tensioners are adjusted in the workshop and sealed, not touched in the field. Resting the aircraft on the cradle while the wings are fitted allows two people to do it. After each assembly, the other person checks the aircraft with a checklist. P01 scores each proposal with the scale of @tab:assembly.

#figure(
  table(
    columns: (1fr, 30mm, 30mm, 30mm),
    align: (left, left, left, left),
    [Aspect], [3 (good)], [2 (acceptable)], [1 (poor)],
    [Assembly time], [≤ 30 min], [30–45 min], [> 45 min],
    [People], [2], [3], [≥ 4],
    [Tools], [None or basic hand tools], [Some special tool], [Workshop or adjustment tools],
    [Critical joints assembled in the field], [≤ 6], [7–12], [> 12],
    [Joint check], [Visible without disassembly], [Must be touched], [Must be adjusted or measured],
    [Heaviest part], [≤ 25 kg], [25–50 kg], [> 50 kg],
  ),
  caption: [Assembly scale for CRIT-03.],
) <tab:assembly>

= Storage <sec:storage>

*The cradle.* It is the core of the whole storage and transport system: a jig that holds the glider once folded and gives it a stable base on which it travels and is stored. It has wheels to move the assembly by hand: load it onto the trailer by ramps, move it in and out of the hangar and take it to the assembly point. It also has legs or chocks to keep it fixed on the ground, tie-down points for straps, the supports for the cover and the interface with the frame of the own trailer. Its supports coincide with the aircraft's hard points and must allow the wings to be fitted and removed without taking the aircraft off it. As it depends on the final folded geometry, it is almost a small project in itself. Only its functions are set here; it is designed once the glider exists.

*In the hangar: folding.* Assembled, an aircraft of 10 m span and about 6 m length occupies about #qty(60, "m²"). The target is for the wings to fold back alongside the fuselage, and for the aircraft to sit on its cradle in about 6.3 × 2 m (≈ #qty(13, "m²")). It can then be moved inside the hangar without dismantling anything.

*Outdoors: fabric cover.* A simple polyester or PVC tarpaulin, breathable and with a soft lining where it touches the aircraft, tied to the cradle and to the ground. It protects the aircraft fabric from the sun, which degrades it. Condensation must be watched, and the cover must not rub or bear on the control surfaces.

*Rigid PMF shell.* «Poor Man's Fiberglass» is a cheap composite skin: foam board (20–30 mm extruded polystyrene) covered with cotton canvas bonded with PVA glue (Titebond II type) or diluted acrylic paint. When cured it forms a hard shell that gives the foam the strength it lacks. It is finished with primer and exterior paint, and repaired with the same materials [9]. For ALIMOCHE a shell of about 6.2 × 1.1 × 1.9 m (≈ #qty(35, "m²")) on a light frame is proposed, divided into four sections of about #qty(1.55, "m"). At about #qty(2, "kg/m²") it would weigh about #qty(70, "kg"), plus 15–20 kg of frame (about #qty(20, "kg") per section, which two people can move), and would cost less than 1000 € in materials. Mass and cost are own estimates that must be validated with a sample.

The shell is anchored to the cradle supports and has two uses. On the road it acts as a fairing: at #qty(90, "km/h") the dynamic pressure is about #qty(375, "Pa"), of the order of #qty(0.5, "kN") of drag. In the field, the cradle is lowered from the trailer on its wheels and chocked, and the shell turns the assembly into the aircraft's own hangar, which also gives the crew shade at #qty(40, "°C"). It must be anchored to the ground: a #qty(20, "m/s") side gust on its #qty(10, "m²") of side area gives about #qty(2.8, "kN"), more than twice the stabilising moment of the assembly, so without pegs or ballast it overturns. Other risks: the foam burns (no flames or heat sources nearby), the inside heats up in the sun (white paint and ventilation) and hail dents it.

#block(breakable: false)[
= Typical summer day <sec:day>

@tab:day gives the schedule of a typical day with bungee launches.

#figure(
  table(
    columns: (24mm, 1fr),
    align: (left, left),
    [Time], [Activity],
    [07:00], [Departure from the club with the trailer (≈ 100 km; ≈ 1 h 30 min at 80–90 km/h).],
    [08:30], [Arrival at Lillo. Contact with the aero club, briefing, survey of the strip and the wind.],
    [08:45], [Lower the cradle, remove the shell and assemble the aircraft (2 people, ≤ 30 min) while the rest drive stakes and lay out the bungees. Cross-inspection.],
    [09:30–12:00], [Launches. Cycle of 12–15 min (tension ≈ 3 min, launch, return the aircraft 50–150 m on the cradle or by hand): 10–12 flights. Crew of 6–8 people in turns, water and shade under the shell.],
    [12:00], [End due to heat (above 32–35 °C, thermals and dust devils).],
    [12:15], [Disassembly and loading, or aircraft in its shell if there is an evening session (19:00–21:00).],
    [14:00], [Return.],
  ),
  caption: [Typical day with bungee launches.],
) <tab:day>
]

= Annual use and service life (input for phase 2) <sec:life>

Optimistic scenario: 20–25 days a year with 10–12 launches each, that is, 200–300 launches a year. Over a 10-year life this adds up to about 2500–3000 launch and skid-landing cycles and about 250 transport, assembly and disassembly cycles. Flight hours, on the other hand, are few: with flights of 10–30 s they do not reach 25 h in ten years with bungees. Fatigue and wear depend on launch, landing and transport cycles, not on hours. Inspections are scheduled by cycles, and pins, assembly fittings, skid and bungees are treated as replacement parts.

= Outputs for P00

@tab:outputs lists the values this study delivers to ALM-P00.

#figure(
  table(
    columns: (16mm, 1fr, 18mm),
    align: (left, left, left),
    [ID], [Proposed content], [Origin],
    [ASM-01], [Base at Lillo (LELT): elevation 681 m, runway 12/30 of 750 × 18 m. Critical condition of 40 °C: ρ = #qty(1.039, "kg/m³", dec: 3), density altitude ≈ 1700 m. Summer operation in the morning.], [@sec:base],
    [REQ-04], [Bungee launch on level ground, no wind, at 40 °C and maximum mass: reach at least 5 m height flying at 1.2 Vs, with a crew of 6–8 people and bungees tensioned with tackles. Target: 10–15 m. Open nose hook; force of the order of 2–2.5 times the weight (to be confirmed).], [@sec:bungee],
    [REQ-08], [Transport on an own light boat trailer (≤ 750 kg) or on a hired platform. Longest part ≤ 6.0 m. Envelope per aircraft 6.0 × 1.0 × 1.8 m. Handled part ≤ 50 kg. Own cradle, valid for both trailers.], [@sec:transport],
    [REQ-14], [Reserve a nose hook and a CG hook with automatic release. Do not prevent a tow speed of 100 km/h or a VNE of 115 km/h (to be closed with A05).], [@sec:future],
    [CRIT-03], [Assembly scale of @tab:assembly. Target: 2 people, 30 min, basic hand tools.], [@sec:assembly],
    [Phase 2], [Cradle project (@sec:storage). 200–300 launches a year and a 10-year life: ≈ 3000 launch and landing cycles, ≈ 250 transport and assembly cycles.], [@sec:storage, @sec:life],
  ),
  caption: [Values this study delivers to ALM-P00.],
) <tab:outputs>

#pending[Confirm the Lillo data and the use agreement with the aero club; whether a wing counts as an indivisible load (A01); tensile test of the bungee and trial of the tackle; quotes for platform hire and boat-trailer purchase; feasibility of folding (P01); PMF panel sample to validate mass and cost.]

#references((
  [Aeródromo de Lillo (Lillo aerodrome). Hispanopedia. es.hispanopedia.com/wiki/Aeródromo_de_Lillo],
  [General Traffic Regulations (RD 1428/2003), art. 15: load dimensions. Summary at tuteorica.com],
  [_Remolque ligero: qué es y normativa de la DGT_ (Light trailer: definition and DGT rules). motor.es/que-es/remolque-ligero],
  [_Velocidad máxima para los vehículos con remolque_ (Speed limit for vehicles with trailer). practicatest.com],
  [Galvanised boat trailer R00261 (MAM 500 kg, 4.0 m). lafuente.eu],
  [DFS SG 38 Schulgleiter. Wikipedia (en)],
  [FAA. _Glider Flying Handbook_, chap. 7: Launch and Recovery Procedures],
  [British Gliding Association. _Gliding strip criteria_, October 2025],
  [«Poor man's fiberglass», Teardrops n Tiny Travel Trailers forum (tnttt.com)],
  [Primary glider. Wikipedia (en)],
  [Commercial examples of car-transporter platforms: 4.10 × 2.16 m and 4.50 × 2.10 m (2700 kg), 5.00 × 2.10 m (3500 kg)],
  [ALM-P00-A06, _Preliminary aerodynamic estimate_, Rev. 0.2 (25/10/2026)],
))
