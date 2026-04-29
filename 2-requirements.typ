== Final Product Design Requirements <quantrequirements>

//tabulate the desgin requirements 

The design requirements for the full system are.
+ Adhesive strength: The system must produce MPHX modules which can withstand 10 psi of internal pressure.
+ High throughput: The system must be able to produce at least 1 heat exchanger (1000 modules) in an 8-hour working day. 
+ Long life cycle: The system must be able to produce at least 10 heat exchangers in its lifetime.
+ Form factor: The system must fit within a 6' standard fume hood (5' length $times$ 2' width $times$ 2.5' height)
+ MPHX-lamina alignment: Must align within 1.5 mm laterally and 3 mm longitudinally.

In the following sections, a matching number indicates that a requirement was rolled down from the requirements above.

=== Adhesive Selection
1. Adhesive must be capable of sustaining 10 psi of internal pressure.
2. Adhesive must have a cure time of less than 24 hours, preferably within 1 hour.

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

== Design Requirement Updates 

As outlined in \@requirements, since Report 1 our team has worked closely with the sponsor to refine design requirements, making them more specific and measurable. The initial requirements were broad and largely qualitative, providing limited guidance beyond the expectation that the system should function as intended. The requirements set forth in @quantrequirements  are designed to be quantitative and measurable. A major change in our requirements came out of our selection of Oates Milky Clear ABS Cement as our adhesive. Since ABS and PC are chemically incompatible, we could not find any nontoxic adhesives that could bind them strongly enough. The TIDS @OateySDS states that good ventilation is required, which for our purposes means that the machine must be able to operate in a fume hood; this changed Requirement 4 from merely "bench top size" to needing to fit within a fume hood. Our sponsor has worked to get us access to a 6' fume hood of standard dimensions, which at their smallest are 5'3" wide, 2' deep and 4' tall, with a sash opening to 2'4" @GenieFumeHood @LabconcoFumeHood.



== Roll Down on Requirements 

=== Adhesive Selection

The adhesive's most obvious function is to hold the MPHX plate and lamina together, so it inherited Requirement 1 nearly verbatim. The adhesive also had to be chemically compatible with the materials already in use for the system, i.e. ABS for the MPHX plate and PC for the lamina. Requirement 2, the throughput, also influenced our selection as we need a reasonably fast curing time in order to maximize manufacturing efficiency.

=== Roller

In order to meet Requirement 1 of adhesive strength, we needed the roller to provide adequate force to the MPHX plate in order to ensure glue adhesion to the plate. In @SpringLoad we calculated that the required force given our MPHX and adhesive selection is 3 lb. We recognize that the force needed represents a ballpark estimate, and therefore also required some adjustability in the jig and in the load applied in case of issues encountered in testing. 



=== Jig 

The jig subsystem has to fulfill several purposes in the design. First, the MPHX jig must hold the MPHX plate in place during the adhesive application. To that end, it must be able to position the MPHX in alignment with the roller, informing the required the lateral tolerance of the jig (Requirement 5). Since the lamina are somewhat oversized, the longitudinal tolerance can be slightly less. The jig must also sustain compressive force twice per cycle, first in the adhesive application as it passes through the roller, then in the clamping phase. The clamping phase requires 5 lb of compressive force (see @clampingforce) and the roller requires 6 lb of compressive force (see @SpringLoad), so taking the larger of the two gave a requirement of 6 lb loading. The fixture time of the selected adhesive is 30 minutes, so the throughput of 1000 modules per day (assuming 5 hours of working time and 3 hours other) gives a requirement of using 100 jigs in one working hour, as detailed in @jigstacking. The lifetime requirements also require that 10,000 MPHX modules be made, which at 100 jigs translates to a requirement that each jig must be reusable a minimum of 50 times.






== Subsystem Interactions 

=== Roller 

==== Roller Super-Structure 
The roller super-structure provides the primary support for the adhesive roller subsystem, which is mounted via a base plate secured to the adhesive pan. It also supports the pressure rollers, which apply force to ensure an even coating of adhesive on the MPHX plates. The structure is designed to allow unobstructed access to the adhesive pan for maintenance and cleaning.

===== Pressure Rollers
A crossbar spans the adhesive roller subsystem and supports the pressure rollers, which are mounted to 80/20 extruded rail (of the roller super-structure). This crossbar can be unlatched and raised, enabling removal of the adhesive roller assembly once it is unbolted from the base plate for cleaning.

==== Adhesive Roller 
The adhesive roller subsystem is housed between the two sections of the feed assembly. It is mounted to the roller super-structure via a base plate, to which the entire assembly is secured. As previously described, pressure rollers are positioned directly above the adhesive rollers.

The adhesive rollers interact with the jig through a knurled surface. The knurling provides feeding friction and insures uniform take up and distribution of adhesive. 



==== Motor Subassembly

The motor provides driving power to the adhesive rollers through a flexible coupling. It is part of the roller super-structure and is mounted to the same base plate as the adhesive roller subassembly.

==== Electrical Assembly
The electrical components are directly tied to the operation and control of the roller assembly. The embedded socket will be soldered into the terminals of the DC power supply, allowing the device to be powered by plugging it into a standard wall socket. This connection can be done with any female-male extension cord, as the socket is embedded into the top of the electrical box. The switch on the speed controller will turn the roller mechanism on, and turning the dial will allow the operator to determine the speed at which the roller rotates and applies adhesive to the MPHX plates. 
=== Jigs

The MPHX jig is fed through the feed subsystem and over the adhesive roller subsystem. The feed subsystem is divided into two sections, positioned on either side of the roller subsystem, to allow unobstructed contact between the jig and the rollers. The feed subsystem also incorporates a pressure roller assembly, which applies force to the jig as it passes over the adhesive rollers.

After being put through the feed subsystem, the jig is removed and placed onto the lamina jig. The lamina jig holds pre-cut sheets of lamina and features extrusions that enable uniform pressure to be applied to the plate ridges during the adhesive curing process.


=== Feed 

The feed subsystem's purpose is to move the jig over the adhesive roller. The entire system is constructed using 80/20 extruded rail. This is done such that the system is full adjustable. The height of the feed track which the jig rolls on can be adjusted in height. In addition the distance between the feed track can be adjusted to ensure that there is no fiction between the rails and jig allowing for the jig to smoothly slide along the feed system. 

This subsystem is connected to the roller super-structure via the base plate of the roller super-structure assembly which has hole for T-slot nuts to slide into the 40-8020 rail of the feed subsystem




== Requirements Flowdown Chart