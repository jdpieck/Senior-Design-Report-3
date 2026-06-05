== Final Product Design Requirements <quantrequirements>

//tabulate the desgin requirements 

The design requirements for the full system are.
+ Adhesive strength: The system must produce MPHX modules which can withstand 10 psi of internal pressure.
+ High throughput: The system must be able to produce at least 1 heat exchanger (1000 modules) in an 8-hour working day. 
+ Long life cycle: The system must be able to produce at least 10 heat exchangers in its lifetime.
+ Form factor: The system must fit within a 6' standard fume hood (5' length $times$ 2' width $times$ 2.5' height)
+ MPHX-lamina alignment: Must align within 1.5 mm laterally and 3 mm longitudinally.
 


In the following sections, a matching number indicates that a requirement was rolled down from the requirements above.
== Roll Down on Requirements 
//need to be tabulated 

=== Adhesive Selection
1. Adhesive must be capable of sustaining 10 psi of internal pressure.
2. Adhesive must have a cure time of less than 24 hours, preferably within 1 hour.
3. Adhesive must be compatible with both ABS and polycarbonate.

=== Jig
1. Jig must withstand and transmit a compressive force of 6 lb.
2. Must be able to create at least 100 jigs.
3. Jigs must be reusable at least 50 times.
4. Jigs must have maximum dimensions of 18 in $times$ 18 in and stack to at most 28 in.
5. MPHX-Lamina Alignment: Must align within 1.5 mm laterally and 3 mm longitudinally.



=== Roller
1. Must be able to provide at least 3 lb of force (adjustable to $plus.minus 1 "lb"$) per MPHX plate with an angular deformation within $8 times 10^(-4) "rad"$.
2. Must be able to process 1000 modules in 8 hours
3. Must be able to last at least 5,000 cycles
4. Maximum dimensions of 6 in length $times$ 18 in width $times$ 28 in height 

=== Feed Mechanism
1. Must be able to process 1000 modules in 8 hours
2. Must be robust to complete at least 10,000 modules worth of cycles
3. Maximum width of 18", maximum length of 18" on each side of adhesive applicator and a maximum height 24"



//=== Adhesive Selection

//The adhesive's most obvious function is to hold the MPHX plate and lamina together, so it inherited Requirement 1 nearly verbatim. The adhesive also had to be chemically compatible with the materials already in use for the system, i.e. ABS for the MPHX plate and PC for the lamina. Requirement 2, the throughput, also influenced our selection as we need a reasonably fast curing time in order to maximize manufacturing efficiency.

//=== Roller

//In order to meet Requirement 1 of adhesive strength, we needed the roller to provide adequate force to the MPHX plate in order to ensure glue adhesion to the plate. In @SpringLoad we calculated that the required force given our MPHX and adhesive selection is 3 lb. We recognize that the force needed represents a ballpark estimate, and therefore also required some adjustability in the jig and in the load applied in case of issues encountered in testing. 



//=== Jig 

//The jig subsystem has to fulfill several purposes in the design. First, the MPHX jig must hold the MPHX plate in place during the adhesive application. To that end, it must be able to position the MPHX in alignment with the roller, informing the required the lateral tolerance of the jig (Requirement 5). Since the lamina are somewhat oversized, the longitudinal tolerance can be slightly less. The jig must also sustain compressive force twice per cycle, first in the adhesive application as it passes through the roller, then in the clamping phase. The clamping phase requires 5 lb of compressive force (see @clampingforce) and the roller requires 6 lb of compressive force (see @SpringLoad), so taking the larger of the two gave a requirement of 6 lb loading. The fixture time of the selected adhesive is 30 minutes, so the throughput of 1000 modules per day (assuming 5 hours of working time and 3 hours other) gives a requirement of using 100 jigs in one working hour, as detailed in @jigstacking. The lifetime requirements also require that 10,000 MPHX modules be made, which at 100 jigs translates to a requirement that each jig must be reusable a minimum of 50 times.













