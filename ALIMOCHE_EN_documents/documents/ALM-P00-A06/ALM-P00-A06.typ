#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-P00-A06",
  title: "Preliminary aerodynamic estimate",
  doctype: "Supporting study",
  revision: "0.2",
  status: "Draft",
  created: "25/10/2026",
  author: "ALIMOCHE team",
  checker: "Pending",
  approved-by: "Pending",
)

= Purpose and scope

This note turns the dimensions and masses proposed for ALIMOCHE into a first drag polar and into estimates of stall, glide, sink, thrust and power. It serves to compare configurations in P01. The numbers are preliminary-design assumptions, not authorised speeds nor a demonstration of safety or compliance.

The main case is ASM-01 of the specification [2]: Lillo at #qty(40, "°C"), with density #qty(1.04, "kg/m³", dec: 2). ISA at sea level is included for comparison. The SG 38 three-view drawing is a historical visual reference; the calculations correspond to the rectangular wing proposed for ALIMOCHE.

= Input data and first-order results

@tab:inputs gives the input data.

#figure(
  table(
    columns: (46mm, 28mm, 1fr),
    align: (left, right, left),
    [Quantity], [Value], [Origin or interpretation],
    [Span $b$], [#qty(10.0, "m", dec: 1)], [Working value from the project lead],
    [Mean chord $c$], [#qty(1.0, "m", dec: 1)], [Assumed constant along the whole wing],
    [Wing area $S$], [#qty(10.0, "m²", dec: 1)], [$S = b c$; excludes stabilisers],
    [Aspect ratio AR], [#num(10.0, dec: 1)], [$"AR" = b^2 \/ S$],
    [Target empty mass], [#qty(70, "kg")], [ALM-00 requires less than #qty(70, "kg") [1]],
    [Maximum equipped pilot], [#qty(90, "kg")], [M3 of the specification [2]],
    [Maximum calculation mass], [#qty(160, "kg")], [70 + #qty(90, "kg"); proposal, not an approved MTOW],
    [Calculation weight], [#qty(1569, "N")], [$m g$, with $g = 9.80665$ m/s²],
    [Maximum wing loading], [#qty(16.0, "kg/m²", dec: 1)], [Equivalent to #qty(157, "N/m²")],
  ),
  caption: [Input data.],
) <tab:inputs>

With #qty(70, "kg") of empty mass and #qty(90, "kg") of pilot, the #qty(160, "kg") are used up. There is no mass margin for instruments, ballast, protection or construction changes. In addition, the specification sets less than #qty(70, "kg"), so the #qty(70, "kg") value used here is a conservative limit case for performance. A mass budget is required before setting the MTOW.

The specification also considers a #qty(50, "kg") pilot and a nominal case of #qty(75, "kg"). If the empty mass were #qty(70, "kg"), total masses of 120 and #qty(145, "kg") would result, respectively, before any ballast. The light case will need a separate centre-of-gravity analysis.

= Provisional aerodynamic model

$C_(L,max) = 1.50$ is taken as the central case. It is plausible for an initial exploration, but may prove optimistic for the actual aerofoil, Reynolds number, construction and three-dimensional stall. The range 1.20–1.50 is also calculated. This value is not assigned as a requirement or as a demonstrated property.

For an open structure inspired by the SG 38, $C_(D,0) = 0.055$ is used, referred to the #qty(10, "m²") of wing. It includes, in aggregate, wing, exposed pilot, structure and bracing; it does not come from a measurement of ALIMOCHE. $e = 0.70$ is adopted for the rectangular wing, from which $k = 1 \/ (pi "AR" e) = 0.0455$. This pair of values gives a maximum glide ratio close to 10, of the order of the SG 38 preserved at the Deutsches Museum [6]. The SG 38 coefficients have not been transferred directly: its area and configuration are different. The model is given by @eq:lift and @eq:drag [4], and the resulting polar is shown in @fig:polar.

$ q = 1/2 rho V^2, quad C_L = W / (q S), quad C_(D,i) = k C_L^2, quad C_D = C_(D,0) + C_(D,i) $ <eq:lift>
$ D = q S C_D, quad P_"aero" = D V, quad v_"sink" approx P_"aero" / W $ <eq:drag>

where $q$ is the dynamic pressure, $rho$ the air density, $V$ the true airspeed, $W$ the weight, $D$ the drag, $P_"aero"$ the aerodynamic power and $v_"sink"$ the sink rate.

The parabolic polar is used only before the stall and in near-steady glide. Close to $C_(L,max)$, the model no longer describes faithfully the rise in drag or the changes in control. Power and climb thrust are presented as hypothetical aerodynamic loads to study a future powerplant; the basic glider has no engine.

#figure(
  image("figures/drag_polar.svg", width: 100%),
  caption: [Provisional drag polar of the complete aircraft, $C_D = C_(D,0) + k C_L^2$ with $C_(D,0) = 0.055$ and $k = 0.0455$. The circle marks the best-glide point of the model; the model applies before the stall.],
) <fig:polar>

= Estimated glide performance

@tab:glide gives the glide performance at #qty(160, "kg") and @fig:sink the sink-rate polar [5].

#figure(
  table(
    columns: (1fr, 34mm, 34mm),
    align: (left, right, right),
    [Quantity at #qty(160, "kg")], [ISA sea level], [Lillo #qty(40, "°C")],
    [Density], [#qty(1.225, "kg/m³", dec: 3)], [#qty(1.04, "kg/m³", dec: 2)],
    [Stall speed with CLmax 1.50], [#qty(47.0, "km/h", dec: 1)], [#qty(51.1, "km/h", dec: 1)],
    [Stall speed if CLmax were 1.20], [#qty(52.6, "km/h", dec: 1)], [#qty(57.1, "km/h", dec: 1)],
    [Best-glide speed], [#qty(54.9, "km/h", dec: 1)], [#qty(59.6, "km/h", dec: 1)],
    [Maximum glide ratio], [#num(10.0, dec: 1)], [#num(10.0, dec: 1)],
    [Drag at best glide], [#qty(157, "N")], [#qty(157, "N")],
    [Sink rate at best glide], [#qty(1.53, "m/s", dec: 2)], [#qty(1.66, "m/s", dec: 2)],
  ),
  caption: [Estimated glide performance.],
) <tab:glide>

The best-glide speed lies only 17 % above the stall speed calculated with $C_(L,max) = 1.50$. This figure must therefore not be turned directly into an operating speed. The minimum-sink speed of the mathematical model lies practically at the edge of the stall; it is not published as usable performance until a real polar and handling margins are obtained.

With a nominal #qty(75, "kg") pilot and a total mass of #qty(145, "kg"), the calculated stall speed would be #qty(44.8, "km/h", dec: 1) in ISA and #qty(48.6, "km/h", dec: 1) at Lillo; with a #qty(50, "kg") pilot, 40.7 and #qty(44.2, "km/h", dec: 1). These values only reflect the effect of mass with unchanged geometry and $C_(L,max)$.

#figure(
  image("figures/sink_polar.svg", width: 100%),
  caption: [Sink-rate polar in still air, in true airspeed, at #qty(160, "kg"). Each curve starts at the calculated stall speed for its atmosphere; the circles mark best glide.],
) <fig:sink>

A glide ratio of 10 implies, at the optimum point and with no wind, a loss of about #qty(100, "m") for every #qty(1, "km") of horizontal distance. Bungee launch distance, height reached and landing run have not been calculated: the launch system, the available energy, the terrain and the coefficients near the stall are missing.

= Drag, thrust and power

In unpowered glide, the weight component balances the drag. For a possible propulsion system, the equilibrium thrust in level flight would be approximately $T = D$, and for a steady climb at rate $R$ it is estimated as $T approx D + W R \/ V$. The aerodynamic power would be $D V + W R$. With an assumed propulsive efficiency of 0.70, the shaft power is that sum divided by 0.70. Electrical losses, installation drag, mass variations and take-off are not included. @tab:power gives the values at best-glide speed, and @fig:thrust and @fig:power their variation with speed.

#figure(
  table(
    columns: (1fr, 30mm, 30mm, 30mm),
    align: (left, right, right, right),
    [Lillo at #qty(59.6, "km/h", dec: 1)], [Level flight], [Climb 1 m/s], [Climb 2 m/s],
    [Thrust required], [#qty(157, "N")], [#qty(252, "N")], [#qty(346, "N")],
    [Aerodynamic power], [#qty(2.60, "kW", dec: 2)], [#qty(4.17, "kW", dec: 2)], [#qty(5.74, "kW", dec: 2)],
    [Shaft power, η = 0.70], [#qty(3.71, "kW", dec: 2)], [#qty(5.96, "kW", dec: 2)], [#qty(8.20, "kW", dec: 2)],
  ),
  caption: [Hypothetical thrust and power at best-glide speed, Lillo, #qty(160, "kg").],
) <tab:power>

#figure(
  image("figures/thrust_required.svg", width: 100%),
  caption: [Thrust required with the provisional model at #qty(160, "kg") and Lillo density.],
) <fig:thrust>

#figure(
  image("figures/shaft_power.svg", width: 100%),
  caption: [Hypothetical shaft power at a constant propulsive efficiency of 0.70, Lillo, #qty(160, "kg"). Equivalent scales in kW and mechanical hp (1 hp = #qty(0.7457, "kW", dec: 4)).],
) <fig:power>

An unpowered glider cannot sustain a climb in still air. The climb charts serve only as input to A05 if propulsion is studied. The engine and its installation would consume mass and increase drag, so the figures are not an engine specification.

= Sensitivity

Stall speed depends mainly on $C_(L,max)$ and on wing loading. Glide ratio and power are especially sensitive to the parasite drag of the pilot and the bracing, gathered here in $C_(D,0)$. The factor $e$ also changes the induced drag. The variations in @tab:sensitivity change a single parameter at a time from the central case; they show the sensitivity of the model, not uncertainty margins.

#figure(
  table(
    columns: (26mm, 38mm, 1fr),
    align: (left, left, left),
    [Parameter], [Illustrative change], [Effect in the #qty(160, "kg") case],
    [CLmax], [1.50 to 1.20], [Stall at Lillo: 51.1 to #qty(57.1, "km/h", dec: 1) (+11.8 %).],
    [CD0], [0.055 ± 20 %], [Maximum glide ratio: 11.2 with lower CD0; 9.1 with higher CD0.],
    [Factor $e$], [0.70 to 0.60 / 0.80], [Maximum glide ratio: 9.3 / 10.7.],
    [Total mass], [160 ± #qty(10, "kg")], [Stall at Lillo: 49.4 to #qty(52.6, "km/h", dec: 1).],
    [Density], [1.225 to #qty(1.04, "kg/m³", dec: 2)], [True airspeeds and optimum sink: +8.5 %; glide ratio unchanged.],
  ),
  caption: [Sensitivity of the model.],
) <tab:sensitivity>

The figures highlight the effect of the aerofoil and of the drag of exposed elements. Real geometry changes may alter several parameters at once, so these results cannot be added directly.

= SG 38 as a configuration reference

The historical SG 38 has approximately #qty(10.4, "m") span, #qty(6.3, "m") length and 100–105 kg empty mass, depending on the example [7]. The Deutsches Museum gives a glide ratio of 10 at #qty(52, "km/h") and a minimum sink of #qty(1.3, "m/s") at #qty(48, "km/h") [6]. Its published wing area is about #qty(16, "m²") [8], against the #qty(10, "m²") adopted here for ALIMOCHE. The similar span does not allow the polar or the speeds to be transferred without correcting for area, mass and drag. @fig:sg38 shows the three-view drawing used [3].

#figure(
  image("figures/sg38_three_view.jpg", width: 150mm),
  caption: [SG 38 three-view sheet provided for this study. The image shows the historical SG 38 and does not define the dimensions of ALIMOCHE. Labels in German in the original drawing: «Schulgleiter» (primary trainer glider), «mit Boot» (with nacelle).],
) <fig:sg38>

#references((
  [ALM-00. _Problem statement and design basis_: empty mass below #qty(70, "kg") and maximum pilot #qty(90, "kg").],
  [ALM-P00. _Specification_: Lillo atmosphere, pilot cases and mission.],
  [SG 38 three-view sheet provided for this study.],
  [NASA Glenn Research Center. Lift equation and induced-drag model. www1.grc.nasa.gov/beginners-guide-to-aeronautics/induced-drag-coefficient/],
  [FAA. _Glider Flying Handbook_, FAA-H-8083-13A, chap. 3: definitions of sink polar and best glide. faa.gov/sites/faa.gov/files/regulations_policies/handbooks_manuals/aviation/glider_handbook/faa-h-8083-13a.pdf],
  [Deutsches Museum. SG 38 data: span, mass, glide ratio and sink. deutsches-museum.de/flugwerft-schleissheim/ausstellung/luftsport-und-zivile-luftfahrt/sg-38],
  [Smithsonian NASM. Length, span and general configuration of the SG 38. airandspace.si.edu/collection-objects/schneider-hofmann-rehberg-sg-38/nasm_A19600311000],
  [Vintage Glider Club. _VGC Newsletter_ no. 90, spring 1997, SG 38 data sheet (approximate historical area of #qty(16, "m²")), PDF.],
))
