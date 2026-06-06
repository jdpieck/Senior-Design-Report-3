== Final Product Design Requirements <quantrequirements>

//tabulate the desgin requirements 

Table 1 details our final design requirements which drove our decision making process. Note that requirement (1) necessitated the choice of solvent-based adhesives, which must be used only in a fume hood; this constrained the space requirements to fume hood geometry (requirement 4).

#let requiremement-table(
  ..content, 
  caption: [],
  lab: "") = {

  import "src/template.typ": *
  show: standard-table
  figure(
    table(
        columns: (1fr, 4in),
        inset: 10pt,
        align: (left, left),
        // stroke: (x, y) => if y == 0 { (bottom: 2pt + black) } else { (bottom: 0.5pt + gray) },
        // fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },
        
        [*Requirement Category*], [*Specification Detail*],
        ..content
    ),
    caption: caption
  )
}
#requiremement-table( 
  [1) Adhesive Strength], [The system must produce MPHX modules which can withstand 10 psig of internal pressure.],
  [2) High Throughput], [The system must be able to produce at least 1 heat exchanger (1000 modules) in an 8-hour working day.],
  [3) Long Life Cycle], [The system must be able to produce at least 10 heat exchangers in its lifetime.],
  [4) Form Factor], [The system must fit within a 6' standard fume hood (5' length $times$ 2' width $times$ 2.5' height).],
  [5) MPHX-Lamina Alignment], [Must align within 1.5 mm laterally and 3 mm longitudinally.],
  [6) Channel Clearance], [Water side channels must retain 90\% of their initial volume post-gluing],
  caption: [ Overall Design Requirement Table]
)

// + Adhesive strength: The system must produce MPHX modules which can withstand 10 psi of internal pressure.
// + High throughput: The system must be able to produce at least 1 heat exchanger (1000 modules) in an 8-hour working day. 
// + Long life cycle: The system must be able to produce at least 10 heat exchangers in its lifetime.
// + Form factor: The system must fit within a 6' standard fume hood (5' length $times$ 2' width $times$ 2.5' height)
// + MPHX-lamina alignment: Must align within 1.5 mm laterally and 3 mm longitudinally.
 


In the following sections, a matching number indicates that a requirement was rolled down from the requirements above.

#pagebreak()
=== Adhesive Selection
// Explain how we got to these requirements
Table 2 includes the design requirements referenced when selecting the adhesive to be used in the vat.
#requiremement-table(  
  [A1-a) Material Compatibility], [Adhesive must be compatible with both ABS and polycarbonate.],
  [A1-b) Pressure Resistance], [Adhesive must be capable of sustaining 10 psig of internal pressure.],
  [A2) Cure Time], [Adhesive must have a cure time within 45 minutes.],
  caption: [Adhesive Selection Requirement Table]
)
//The  system requirement of adhesive strength (1) was rolled down into two separate requirements on the adhesive. First was material compatibility (A1-a): in order to adhere the MPHX and lamina to 10 psig water pressure, the adhesive must be compatible with both materials selected (polycarbonate and ABS). Beyond basic material compatibility, the glue also had to be strong enough to hold the 10 psig pressure (A1-b), giving a second and more direct rolldown to requirement (2) of the adhesive. The throughput system requirement (2) also rolled down to the adhesive into requirement (A2) of the adhesive as the cure time needs to be short enough that jigs can be reused throughout the day for adequate throughput.

// 1. Adhesive must be capable of sustaining 10 psi of internal pressure.
// 2. Adhesive must have a cure time of less than 24 hours, preferably within 1 hour.
// 3. Adhesive must be compatible with both ABS and polycarbonate.

=== Jig
// Explain how we got to these requirements
Table 3 includes the design requirements for the jig subsystem.

#requiremement-table(
  [J1) Strength], [Must withstand and transmit a compressive force of 6 lb.],
  [J2) Design Scalability], [Must be able to create at least 50 jigs.],
  [J3) Reusability], [Must be reusable at least 50 times.],
  [J4) Geometry], [Must have maximum dimensions of 18 in $times$ 18 in and stack to at most 28 in.],
  [J5) Plate-Lamina Alignment], [Must align within 1.5 mm laterally and 3 mm longitudinally.], 
  caption: [Jig Design Selection Requirement Table]
)

///Requirement (1) for adhesive strength rolled down to a compressive force requirement (J1) as we determined 6 pounds was the required compressive force for the MPHX to adhere to the lamina. Requirement 2, for a througput of 1000 jigs, was split among

//The adhesive strength requirement (1) rolled down to force requirement (J1) because we determined that 6 pounds was necessary to provide the adhesion. In order to meet requirement (2) of consistent and scalable production of the completed MPHX modules, the jig needed to be durable for our expected use case and have a geometry such that it could properly secure the lamina and modules without risk of excess glue. Full requirements are listed in the table above.

// 1. Jig must withstand and transmit a compressive force of 6 lb.
// 2. Must be able to create at least 100 jigs.
// 3. Jigs must be reusable at least 50 times.
// 4. Jigs must have maximum dimensions of 18 in $times$ 18 in and stack to at most 28 in.
// 5. MPHX-Lamina Alignment: Must align within 1.5 mm laterally and 3 mm longitudinally.


#pagebreak()
=== Roller
// Explain how we got to these requirements
// The roller is responsible for applying the adhesive to the plates, meaning it es critical to the Adhesive Strength requirement. The roller speed is also determined by its ability to satisfy the High Throughput requirement. 
Table 4 includes the design requirements for the roller subsystem.
#requiremement-table(
  [R1) Compressive Force], [Must be able to provide at least 3 lb of force (adjustable to $plus.minus 1 "lb"$) per MPHX plate with an angular deformation within $8 times 10^(-4) "rad"$.],
  [R2) Manufacturing Speed], [Must be able to process 500 jigs in 8 hours.],
  [R3) Durability], [Must be able to last at least 5,000 cycles.],
  [R4) Subsystem Dimensions], [Maximum dimensions 18 in width $times$ 6 in in length $times$ 28 in height.],
  caption: [Roller Design Selection Requirement Table]
)
In order to ensure even glue application, the plates must be pressed into the adhesive roller without altering the angle at which the jig and rollers meet. Therefore, the system must somehow provide this downward force. The speed of the roller directly correlates with the manufacturing speed. Since there are two plates in each jig, then 5000 cycles results in the production of 10,000 plates or 10 full heat exchangers. The dimensions of the roller and vat are constrained by requirement (4).
// 1. Must be able to provide at least 3 lb of force (adjustable to $plus.minus 1 "lb"$) per MPHX plate with an angular deformation within $8 times 10^(-4) "rad"$.
// 2. Must be able to process 1000 modules in 8 hours
// 3. Must be able to last at least 5,000 cycles
// 4. Maximum dimensions of 6 in length $times$ 18 in width $times$ 28 in height 

=== Feed Mechanism
Table 5 includes the design requirements for the feed subsystem.

#requiremement-table(
  [F2) Processing Speed], [Must be able to process 500 jigs in 8 hours.],
  [F3) Durability], [Must be robust to complete at least 5,000 modules cycles.],
  [F4) Subsystem Dimensions], [Maximum dimensions 6 in width $times$ 18 in length on each side of adhesive applicator $times$ 24 in height],
  caption: [Feed Mechanism Selection Requirement Table]
)

For the feed, we determine that we need a simple system that could cleanly pass MPHX modules in and out of the adhesive application rollers. The design needed to be durable to meet the system lifetime requirement. Built-in adjustability was an added benefit to allow the system to be tweaked if needed. The feed is the largest component of our design, but had to be limited in size to fit within a standard fume because the adhesives being applied are known to produce toxic gases which must be extracted while the system is in operation.

== Roll Down on Requirements 
 
The water channel pressure requirement (1) was rolled down to most subsystems. The adhesive subsystem was so central to this requirement that requirement (1) rolled down into two subsystem requirements: First, the MPHX plate and lamina had to adhere in the first place to support pressure, giving the material compatibility requirement (A1-a). Second, the glue itself has to withstand the water pressure of 10 psig (A1-b). We also determined in @SpringLoad that for the glue to be applied successfully the roller must apply 3 lb of compressive force per plate, requirement (R1). Using a design of 2 MPHX modules per jig this necessitates the jig supporting 6 lb of compressive force, requirement  (J1).

The throughput requirement (2) of 1000 plates per 8 hours also rolled down to most subsystems. Using a jig design with 2 MPHX plates per jig, that meant that the feed and roller must be able to process 500 jigs per 8 hours, requirements (R2, F2). This also necessitated a short cure time in order to reuse the jigs several times in one work day: we chose a maximum of 45 minutes (A2) in order to be able to make at least 10 full runs in the work day. Requirement (J2) of having the potential to make at least 50 jigs follows by dividing 1000 plates per day by 2 plates per jig and 10 batches per day. Note that if the adhesive cure is decreased then it decreases the number of jigs needed proportionally.

The geometry requirement (4) applied to all subsystems except the adhesive. To fit the 5 ft length of the fume hood, we allocated 3.5 ft to the machine proper, 1 ft to jig stacks (J4), leaving 6 in free. Since the roller was expected to be reasonably short we allocated it 6 in (requirement R4) and allocated the remaining 3 ft symmetrically to 1.5 ft on each side (requirement F4). For the 2 ft width, we allocated 1.5 ft to each subsystem and allowed 6 in to give a reasonable gap on each side. While the fume hood itself is taller, the sash could only open to at most 2.5 ft, so all subsystems were restricted to that height to allow the machine to be easily inserted and removed without disassembly.
// 1. Must be able to process 1000 modules in 8 hours
// 2. Must be robust to complete at least 10,000 modules worth of cycles
// 3. Maximum width of 18", maximum length of 18" on each side of adhesive applicator and a maximum height 24"



//=== Adhesive Selection

//The adhesive's most obvious function is to hold the MPHX plate and lamina together, so it inherited Requirement 1 nearly verbatim. The adhesive also had to be chemically compatible with the materials already in use for the system, i.e. ABS for the MPHX plate and PC for the lamina. Requirement 2, the throughput, also influenced our selection as we need a reasonably fast curing time in order to maximize manufacturing efficiency.

//=== Roller

//In order to meet Requirement 1 of adhesive strength, we needed the roller to provide adequate force to the MPHX plate in order to ensure glue adhesion to the plate. In @SpringLoad we calculated that the required force given our MPHX and adhesive selection is 3 lb. We recognize that the force needed represents a ballpark estimate, and therefore also required some adjustability in the jig and in the load applied in case of issues encountered in testing. 



//=== Jig 

//The jig subsystem has to fulfill several purposes in the design. First, the MPHX jig must hold the MPHX plate in place during the adhesive application. To that end, it must be able to position the MPHX in alignment with the roller, informing the required the lateral tolerance of the jig (Requirement 5). Since the lamina are somewhat oversized, the longitudinal tolerance can be slightly less. The jig must also sustain compressive force twice per cycle, first in the adhesive application as it passes through the roller, then in the clamping phase. The clamping phase requires 5 lb of compressive force (see @clampingforce) and the roller requires 6 lb of compressive force (see @SpringLoad), so taking the larger of the two gave a requirement of 6 lb loading. The fixture time of the selected adhesive is 30 minutes, so the throughput of 1000 modules per day (assuming 5 hours of working time and 3 hours other) gives a requirement of using 100 jigs in one working hour, as detailed in @jigstacking. The lifetime requirements also require that 10,000 MPHX modules be made, which at 100 jigs translates to a requirement that each jig must be reusable a minimum of 50 times.