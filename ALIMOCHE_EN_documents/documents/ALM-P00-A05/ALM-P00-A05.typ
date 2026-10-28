#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-P00-A05",
  title: "Powerplant and upgrades study",
  doctype: "Supporting study",
  revision: "0.5",
  status: "In review",
  created: "26/10/2026",
  author: "Francisco Alanís Cañamero / Augusto Aizpún",
  checker: "Pending",
  approved-by: "Pending",
  contents: true,
)

#show figure.where(kind: table): set block(breakable: true)

= Purpose and scope

This study answers the question that P00 assigns to A05: what must we not prevent today so that we can grow tomorrow. Its output is the list of provisions for P01 in @sec:provisions (CRIT-07) and the tow data for REQ-14. It does not choose an engine or a configuration. Two architectures are distinguished, defined by what they represent:

- *A-70:* ALIMOCHE with an engine, within the same legal category as the light glider. Its limit is legal before it is a mass limit: less than #qty(70, "kg") at take-off without pilot or parachute, with engine, propeller and energy included.
- *A-120:* similar structure, reinforced, with an engine, assessed in another legal category (up to #qty(120, "kg")). It is another aircraft, not an upgrade of the basic ALIMOCHE, and is included only as a reference.

*A05 rule:* no provision may compromise the #qty(70, "kg") of the basic glider (REQ-01).

= Input data

@tab:inputs lists the inputs of the study and their origin.

#figure(
  table(
    columns: (32mm, 1fr, 38mm, 26mm),
    align: (left, left, left, left),
    [Input], [Value], [Source], [Class],
    [Glider mass without pilot or parachute], [< #qty(70, "kg")], [ALM-00 Rev. 0.3; RD 765/2022 art. 2.2 d)], [Requirement (REQ-01)],
    [Calculation pilot], [#qty(90, "kg") (50, 70 and #qty(90, "kg") for CG)], [ALM-00 Rev. 0.3], [Requirement],
    [Wing polar], [S = #qty(10, "m²"), AR = 10, CD0 = #num(0.055, dec: 3) (+#num(0.005, dec: 3) for installation), e = #num(0.70, dec: 2), CLmax = #num(1.5)], [ALM-P00-A02-01 Rev. 0.1], [A02 assumption],
    [Calculation condition], [Lillo at #qty(40, "°C"), ρ = #qty(1.04, "kg/m³", dec: 2)], [ALM-P00, ASM-01], [Assumption],
    [Reference speed], [#num(1.30, dec: 2) Vs (Vs = #qty(51, "km/h") at #qty(160, "kg"))], [This study], [Calculation criterion],
    [Common climb criterion], [Vz ≥ #qty(1.0, "m/s", dec: 1) at the actual mass of each system (sensitivity at #qty(0.7, "m/s"))], [This study], [Calculation criterion],
    [Battery], [#qty(165, "Wh/kg") pack, up to 10C], [Molicel P45B cell: 4.5 Ah, 45 A, 68–70 g; pack factor 0.7], [Assumption],
    [Efficiencies], [Propeller #num(0.70, dec: 2); motor and controller #num(0.90, dec: 2)], [Typical preliminary-design values], [Assumption],
    [Turbines], [90 % of catalogue thrust; catalogue consumption at full power], [Xicoy X240 and X380 data sheets], [Data and assumption],
    [Geometry for CG], [Datum at the root leading edge; chord #qty(1.60, "m", dec: 2); in-flight CG 25–30 % (400–480 mm); pilot at −251 mm], [SG-38 flight manual (BWLV)], [Similar-aircraft data],
    [ALIMOCHE airframe for CG], [#qty(62, "kg"), empty CG at #qty(1221, "mm") (balances the #qty(70, "kg") pilot at 27.5 %)], [This study], [Assumption to be confirmed in P01],
  ),
  caption: [Inputs of the study and their origin. Positions measured from the root leading edge, positive aft.],
) <tab:inputs>

= Legal consequence of adding an engine

Reading of RD 765/2022, consolidated after RD 182/2026. The conclusion belongs to A01, which must check it before 30/10/2026. @tab:legal gives the category of each architecture.

#figure(
  table(
    columns: (20mm, 1fr, 34mm, 1fr),
    align: (left, left, left, left),
    [Architecture], [Category], [How mass counts], [Requirements],
    [Basic glider], [Glider: not a ULM (art. 2.2 a); EU and national glider regulations (art. 2.3)], [Empty mass < #qty(70, "kg") (REQ-01)], [Those set by A01 for gliders],
    [A-70], [Aircraft with total take-off weight < #qty(70, "kg") without pilot or parachute: not a ULM (art. 2.2 d)], [Engine, propeller, battery, fuel and ballast count within the #qty(70, "kg")], [Fourth additional provision: harness, helmet in an open aircraft, ≤ #qty(3000, "m"), outside controlled airspace and urban areas, daytime VFR. Registration, licence and insurance: A01],
    [A-120], [Powered aircraft of light structure, ≤ #qty(120, "kg") at take-off without pilot or parachute: outside the RD (art. 2.1 d)], [As A-70, with #qty(120, "kg")], [The same limitations of the fourth additional provision. Registration, licence and insurance: A01],
    [Over #qty(120, "kg")], [Category A ULM (art. 1.2)], [—], [ULM licence, airworthiness and registration. Outside the scope of ALIMOCHE],
  ),
  caption: [Legal category of each architecture according to the reading of RD 765/2022. Pending confirmation by A01.],
) <tab:legal>
#source[RD 765/2022, consolidated text at 12/03/2026.]

Adding an engine changes the category in every case: the glider ceases to be one and becomes subject to the limitations of the fourth additional provision. Between A-70 and A-120 the difference is in permissible mass, not in requirements. A01 must also confirm that fuel and battery count (the text speaks of «total take-off weight») and that a tube-and-fabric aircraft fits «light structure».

*Preliminary answers for A01.* The parachute does not count towards the 70 and #qty(120, "kg") limits: both articles refer to the mass «less pilot and parachute», and do not distinguish between a personal parachute and an aircraft rescue system, so the latter is understood to be excluded as well. Ballast, on the other hand, does count in A-70. As a loads standard, CS-22 in its current wording raises the emergency-landing loads to 15 g forward, 7.5 g upward, 6 g sideways and 9 g downward (previously 9 / 4.5 / 3 / 4.5 g), and its AMC 22.561 links them to parachute rescue systems. These are the values proposed for the engine mount and the parachute anchorage.

= Powerplant options and maximum airframe mass

There are three options: none, sustainer (holding height after an external launch) and self-launch (climbing under its own power). In A-70 the decisive question is not which engine, but how much airframe is left after installing it. @fig:airframe summarises it with the common criterion: climb of at least #qty(1.0, "m/s", dec: 1), each system calculated at its actual mass. @tab:systems gives the values for each system.

#figure(
  image("figures/max_airframe_A70.svg", width: 100%),
  caption: [Maximum airframe mass that keeps the powered version below #qty(70, "kg"), against height gained under power. Without installation reinforcements or landing gear (see @sec:reinforcements); the grey band is the airframe that A02 considers realistic. Curves digitised from the Rev. 0.5 chart (data file not available); values at 200, 400 and 600 m are those of @tab:a1.],
) <fig:airframe>
#source[Appendix A; data/max_airframe_A70.csv.]

#figure(
  table(
    columns: (30mm, 30mm, 32mm, 1fr, 28mm),
    align: (left, left, left, left, left),
    [System], [Added mass, 60 kg airframe, 400 m (kg)], [Max. A-70 airframe at 200 / 400 / 600 m (kg)], [Added mass A-120, 100 kg airframe, 400 m (kg)], [Installed cost (excl. VAT)],
    [HPD8 (electric 8 kW)], [11.7], [61.1 / 58.4 / 54.8], [Does not climb at 1 m/s], [3800–5300 €],
    [HPD12 (electric 12 kW)], [12.9], [60.0 / 57.3 / 53.7], [15.6 (21.2 at 600 m: exceeds #qty(120, "kg"))], [4000–5600 €],
    [Atom80 (2-stroke, 11.9 kW)], [12.7], [57.5 / 57.3 / 57.0], [12.9], [2800–3800 €],
    [Xicoy X240 (240 N)], [Does not climb at 1 m/s (0.65 m/s)], [Rejected], [Rejected (0.13 m/s)], [3450–3650 €],
    [Xicoy X380 (380 N)], [7.8], [63.9 / 62.1 / 60.3], [9.7], [5100–5300 €],
  ),
  caption: [Mass, maximum airframe and cost of each system with the common climb criterion. Cost of engine, controller or ECU, battery or tank, propeller and installation; only the turbines have a complete public price list.],
) <tab:systems>
#source[Appendix A (@tab:a1 and @tab:a2).]

Conclusions for P01:

- *A-70 is almost unfeasible:* with a realistic airframe of 60–65 kg, almost no system fits in A-70. Only the X380 allows it: with the reinforcements of @sec:reinforcements, an airframe of up to #qty(61, "kg") for 200 m and #qty(59.5, "kg") for 400 m as a sustainer; with self-launch landing gear, 59 kg and #qty(57.5, "kg").  Electric and 2-stroke systems require airframes of 53–58 kg.
- *The X240 does not meet the common criterion:* even with a #qty(60, "kg") airframe it does not exceed #qty(0.65, "m/s", dec: 2). Relaxing the criterion to #qty(0.7, "m/s") does not rescue it either: it would require an airframe of #qty(50, "kg") or less. At #qty(0.7, "m/s") the electric systems get worse (the climb lasts longer) and the Atom80 and X380 hardly change.
- *Sustainer:* holding 10 minutes of level flight at #qty(170, "kg") needs ≈ #qty(8, "kg") of battery, ≈ #qty(0.6, "kg") of petrol or 5–8 kg of kerosene. The turbine, light for a short climb, stops being light as soon as the engine runs for more than a few minutes.
- *A-120:* all propeller systems fit within #qty(120, "kg") except the HPD8 (insufficient power) and the HPD12 at 600 m. It is the architecture in which a powerplant makes sense.
- *Cost:* any installed system costs between 80 % and 160 % of the glider's materials budget (3500 ± 500 €). The 2-stroke is the cheapest; the electric costs about 30 % more than an equivalent 2-stroke, according to the manufacturer itself, mainly because of the battery.

Consequently, the powerplant must not condition P01 beyond the provisions of @sec:provisions. A realistic powered ALIMOCHE is A-120, that is, another aircraft.

= Installation reinforcements <sec:reinforcements>

The fixed mass of the systems (Appendix A) includes only 1.5–1.8 kg of mounting. Installing an engine also requires a mount, transmitting the thrust and crash loads, protecting the pilot and, for self-launch, landing gear. @tab:reinforcements estimates these items.

#figure(
  table(
    columns: (1fr, 34mm, 34mm),
    align: (left, left, left),
    [Item], [Mass (kg)], [Applies to],
    [Pylon or mount: two aluminium tubes of ≈ #qty(0.8, "m"), plate and rubber mounts], [1.0–1.8], [Sustainer and self-launch],
    [Compression strut to the keel for forward crash loads], [0.3–0.6], [Sustainer and self-launch],
    [Local reinforcement of the central node and the keel], [0.3–0.6], [Sustainer and self-launch],
    [Firewall (2-stroke) or fireproof battery box (electric)], [0.2–0.5], [Sustainer and self-launch],
    [Landing gear: 200–260 mm wheel, axle, fork and skid reinforcement], [1.5–2.5], [Self-launch only],
    [Total], [1.8–3.5 (sustainer) · 3.3–6.0 (self-launch)], [],
  ),
  caption: [Estimated reinforcement mass for installing an engine. Does not include the oversizing of the primary structure for A-120.],
) <tab:reinforcements>
#source[author's estimate.]

The load cases that size these parts are three. The crash: with 15 g forward, a #qty(12.7, "kg") 2-stroke behind the pilot generates ≈ #qty(1.9, "kN") ultimate (#qty(1.1, "kN") with the former 9 g), a #qty(5.5, "kg") electric ≈ #qty(0.8, "kN") and the X380 ≈ #qty(0.6, "kN"). The engine thrust and torque, plus the propeller gyroscopic loads, which only affect propeller systems. And landing with more mass, which in self-launch falls on the landing gear. Subtracting the central values (#qty(2.65, "kg") as a sustainer and #qty(4.65, "kg") with landing gear), the maximum A-70 airframe is as shown in @tab:airframe-reinf.

#figure(
  table(
    columns: (1fr, 46mm, 46mm),
    align: (left, left, left),
    [System], [200 m: no reinforcement / sustainer / with gear (kg)], [400 m: no reinforcement / sustainer / with gear (kg)],
    [HPD8 (electric 8 kW)], [61.1 / 58.4 / 56.4], [58.4 / 55.7 / 53.7],
    [HPD12 (electric 12 kW)], [60.0 / 57.3 / 55.3], [57.3 / 54.6 / 52.6],
    [Atom80 (2-stroke 11.9 kW)], [57.5 / 54.9 / 52.9], [57.3 / 54.6 / 52.6],
    [Xicoy X380 (380 N)], [63.9 / 61.3 / 59.3], [62.1 / 59.5 / 57.5],
  ),
  caption: [Maximum airframe compatible with A-70 including installation reinforcements. The X240 is excluded in every case.],
) <tab:airframe-reinf>
#source[refuerzos.py; datos/celula_max_con_F4.csv.]

With reinforcements included, no propeller system leaves more than #qty(58.4, "kg") of airframe, and the X380 only exceeds #qty(60, "kg") as a sustainer at 200 m. The input for P01 is clear: a powered A-70 requires an airframe of 53–61 kg depending on system and mission, below what A02 considers realistic.

= CG position and volume <sec:cg>

The geometry and limits of the SG-38 flight manual are used: datum at the root leading edge, chord #qty(1.60, "m", dec: 2) and in-flight CG between 25 % and 30 % (400–480 mm). The pilot arm, −251 mm, is derived from the manual itself: a #qty(110, "kg") airframe with the empty CG at #qty(880, "mm") and a #qty(70, "kg") pilot give the normal CG of #qty(440, "mm"). For ALIMOCHE a #qty(62, "kg") airframe balanced for the same #qty(70, "kg") pilot is assumed. Ballast is placed, as on the SG-38, forward under the pedals (#qty(-1200, "mm")) or aft on the rear strut (+#qty(1500, "mm")). @tab:cg gives the result for each installation.

#figure(
  table(
    columns: (38mm, 14mm, 26mm, 25mm, 1fr),
    align: (left, right, left, left, left),
    [Installation], [Added mass (kg)], [CG with 90 / 70 / 50 kg pilot (% chord)], [Ballast with 90 kg / 50 kg pilot (kg)], [Volume and fit in an SG-38-type airframe],
    [Basic glider (no engine)], [0.0], [21.8 / 27.5 / 35.2], [7.0 aft / 5.6 fwd], [With 50–90 kg of pilot the CG moves from 22 % to 35 %: more than the SG-38 range],
    [A Electric: motor and propeller on pylon + battery under the seat], [12.9], [23.2 / 28.5 / 35.6], [4.4 aft / 6.7 fwd], [Battery ≈ 3–4 L under the seat; propeller Ø 1.0–1.2 m. Fits with pylon],
    [B Electric: motor, propeller and battery on pylon], [12.9], [26.7 / 32.5 / 40.2], [0 / 12.2 fwd], [Bulky pylon, far aft],
    [C 2-stroke on pylon + tank behind the seat], [12.7], [27.1 / 33.0 / 40.9], [0 / 12.9 fwd], [Engine ≈ 40 × 35 × 30 cm on pylon. Far aft],
    [D 2-stroke tractor in the nose], [12.7], [10.9 / 14.6 / 19.5], [33.8 aft / 10.1 aft], [Propeller in front of the pilot's feet; CG far forward. Rejected],
    [E 2-stroke pusher behind the seat (under the wing)], [12.7], [22.9 / 28.3 / 35.3], [4.9 aft / 6.4 fwd], [The propeller disc crosses the keel: forces a tail redesign],
    [F X380 turbine on pylon + tank behind the seat], [7.8], [22.7 / 28.2 / 35.5], [5.4 aft / 6.3 fwd], [Turbine Ø 13 cm; tank ≈ 5 L behind the seat. Jet over the tail],
  ),
  caption: [CG position, ballast required and volume of each installation. Permissible SG-38 range 25–30 %; «fwd» forward ballast, «aft» rear ballast; ballast counts within the #qty(70, "kg") in A-70.],
) <tab:cg>
#source[SG-38 flight manual (BWLV); centrado.py; datos/centrado.csv.]

The most important result does not depend on the engine: with a #qty(62, "kg") airframe the pilot weighs more than the aircraft, and the CG moves from 22 % to 35 % of the chord between 50 and 90 kg pilots. With the SG-38 range up to #qty(7, "kg") of ballast would be needed, just as the SG-38 needs up to four weights of #qty(2.6, "kg"). The way out is to widen the CG range to ≈ 22–35 % (tail and stability sized for it) or to provide forward and rear ballast housings. Moving the seat is not enough: about #qty(27, "cm") of travel would be needed.

As for the engine, installations A, E and F (heavy masses next to the pilot and light ones on the pylon) hardly change the balance of the basic glider. B and C, with all the mass on the pylon, require 12–13 kg of forward ballast with a #qty(50, "kg") pilot, which in A-70 is unacceptable. The engine in the nose is rejected.

= Safety by family

@tab:safety lists the main risks of each engine family and what they imply for the design.

#figure(
  table(
    columns: (24mm, 1fr, 1fr),
    align: (left, left, left),
    [Family], [Main risk], [What it implies for the design],
    [All], [Engine failure in a climb at low height], [Minimum decision height and a field within reach (A04). The aircraft must glide with the engine stopped without abrupt trim changes],
    [Propeller (electric or 2-stroke)], [Propeller close to the pilot's head, to cables and to the tail], [Clear disc with ≥ #qty(15, "cm") to structure and cables; guard if within the pilot's reach],
    [2-stroke], [Fuel and fire next to the pilot in an open airframe; vibration and fatigue], [Protected tank behind the seat, firewall, rubber mounts, no fabric or Dyneema near the exhaust],
    [Electric], [Battery fire; high-power discharge], [Fireproof, ventilated box, BMS, disconnector within the pilot's reach],
    [Turbine], [Gases at several hundred degrees; rotor above #num(100000) rpm without containment; slow response], [Jet clear of fabric, cables and tail; shield in the rotor plane; not to be used as a take-off engine],
    [All, in a crash], [Engine behind the pilot in a frontal impact], [Mount and strut for 15 g forward (current CS-22); engine mass as low and as close to the CG as possible],
  ),
  caption: [Main risks by engine family.],
) <tab:safety>
#source[own work; X240: #num(113000) rpm according to the manufacturer's data sheet; CS-22, CS 22.561.]

= Parachute, thermals and tow

*Parachute.* There are three options. The pilot's personal parachute (≈ 6–7 kg) requires leaving the aircraft and is of no use at bungee-launch heights. The rocket-deployed ballistic system is rejected for mass and cost. The recommended one is a hang-glider rescue system for the whole aircraft, anchored to the central node: for example, the Charly DIAMONDcross delta light 220 accepts #qty(220, "kg") with a mass of #qty(2.46, "kg", dec: 2), with margin against the 160–170 kg of ALIMOCHE. It is only useful above ≈ #qty(100, "m"), that is, with a tow launch. The provision is an anchorage fitting at the central node sized for the opening load given by the manufacturer and for the cases of CS 22.561, and a pilot exit free of cables. According to the reading of the legal section, it does not count within the #qty(70, "kg").

*Thermals.* With the A02 polar the minimum sink rate is #qty(1.50, "m/s", dec: 2), at the stall, and #qty(1.71, "m/s", dec: 2) at 1.2 Vs, which is the realistic speed for turning. A normal thermal requires ≲ #qty(1.0, "m/s", dec: 1). Lowering CD0 to #num(0.040, dec: 3) with a fairing gives #qty(1.46, "m/s", dec: 2); extending the span to 12 m, #qty(1.43, "m/s", dec: 2); both, #qty(1.21, "m/s", dec: 2). ALIMOCHE will not be a thermal aircraft; with improvements it could use ridge lift and strong thermals. The doors not to close are attachment points for a fairing and a wing that accepts tip extensions. A pylon and a folded propeller add ≈ +#qty(0.05, "m/s", dec: 2).

*Tow (REQ-14).* With Vs ≈ 51–52 km/h, the tow would be flown at 1.3–1.5 Vs, that is, 66–78 km/h: the maximum tow speed set by P01 must cover at least #qty(80, "km/h"). For reference, the SG-38 (Vs = #qty(40, "km/h")) allows #qty(60, "km/h") on winch or car and #qty(90, "km/h") on aerotow, with normal towing at 60–90 km/h. Car or winch tow is compatible; it needs a CG hook with safety release and a weak link. The SG-38 has, as this study proposes, a nose hook for bungees and a safety release for winch and aerotow. Its weak links are #qty(300, "daN") for aerotow and #qty(400, "daN") for winch and car at #qty(210, "kg"); scaled to 160–170 kg they give ≈ #qty(2.4, "kN") and ≈ #qty(3.2, "kN"), above the rule of thumb of 1.3 times the weight (≈ #qty(2, "kN")).

Aerotow needs a slow tug. A hang-glider tug such as the Bailey-Moyes Dragonfly, designed to tow hang gliders and ultralight gliders, stalls at #qty(31, "km/h"), climbs at #qty(51, "km/h") and cruises at #qty(74, "km/h"), a band that covers the tow speeds of ALIMOCHE. The conventional tugs of aero clubs fly the tow faster; A04 must confirm which are available and at what speeds.

*Take-off and ground roll.* A coefficient μ ≈ #num(0.05, dec: 2) is only valid for a wheel on a hard runway. @tab:a3 sweeps μ: with a wheel on grass all propeller systems take off in 100–150 m, and the X380 from 150 m; with a skid on grass (μ ≈ #num(0.3)) only the HPD12 and the Atom80, and with a 150 m run. For self-launch, therefore, a wheel is needed, and the turbine also needs a hard runway or a long run.

= List for P01 (CRIT-07) <sec:provisions>

@tab:provisions lists the provisions that P01 must not prevent. All of them fit in the basic glider without compromising the #qty(70, "kg").

#figure(
  table(
    columns: (6mm, 1fr, 28mm, 22mm, 16mm),
    align: (right, left, left, left, left),
    [\#], [Provision], [Purpose], [Architecture], [Mass (g)],
    [1], [Hard point with a load path at the central node for a pylon or mount, with holes or plate provided and an attachment point for a strut to the keel (15 g forward)], [Engine on pylon], [A-70 and A-120], [100–150],
    [2], [Free volume of ≈ 5 L under or behind the seat, near the CG, with four attachment points], [Battery, tank or ballast], [Both], [≈ 50],
    [3], [CG range of ≈ 22–35 % of chord verified with 50 and 90 kg pilots, or forward and rear ballast housings of up to ≈ 7 kg], [50–90 kg pilots and engine on pylon], [Both], [50–100],
    [4], [Disc of Ø 1.2 m behind the trailing edge, above the keel, clear of cables and tubes, with ≥ 15 cm to tail, ground and pilot's head], [Pusher propeller], [Both], [0 (geometry)],
    [5], [Cable runs for throttle, engine cut-off and power], [Controls and wiring], [Both], [≈ 20],
    [6], [Fittings for nose and CG hooks, with a load path for weak links of ≈ 2.4 kN (aerotow) and ≈ 3.2 kN (car and winch)], [Tow (REQ-14)], [Both], [150–250],
    [7], [Skid with provision for a wheel compatible with self-launch], [Self-launch], [Both], [≈ 50],
    [8], [Parachute anchorage fitting at the central node and pilot exit free of cables], [Parachute], [Both], [50–100],
    [9], [Attachment points for a fairing or nacelle and a wing that accepts tip extensions], [Thermals], [Glider], [≈ 50],
  ),
  caption: [Provisions that P01 must not prevent. Estimated masses; total ≈ 0.5–0.8 kg without ballast. Does not include the reinforcement of the primary structure for A-120, which belongs to another aircraft.],
) <tab:provisions>

= Open items

@tab:open lists the pending data, who is responsible and the due date.

#figure(
  table(
    columns: (1fr, 26mm, 30mm, 20mm),
    align: (left, left, left, left),
    [Data], [Purpose], [Responsible], [Date],
    [Confirm the reading of RD 765/2022 (@tab:legal) and the preliminary answers of the legal section; registration, licence and insurance], [Legal section and parachute], [A01 · \[name\]], [30/10/2026],
    [Tow load cases and strength of the hook fitting (CS 22.581, 22.583 and 22.585)], [Provision 6], [A01 · \[name\]], [30/10/2026],
    [Polar extrapolated to #qty(210, "kg") (A-120) and landing speed], [Appendix A], [A02 and A04 · \[name\]], [30/10/2026],
    [Available tugs and their speeds; μ measured at Lillo with skid and with wheel], [Tow; @tab:a3], [A04 · \[name\]], [30/10/2026],
    [Geiger quote (no public price list), dated prices excl. VAT and filed data sheets], [@tab:systems and @tab:a2], [A03 · \[name\]], [30/10/2026],
    [Airframe geometry, CG range, ballast system and installation reinforcements], [@sec:reinforcements and @sec:cg], [P01], [P01],
  ),
  caption: [Pending data, responsibilities and dates.],
) <tab:open>

#references((
  [ALM-00 Rev. 0.3, _Problem statement and design basis_, 12/10/2026.],
  [ALIMOCHE, _Objective of the P00 studies_, 23/10/2026.],
  [ALM-P00-A02-01 Rev. 0.1, geometry and initial polar.],
  [Royal Decree 765/2022, consolidated text at 12/03/2026. boe.es/eli/es/rd/2022/09/20/765/con/20260312],
  [Royal Decree 182/2026, of 11 March. boe.es/eli/es/rd/2026/03/11/182],
  [BWLV, _Flughandbuch für das Segelflugzeug Schulgleiter SG 38_ (SG 38 flight manual), ed. 2013/2015. bwlv.de],
  [EASA, _CS-22 Sailplanes and Powered Sailplanes_, CS 22.561 and AMC 22.561. easa.europa.eu],
  [Xicoy, X240 and X380 data sheets and price list excl. VAT. xicoyturbines.com; xicoy.com/catalog (25/10/2026).],
  [Geiger Engineering, E-Drive: products and FAQ. geigerengineering.de (26/10/2026).],
  [Vittorazi, Atom80 MY25; distributor price at aviatorppg.com (26/10/2026).],
  [Molicel INR21700-P45B: cell data (akkuteile.de) and price (nkon.nl, 26/10/2026).],
  [Finsterwalder-Charly, rescue systems for hang gliders. finsterwalder-charly.de],
  [Bailey-Moyes Dragonfly. Wikipedia (accessed 26/10/2026).],
  [Gliding New Zealand, AC 3-4 _Weak links for winch and auto launch_.],
))

#show: appendices

= Supporting calculations <app:calc>

Screening model, reproducible with modelo.py, refuerzos.py, centrado.py and rodadura.py. The drag is given by @eq:drag at the reference speed 1.30 Vs:

$ D = 1/2 rho V^2 S (C_(D 0) + Delta C_(D 0)) + (2 k (m g)^2) / (rho V^2 S), quad k = 1 / (pi "AR" e) $ <eq:drag>

For a propeller, $P_"shaft" = (D V + m g V_z) \/ eta_p$ with $V_z = 1.0$ m/s. For a turbine, $V_z = (T - D) V \/ (m g)$ at the best speed between 1.30 $V_s$ and 100 km/h, with 90 % of catalogue thrust; if it does not reach 1.0 m/s, the system is rejected. Each system is calculated at its actual mass (airframe + system + energy + pilot), closing the mass by iteration.

The battery meets energy and power at the same time, @eq:battery, with 165 Wh/kg and 10C, 80 % usable energy and 15 % reserve. The 2-stroke uses 0.60 kg/kWh; the turbines, their catalogue consumption at full power (X240 #qty(0.600, "kg/min", dec: 3); X380 #qty(0.985, "kg/min", dec: 3)), with the same reserve. The screening results are given in @tab:a1.

$ m_b >= max(E \/ e_"pack", P_"elec" \/ (C dot e_"pack")) $ <eq:battery>

where $m_b$ is the battery mass, $E$ the energy required, $e_"pack"$ the pack specific energy, $P_"elec"$ the electrical power and $C$ the discharge rate.

#figure(
  table(
    columns: (40mm, 13mm, 1fr, 20mm, 1fr, 20mm),
    align: (left, right, left, right, left, right),
    [System], [Height (m)], [Added mass, 60 kg airframe (kg)], [Max. A-70 airframe (kg)], [Added mass, 100 kg airframe (kg)], [Vz with 60 kg airframe (m/s)],
    [HPD8 (electric 8 kW)], [200], [8.9], [61.1], [No: power], [1.00],
    [HPD8 (electric 8 kW)], [400], [11.7], [58.4], [No: power], [1.00],
    [HPD8 (electric 8 kW)], [600], [15.7], [54.8], [No: power], [1.00],
    [HPD12 (electric 12 kW)], [200], [10.0], [60.0], [11.7], [1.00],
    [HPD12 (electric 12 kW)], [400], [12.9], [57.3], [15.6], [1.00],
    [HPD12 (electric 12 kW)], [600], [17.0], [53.7], [21.2], [1.00],
    [Atom80 (2-stroke 11.9 kW)], [200], [12.5], [57.5], [12.6], [1.00],
    [Atom80 (2-stroke 11.9 kW)], [400], [12.7], [57.3], [12.9], [1.00],
    [Atom80 (2-stroke 11.9 kW)], [600], [13.0], [57.0], [13.3], [1.00],
    [Xicoy X240 (240 N)], [200], [No: Vz 0.65 m/s], [36.0], [No: Vz 0.13 m/s], [0.65],
    [Xicoy X240 (240 N)], [400], [No: Vz 0.65 m/s], [33.7], [No: Vz 0.13 m/s], [0.65],
    [Xicoy X240 (240 N)], [600], [No: Vz 0.65 m/s], [31.4], [No: Vz 0.13 m/s], [0.65],
    [Xicoy X380 (380 N)], [200], [6.0], [63.9], [6.9], [2.17],
    [Xicoy X380 (380 N)], [400], [7.8], [62.1], [9.7], [2.13],
    [Xicoy X380 (380 N)], [600], [9.7], [60.3], [12.8], [2.09],
  ),
  caption: [Screening results with the common climb criterion. The maximum airframe of the X240 (31–37 kg) is not realistic. With a #qty(100, "kg") airframe (A-120) the A02 polar is extrapolated to ≈ #qty(210, "kg") (#qty(21, "kg/m²"), Vs ≈ #qty(58, "km/h")), pending confirmation by A02.],
) <tab:a1>
#source[modelo.py; datos/masas_cribado.csv.]

*Sensitivity to the climb criterion.* With Vz ≥ #qty(0.7, "m/s"), the maximum airframe at 400 m becomes #qty(56.3, "kg") (HPD8), #qty(55.2, "kg") (HPD12), #qty(57.1, "kg") (Atom80), #qty(62.1, "kg") (X380) and #qty(50.1, "kg") (X240). The slower climb demands more energy from the electric systems and does not change the order or the conclusion. @tab:a2 breaks down the installed cost.

#figure(
  table(
    columns: (26mm, 1fr, 1fr, 1fr),
    align: (left, left, left, left),
    [Item (excl. VAT)], [HPD12 electric], [Atom80 2-stroke], [Xicoy X380],
    [Motor and controller or ECU], [3000–4000 € (no public price list; +30 % over an equivalent 2-stroke according to Geiger)], [2300–2900 € (2700–3040 USD at a US distributor)], [4899 € (Xicoy price list)],
    [Energy], [1.2 kWh battery: 76 P45B cells at 3.76 € ≈ 290 €, plus BMS, box and connectors: 550–750 €], [Tank: 50–100 €], [Tank and header tank: 50–100 €],
    [Propeller], [Carbon, Ø 1.2 m: 300–500 €], [Carbon, Ø 1.25 m: 300–500 €], [—],
    [Installation and reinforcements], [150–300 €], [150–300 €], [150–300 €],
    [Total], [4000–5600 €], [2800–3800 €], [5100–5300 €],
  ),
  caption: [Breakdown of installed cost. Propeller, installation and electric controller are estimates; the HPD8 is estimated at 3800–5300 € and the X240 at 3450–3650 € (3249 € list price).],
) <tab:a2>
#source[Xicoy (25/10/2026); aviatorppg.com, nkon.nl and geigerengineering.de (26/10/2026).]

@tab:a3 gives the mean thrust needed for self-launch against the rolling surface.

#figure(
  table(
    columns: (32mm, 12mm, 16mm, 24mm, 1fr),
    align: (left, right, right, right, left),
    [Surface], [μ (–)], [Run (m)], [Mean thrust needed (N)], [Systems that achieve it],
    [Hard runway, wheel], [0.04], [100], [307], [HPD8, HPD12, Atom80, X380 (90 %)],
    [Hard runway, wheel], [0.04], [150], [234], [HPD8, HPD12, Atom80, X380 (90 %)],
    [Short grass, wheel], [0.08], [100], [354], [HPD8, HPD12, Atom80],
    [Short grass, wheel], [0.08], [150], [280], [HPD8, HPD12, Atom80, X380 (90 %)],
    [Grass, skid], [0.30], [100], [610], [None],
    [Grass, skid], [0.30], [150], [537], [HPD12, Atom80],
  ),
  caption: [Mean thrust needed for self-launch against ground roll. 170 kg, take-off at 1.1 Vs (#qty(58, "km/h")), mean lift during the run 30 % of the weight. Available thrust: X240 216 N and X380 342 N (90 % of catalogue); propellers estimated by momentum theory, HPD8 ≈ 420 N, HPD12 and Atom80 ≈ 550 N, decreasing with speed. Skid-on-grass μ estimated.],
) <tab:a3>
#source[rodadura.py; datos/rodadura.csv; energy bound of the take-off run.]
