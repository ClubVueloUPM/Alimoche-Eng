#import "../../template/alimoche.typ": *

#show: alimoche-doc.with(
  code: "ALM-00",
  title: "Problem statement and design basis",
  doctype: "Design brief",
  revision: "0.4",
  status: "Draft",
  created: "23/10/2026",
  author: "Augusto Aizpún",
  checker: "Pending",
  approved-by: "Pending",
)

= Project objective

The aim is to design and build a single-seat glider that is light, inexpensive, and safe, stable and predictable in flight. This document states the problem and sets its basis without determining a technical solution.

= Starting requirements and criteria

@tab:basis lists the requirements and criteria from which the design starts.

#figure(
  table(
    columns: (38mm, 1fr),
    align: (left, left),
    [Item], [Requirement or criterion],
    [Aircraft type], [Single-seat glider.],
    [Empty mass (OEW)], [Less than #qty(70, "kg"), excluding the pilot. Mandatory project limit.],
    [Pilot], [Maximum mass #qty(90, "kg").],
    [Safety], [Safe design, with stable and predictable flight behaviour. Basic trainer.],
    [Budget], [Target materials cost #num(3500) ± #qty(500, "€").],
    [Construction time], [#num(150) person-hours, as a preliminary target.],
    [Transport], [Transportable by road.],
    [Construction], [Feasible in a small workspace with simple, accessible means.],
    [Maintenance], [Easy to inspect, repair and maintain.],
    [Design philosophy], [Simplicity and accessibility. Materials and components available in Spain.],
  ),
  caption: [Starting requirements and criteria.],
) <tab:basis>
