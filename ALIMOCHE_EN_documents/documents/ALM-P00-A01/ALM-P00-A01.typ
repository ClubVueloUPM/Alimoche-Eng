#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-P00-A01",
  title: "Legal study",
  doctype: "Supporting study",
  revision: "0.5",
  status: "Draft",
  created: "28/10/2026",
  author: "Augusto Aizpún",
  checker: "Pending",
  approved-by: "Pending",
)

= Purpose and scope

The study determines the legal category of ALIMOCHE, what the regulations require in order to fly it and what must be asked of AESA (Spanish Aviation Safety Agency).

*Aircraft analysed.* Single-seat unpowered glider of aluminium tube and fabric, with wing, tail and aerodynamic controls. Empty mass below #qty(70, "kg") (REQ-01), pilot from 50 to #qty(90, "kg") and MTOM of the order of #qty(160, "kg"). Bungee launch, with skid or wheel; straight glide at low height; intended base at Lillo aerodrome (LELT).

*Limitation.* This is a technical study of the regulations, not a legal opinion.

= Summary of conclusions

The legal classification of ALIMOCHE is not one question but three, which the regulations treat separately: whether or not the aircraft falls within the European EASA system, whether it must be entered in the Civil Aircraft Register, and under which rules it may fly. A favourable answer to one does not settle the others. Being outside EASA does not authorise flight, and being exempt from registration does not mean flying without conditions. Ordered in this way, the first two questions have a clear answer; the third does not.

At European level, ALIMOCHE falls outside Regulation (EU) 2018/1139 under point 1(e) of its Annex I, which excludes single-seat gliders with a maximum take-off mass not exceeding #qty(250, "kg"). With an MTOM of the order of #qty(160, "kg"), the sum of an aircraft below #qty(70, "kg") and a pilot of up to #qty(90, "kg"), the margin is wide, and the exclusion does not depend on the empty mass. Two independent routes reinforce this conclusion: point 1(i), for any manned aircraft whose maximum empty mass, including fuel, does not exceed #qty(70, "kg"); and point 1(c), for aircraft at least 51 % of which is built by amateurs or by non-profit associations, which the club will meet if it builds the aircraft itself. The consequence is that Part-21, Part-ML and Part-SFCL do not apply, and that design, construction and operation are subject to Spanish regulations, without prejudice to the SERA rules of the air, which bind every aircraft.

At national level, ALIMOCHE is not an ultralight (ULM): Royal Decree (RD) 765/2022 expressly excludes from that category unpowered aerodynes, whether gliders, hang gliders, paragliders or similar, whatever their weight. Nor is it covered by the so-called «sub-120» regime, which despite its name is not a general category of light aircraft but one of powered aircraft of categories A, B and C whose take-off mass, less pilot and parachute, does not exceed #qty(120, "kg"). As for registration, the Regulation approved by RD 1029/2025 excludes from the Register single-seat unpowered micro-gliders with an empty weight below #qty(80, "kg"), so ALIMOCHE, if it meets REQ-01, is not registered. If it is also recognised as a free-flight wing, it would have a second exemption, that of article 2.2.b.2.º, which sets no mass limit. These three conclusions have high certainty and may be cited in the rest of the project documentation.

The problem lies in the third question. The regulations treat ALIMOCHE as a low-risk aircraft, but do not state unambiguously which rules govern its flight, because the answer depends on a boundary the regulations do not draw: the one between a free-flight wing and a glider. If ALIMOCHE is a hang glider or another free-flight wing, the regime that AESA publishes for these aircraft applies. That regime requires no specific aeronautical licence, no certificate of airworthiness and no notification of ordinary flights. In return, it imposes the limitations of the fourth additional provision (DA 4.ª) of RD 765/2022: daytime visual flight; outside controlled, restricted or prohibited airspace, urban areas and gatherings of people; and below #qty(10000, "ft"). If, on the other hand, ALIMOCHE is a glider, that same provision expressly excludes it and refers its operation to «the applicable European Union and national regulations». However, the European glider regulations (Parts SAO and SFCL) only cover aircraft within EASA, and the Spanish regulations do not develop a licence, airworthiness or flight testing for an unregistered micro-glider. The Air Navigation Act (Law 48/1960) requires a certificate of airworthiness and a licence for every aircraft, except those exempted by regulation, and that regulatory development does not exist for the micro-glider. In that case, the only regulated route would be amateur construction, with prior authorisation, inspections, flight tests and a restricted certificate, which fits poorly with an aircraft that the Register itself excludes.

The Spanish definition of free-flight wing does not settle the matter. It refers to rigid or semi-rigid lifting structures that require human action to take off, land and move through the atmosphere, with no mass limit and without excluding wheels, tail or aerodynamic controls. But «human action» admits two readings. If understood as control by the pilot, almost any piloted aircraft would fit; if understood as physical effort during take-off and landing, an aircraft with a tube fuselage, tail, conventional controls and wheel looks more like a classic micro-glider. There are technical and sporting precedents that support the broad reading, such as the federation hang-gliding rules that admit wheels, winch and moving surfaces, or commercial rigid wings with glider controls and landing gear, but none of them is a Spanish administrative classification. No single feature decides; the whole counts, and it is AESA that assesses it. The intended bungee launch, with human impulse from the ground crew and the pilot controlling the aircraft, is an intermediate case that must be documented with care.

With all this, the project proceeds as a *rigid free-flight wing*. It is the only category with a published operating regime that fits an unpowered aircraft of this size, the definition does not rule it out, and it best matches the use the club intends. But it is a working hypothesis, not a proven conclusion, and three commitments follow from it. The first is not to fly, not even in manned tests, until AESA's written opinion is available. The second is to submit a single query, accompanied by a technical data sheet and a sketch, asking above all whether ALIMOCHE can be classed as a free-flight wing, what is meant by human action and, if not, which rules govern its operation. The third is to design and build without closing doors: empty mass below #qty(70, "kg") verified by weighing, CS-22 category U loads as the calculation basis, the club as owner and operator with third-party liability insurance, and a construction log that allows a move to the amateur-construction regime if AESA does not confirm the classification. In this way, whatever the answer, the work done will be useful.

= Legal category

@tab:category summarises the answer at each level, and @tab:mass the four mass quantities involved.

#figure(
  table(
    columns: (20mm, 1fr, 42mm, 18mm),
    align: (left, left, left, left),
    [Level], [Answer for ALIMOCHE], [Basis], [Certainty],
    [European], [Outside EASA. MTOM ≈ #qty(160, "kg") against the #qty(250, "kg") limit (+#qty(15, "kg") with a recovery parachute). National regulations govern; SERA still applies.], [EU 2018/1139, Annex I 1(e) (and 1(c), 1(i))], [High],
    [ULM], [Not a ULM nor «sub-120».], [RD 765/2022, arts. 2.2.a and 2.1.d], [High],
    [Registration], [Exempt as a single-seat unpowered micro-glider < #qty(80, "kg") empty; also as a free-flight wing if AESA recognises it.], [RD 1029/2025, art. 2.2.b.6.º and 2.º], [High],
    [Operation], [Depends on whether it is a free-flight wing or a glider.], [RD 765/2022, art. 2.3 and DA 4.ª], [Pending AESA],
  ),
  caption: [Legal category of ALIMOCHE.],
) <tab:category>

== Four mass quantities that are not interchangeable

#figure(
  table(
    columns: (36mm, 1fr, 30mm, 32mm),
    align: (left, left, left, left),
    [Quantity], [Where it is used], [Threshold], [ALIMOCHE],
    [Empty weight], [RD 1029/2025, 2.2.b.6.º (micro-glider)], [< #qty(80, "kg") single-seat], [Met with REQ-01],
    [Maximum empty mass, including fuel], [EU Annex I 1(i); RD 1029/2025, 2.2.b.7.º], [≤ #qty(70, "kg")], [Met with REQ-01],
    [MTOM], [EU Annex I 1(e) (glider)], [≤ #qty(250, "kg") single-seat], [≈ #qty(160, "kg"): met],
    [MTOM less pilot and parachute], [RD 765/2022, 2.1.d («sub-120»)], [≤ #qty(120, "kg")], [Not applicable: unpowered],
  ),
  caption: [Mass quantities used by the regulations.],
) <tab:mass>

= Rigid free-flight wing

RD 1029/2025, art. 2.2.b.2.º: rigid or semi-rigid lifting structures that require human action to take off, land and move through the atmosphere. It sets no mass and does not exclude wheels, tail or controls. It must not be confused with exemption 2.2.b.5.º (aircraft requiring physical effort from an occupant), which is a different route. @tab:launch gives the probable effect of each launch method.

#figure(
  table(
    columns: (36mm, 1fr),
    align: (left, left),
    [Launch method], [Probable effect on the classification (hypothesis)],
    [Bungee (intended)], [Human impulse from the ground crew and a pilot in control. Intermediate case: document who supplies the energy and how the take-off is controlled.],
    [Foot launch], [Strengthens the argument; requires showing that the pilot supports and accelerates the aircraft.],
    [Winch or cable], [External energy; clarify whether the pilot's action is enough.],
    [Tow or vehicle], [Moves the reading towards a conventional glider.],
    [Ground roll], [Wheels are not prohibited; what matters is how take-off is achieved.],
  ),
  caption: [Launch method and classification.],
) <tab:launch>

*Consequence for the design.* The bungee launch with skid or wheel is kept, without building variants in search of a legal name. The technical data sheet will describe the human action in take-off, flight and landing.

= Operation according to category

@tab:operation compares what each category implies for operation.

#figure(
  table(
    columns: (25mm, 1fr, 1fr),
    align: (left, left, left),
    [Subject], [Free-flight wing (working route)], [Micro-glider / non-EASA glider],
    [Licence], [No specific aeronautical licence required.], [No rule: the SPL only covers EASA aircraft. Whether a PPL(A) qualifies is to be asked.],
    [Airworthiness], [No certificate.], [Law 48/1960, art. 36; the exception of art. 151.2 is not developed. Regulated route: RCAA.],
    [Notification], [Ordinary flights are not notified.], [No defined regime.],
    [Take-off site], [No specific aeronautical requirements; land rights and regional and federation rules do apply.], [Aerodrome (LELT with the operator's agreement) or AESA authorisation (Law 48/1960, art. 150.1.c).],
    [Limitations], [DA 4.ª RD 765/2022: daytime VFR and VMC; outside controlled, restricted and prohibited airspace, active danger areas, urban areas and gatherings; ≤ #qty(10000, "ft") (up to #qty(13000, "ft") for less than 30 min); harness; helmet if there is no protection.], [DA 4.ª excludes gliders and refers to «applicable EU and national regulations» not developed for this case.],
    [Rules of the air], [SERA and RD 1180/2018.], [SERA and RD 1180/2018.],
  ),
  caption: [Operation according to category.],
) <tab:operation>

#pending[*Legal point.* RD 765/2022 (art. 2.3 and DA 4.ª, as worded by RD 182/2026, in force since 01/04/2026) applies DA 4.ª to the unpowered aerodynes of art. 2.2 «with the exception of gliders». Hang glider and glider are examples within the same letter 2.2.a. Where ALIMOCHE falls on that boundary is the central question of the query.]

#block(breakable: false)[
= Scenarios

@tab:scenarios sets out the three possible scenarios and what the project does in each.

#figure(
  table(
    columns: (30mm, 27mm, 1fr, 1fr),
    align: (left, left, left, left),
    [Scenario], [Condition], [What it implies], [What the project does],
    [A · Free-flight wing (working route)], [AESA confirms the classification.], [AESA free-flight regime with the limits of DA 4.ª.], [Technical data sheet, own test programme, insurance, land agreements, internal training.],
    [B · Micro-glider < #qty(80, "kg")], [AESA considers it a glider.], [No registration; operation, licence and airworthiness as AESA indicates.], [Apply what AESA sets; if there is no usable regime, move to C.],
    [C · Amateur construction (RCAA)], [Fits neither A nor B, or is powered.], [Prior authorisation, inspections (before covering and assembled), adapted flight tests (art. 13.4) and CAR.], [RCAA file. The construction log (51 %, builders, photos) is kept from the start.],
  ),
  caption: [Classification scenarios.],
) <tab:scenarios>
]

In scenario C there is a conflict to resolve: the RCAA requires registration after the CAR, but the micro-glider is excluded from the Register. In addition, the standard programme for gliders (5 h, 20 landings and tow to #qty(1000, "m")) is not applicable to ALIMOCHE.

= Requirements that do not depend on the category

#item("REQ-01", "Empty mass below 70 kg")[
  Empty mass: that of the fully finished aircraft, assembled in flight configuration, with all its equipment installed or needed for flight (structure, covering and finish, controls, harness, launch hooks, skid or wheel, instruments, batteries and fixed ballast), without pilot, without the pilot's personal equipment (clothing, helmet and personal parachute) and without removable ballast. If an engine is installed, it also includes engine, propeller, systems, fluids and all the fuel. It is verified by weighing the complete aircraft on calibrated scales; every design estimate will state its margin against #qty(70, "kg") (CRIT-01).
]

== Design basis: CS-22 Amendment 3, category U (voluntary guidance)

@tab:cs22 summarises the CS-22 values adopted as the calculation basis.

#figure(
  table(
    columns: (28mm, 1fr, 32mm),
    align: (left, left, left),
    [Item], [Value], [Origin],
    [Manoeuvre], [n₁ = +#num(5.3) at VA; n₂ = +#num(4.0, dec: 1) at VD; n₃ = −#num(1.5) at VD; n₄ = −#num(2.65) at VA], [CS 22.333–22.337],
    [Gusts], [±#qty(15, "m/s") at VB; ±#qty(7.5, "m/s") at VD, with alleviation factor], [CS 22.333(c), 22.341],
    [Safety], [#num(1.5) on limit load; fittings #num(1.15); bearing #num(2.0, dec: 1); seat and harness anchorages #num(1.33)], [CS 22.303, 22.619–22.625],
    [Landing and emergency], [n ≥ 3 and descent ≥ #qty(1.77, "m/s"); pilot restraint 7.5 / 15 / 6 / 9 g (up, forward, sideways, down)], [CS 22.473, 22.561],
    [Launch], [Bungee: hook at #num(1.5)·Q#sub[nom], with Q#sub[nom] the maximum measured tension], [CS 22.581–22.585],
  ),
  caption: [Design basis taken from CS-22, category U.],
) <tab:cs22>

With the expected wing loading (≈ #qty(10, "daN/m²")) the #qty(15, "m/s") gust may give load factors of the order of +4: it will size the wing as much as the manoeuvre.

== Insurance, liability and powered version

The club is owner and operator, with third-party liability cover of at least 0.75 million SDR per accident (reference: Regulation (EC) 785/2004, art. 7) and accident insurance for the pilot and ground crew. The operator is strictly liable to third parties on the surface (Law 48/1960, arts. 119–121); the club with its assets, and its officers for negligence (Organic Law 1/2002, art. 15); the UPM only if the activity is part of its public service (Law 40/2015, art. 32), so this will be formalised in writing with the ETSIAE. A powered version would keep the registration exemption only with ≤ #qty(70, "kg") including fuel; otherwise, RCAA with registration.

= Query to AESA

A single written query through the AESA electronic office, accompanied by a technical data sheet and a three-view sketch. @tab:query lists the questions and @tab:steps the next steps.

#figure(
  table(
    columns: (19mm, 1fr),
    align: (left, left),
    [ID], [Question],
    [CONS-01], [*Classification.* Can ALIMOCHE be classed as a hang glider or another free-flight wing (RD 1029/2025, 2.2.b.2.º) and operate according to AESA's criteria for those aircraft? Which features would be decisive?],
    [CONS-02], [*Human action.* Pilot control or physical effort? How do bungee, foot launch, winch, tow and ground roll affect it?],
    [CONS-03], [*If it is not free flight.* Does the glider exception of DA 4.ª apply to it? Which rules govern operation, licence (does a PPL(A) qualify?), airworthiness and flight tests?],
    [CONS-04], [*RCAA.* Applicable to a micro-glider exempt from registration? Voluntary registration for the CAR? Adapted test programme without tow to #qty(1000, "m")?],
    [CONS-05], [*Launch and site.* Requirements for bungee launching at LELT and at sites that are not aerodromes.],
    [CONS-06], [*Insurance, mass and design.* Minimum cover; acceptance of REQ-01 with weighing and of CS-22 category U.],
    [CONS-07], [*Builder and engine.* Club de Vuelo UPM as builder and owner (Annex I 1(c)); classification of a future powered version.],
  ),
  caption: [Questions for AESA.],
) <tab:query>

#figure(
  table(
    columns: (8mm, 1fr, 34mm),
    align: (right, left, left),
    [\#], [Action], [When],
    [1], [Technical data sheet of 1–2 pages and three-view sketch.], [Before the query],
    [2], [Submit the query to AESA.], [November 2026],
    [3], [Preliminary design as a free-flight wing with REQ-01 and CS-22 category U loads.], [In parallel],
    [4], [Construction log (51 %, builders, photos, inspection before covering).], [From the first part],
    [5], [Written authorisation from the ETSIAE/UPM; liability and accident policy; agreement with the LELT operator.], [Before testing],
    [6], [File AESA's answer and revise this document with the confirmed scenario.], [On receiving the answer],
  ),
  caption: [Next steps.],
) <tab:steps>

#note[This report is based on official sources but sets out working interpretations. It is not a binding opinion and does not replace permits, airworthiness requirements or the judgement of the competent authority. Sources consulted 25–28/10/2026.]

#references((
  [Regulation (EU) 2018/1139, art. 2.3.d and Annex I (consolidated 02/08/2026). CELEX 02018R1139.],
  [Royal Decree 765/2022, art. 2 and DA 4.ª, as worded by RD 182/2026. BOE-A-2022-16402.],
  [Royal Decree 1029/2025, Registration Regulation, art. 2.2.b. BOE-A-2025-22950.],
  [AESA. _Ala delta, parapente y paramotor_ (Hang glider, paraglider and paramotor), update 12/03/2026. seguridadaerea.gob.es.],
  [Law 48/1960 on Air Navigation, arts. 36, 119–127, 150 and 151. BOE-A-1960-10905.],
  [Order of 31/05/1982, RCAA (amateur construction regulation); AESA guide AI-AFIS-P01-GU01 Ed. 04. BOE-A-1982-13477.],
  [Regulation (EU) 923/2012 (SERA) and RD 1180/2018. CELEX 02012R0923.],
  [Regulation (EC) 785/2004, arts. 2.2 and 7. CELEX 02004R0785.],
  [Organic Law 1/2002 (art. 15); Law 40/2015 (art. 32). BOE-A-2002-5852.],
  [EASA. CS-22 Amendment 3 (ED Decision 2021/013/R). easa.europa.eu.],
  [FDACV, _Reglamento general de ala delta_ (General hang-gliding rules), 2020; Archaeopteryx; ULF-1. Technical references.],
))
