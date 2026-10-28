#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-P00",
  title: "Specification",
  doctype: "Specification",
  revision: "0.2",
  status: "Draft",
  created: "23/10/2026",
  author: "Augusto Aizpún",
  checker: "Pending",
  approved-by: "Pending",
)

= Purpose and scope

This document sets the design assumptions (ASM), requirements (REQ) and selection criteria (CRIT) common to the ALIMOCHE preliminary design. It develops ALM-00 and integrates the outputs of its annexes. It does not choose a configuration or geometry, nor does it declare regulatory compliance.

= Input data

@tab:inputs lists the input documents and @tab:conventions the conventions used.

#figure(
  table(
    columns: (32mm, 1fr),
    align: (left, left),
    [Code], [Document],
    [ALM-00], [Problem statement and design basis],
    [ALM-P00-A01], [Legal study],
    [ALM-P00-A02], [Study of similar aircraft],
    [ALM-P00-A03], [Materials study],
    [ALM-P00-A04], [Operations study],
    [ALM-P00-A05], [Powerplant and upgrades study],
  ),
  caption: [Input documents.],
) <tab:inputs>

#figure(
  table(
    columns: (32mm, 1fr),
    align: (left, left),
    [Code], [Meaning],
    [ASM], [Design assumption: data and calculation rules common to all proposals. Using other values requires a change request.],
    [REQ], [Requirement. Mandatory: failing it eliminates the proposal. Target: scored through a CRIT.],
    [CRIT], [Selection criterion, with a weight and a scale from 0 to 10.],
    [TBD], [Value still to be defined; the annex or person responsible for closing it is stated.],
  ),
  caption: [Conventions.],
) <tab:conventions>

= Design assumptions

#item("ASM-01", "Flight environment")[
  *Design case.* Lillo aerodrome (LELT), elevation ≈ #qty(681, "m"), #qty(40, "°C"), ISA pressure at that elevation. Density ≈ #qty(1.04, "kg/m³", dec: 2) (σ ≈ #num(0.85, dec: 2); density altitude ≈ #qty(1700, "m")).

  *Comparison case.* ISA at sea level.
]

#item("ASM-02", "Pilot and payload")[
  *Pilot.* Equipped (clothing and helmet), from 50 to #qty(90, "kg"). The design is trimmed with #qty(75, "kg") and no ballast. The three load cases are given in @tab:pilot.
]

#figure(
  table(
    columns: (30mm, 18mm, 1fr, 1fr),
    align: (left, right, left, left),
    [Case], [Pilot], [Ballast], [Use],
    [M1 · Light], [#qty(50, "kg")], [Up to matching the CG of M2], [Aft CG limit],
    [M2 · Design], [#qty(75, "kg")], [None], [Trim and performance],
    [M3 · Maximum], [#qty(90, "kg")], [None], [Structural case; forward CG limit],
  ),
  caption: [Pilot load cases.],
) <tab:pilot>

#item("ASM-03", "Calculation basis")[
  *Reference regulations.* To be defined with the legal study (A01), which will set the load and safety factors and the load cases. Candidate: CS-22 as voluntary guidance.

  *Estimation methods and tools.* Common CLmax, Oswald factor, drag and mass-breakdown template: TBD (A02). Hand calculation and a bar-element FEM validated against cases with known solutions.
]

= Requirements

@tab:req lists the requirements, their type, origin and method of verification.

#figure(
  table(
    columns: (15mm, 1fr, 19mm, 25mm, 24mm),
    align: (left, left, left, left, left),
    [ID], [Requirement], [Type], [Origin], [Verification],
    [REQ-01], [Empty mass less than #qty(70, "kg"). Exact definition TBD (A01).], [Mandatory], [ALM-00], [Mass],
    [REQ-02], [Accept pilots from 50 to #qty(90, "kg") (cases M1–M3).], [Mandatory], [ALM-00; ASM-02], [CG position],
    [REQ-03], [Withstand the loads of ASM-03.], [Mandatory], [ALM-00; ASM-03], [Calculation and test],
    [REQ-04], [Mission: bungee launch from level ground and straight glide at low height. Height and wind TBD (A04).], [Mandatory], [ALM-00; A04], [Performance],
    [REQ-05], [Metal-tube and fabric-covered construction.], [Mandatory], [Project], [Review],
    [REQ-06], [Stable and predictable flight, as a basic trainer. Quantitative criteria TBD.], [Mandatory], [ALM-00], [Stability],
    [REQ-07], [CG within limits in cases M1, M2 and M3.], [Mandatory], [ASM-02], [CG position],
    [REQ-08], [Transportable by road. Envelope TBD (A04).], [Mandatory], [ALM-00; A04], [Dimensions],
    [REQ-09], [Buildable in a small workspace with simple means.], [Mandatory], [ALM-00], [Processes],
    [REQ-10], [Materials and components available in Spain.], [Mandatory], [ALM-00; A03], [Materials],
    [REQ-11], [Materials cost of #num(3500) ± #qty(500, "€").], [Target], [ALM-00], [Budget],
    [REQ-12], [Construction in #num(150) person-hours.], [Target], [ALM-00], [Hours],
    [REQ-13], [Easy to inspect, repair and maintain.], [Target], [ALM-00], [Review],
    [REQ-14], [Structure suitable for car or winch tow and aerotow.], [Target], [Project], [Calculation],
  ),
  caption: [Requirements.],
) <tab:req>

= Selection criteria

Each proposal that meets the mandatory REQs is scored from 0 to 10 on each criterion according to its scale, and its final score is the weighted sum, with weights fixed before the proposals are seen (@tab:crit).

#figure(
  table(
    columns: (16mm, 1fr, 13mm, 34mm, 34mm),
    align: (left, left, right, left, left),
    [ID], [Criterion], [Weight], [Score 0], [Score 10],
    [CRIT-01], [Mass margin against #qty(70, "kg")], [25 %], [≥ #qty(70, "kg")], [Margin ≥ 15 %],
    [CRIT-02], [Simplicity of construction], [20 %], [External processes], [Drilling and riveting],
    [CRIT-03], [Transport and assembly], [15 %], [More than 4 people], [2 people without tools],
    [CRIT-04], [Trainer flying qualities], [15 %], [Marginal stability], [Stable in 3 axes],
    [CRIT-05], [Inspection and repair], [10 %], [Hidden joints], [Visible joints],
    [CRIT-06], [Cost and construction hours], [10 %], [> #num(4000) € or > 200 h], [≤ #num(3000) € and ≤ 150 h],
    [CRIT-07], [Growth potential], [5 %], [Prevents growth], [Meets REQ-14],
  ),
  caption: [Selection criteria.],
) <tab:crit>

#pending[Weights and scales are proposed; they are to be fixed at a meeting of the preliminary-design core team.]
