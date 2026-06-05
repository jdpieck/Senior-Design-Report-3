= Manufacturing / Production Information
#include "I.I-manufacuring.typ"
#include "I.II-user-guide.typ"

= Project Management Information
#include "II-project-management.typ"

#[
  #set page(flipped: true)
  = DMFEA Full Breakdown
  #include "7.x-dmfea.typ"
]

= Calculations
#include "III-calculations.typ"

= Selected Designs from Report 1 <report1>
#include "IV-old-designs.typ"

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

#include "src/drawings.typ"