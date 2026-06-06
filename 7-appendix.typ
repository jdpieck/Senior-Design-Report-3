#import "src/risk-tables.typ": *

= Manufacturing / Production Information
#include "I.I-manufacuring.typ"
#pagebreak()
#include "I.II-user-guide.typ"

= Project Management Information
#include "II-project-management.typ"
// #pagebreak()

#[
  #set page(flipped: true)
  = DMFEA Full Breakdown <full-dmfea>
  #risk-table()
]
== Ranking Criteria
=== Severity Ranking Criteria
#ranking-criteria("severity")
=== Occurrence Ranking Criteria
#ranking-criteria("occurrence")
=== Detection Ranking Criteria
#ranking-criteria("detection")

= Calculations
#include "III-calculations.typ"

= MATLAB Simulations
== MATLAB Code For Spring Fatigue <appx-spring>
#raw(read("reference/spring.m"), block: true)

== MATLAB Code for Shaft Deformation and Stress <matlabshaft>
#raw(read("reference/roller.m"), block: true)


= Onshape Deformation Simulation <sim>

#figure(
  [
    #image("images/sim.png")
  ],
  caption: [Simulation of Deformation using Onshape simulation tools. ]
)
= Design Sketches
#include "IV-old-designs.typ"



#include "src/drawings.typ"