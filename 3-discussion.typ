#import "bin/template.typ": *
// 4.1) Discussion of requirements and rolldown to subsystems __/5.0
// Half points well described requirement updates, half points roll down discussion
// 4.2) Discussion of various subsystems and their interface __/10.0
// Half marks accurate and appropriate technical discussions, describes how subsystems work together
// Half marks for proper engineering drawing package
// 4.3) Proof that design will meet requirements (eg. calculations) __/10.0
// Accurate, well motivated/ related to requirements, reasonable assumptions stated
== Design Requirement Updates 

As outlined in @requirements, since Report 1 our team has worked closely with the sponsor to refine design requirements, making them more specific and measurable. The initial requirements were broad and largely qualitative, providing limited guidance beyond the expectation that the system should function as intended. The requirements set forth in @quantrequirements  are designed to be quantitative and measurable. A major change in our requirements came out of our selection of Oatey Milky Clear ABS Cement as our adhesive. Since ABS and PC are chemically incompatible, we could not find any nontoxic adhesives that could bind them strongly enough. The SDS @OateySDS states that good ventilation is required, which for our purposes means that the machine must be able to operate in a fume hood; this changed Requirement 4 from merely "benchtop size" to needing to fit within a fume hood. Our sponsor has worked to get us access to a 6' fume hood of standard dimensions, which at their smallest are 5'3" wide, 2' deep and 4' tall, with a sash opening to 2'4" @GenieFumeHood @LabconcoFumeHood.

// The *quantitative* requirements of our system are as follows: 

// + The system must be capable of producing 1000 modules in an 8-hour working day 
// + The system must be capable of producing at least 10 heat exchangers in its lifetime.  
// + The system most produce MPHX modules that are capable of withstanding 10 psi of internal pressure
// + The system must apply sufficient pressure to the MPHX plate during the glue application process 
// + Adequate force must be maintained on the jigs throughout the adhesive curing time.


// In addition to these qualitative requirements, we have continued to refine and specify quantitative requirements since Report 1. Through adhesive testing conducted in recent weeks, our team has identified new challenges that the system must address, including the short pot life of the adhesive. These findings, in collaboration with our sponsor, have led to the development of the following additional requirements:

// - The system must be easily cleanable. 
// - Sufficient pressure must be applied to pull the jig through the rollers and ensure uniform coating of the plate ridges.
// - The system must fit within a standard sized fume hood
== Design Requirements <quantrequirements>
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



== Roll Down on Requirements 

=== Adhesive Selection

The adhesive's most obvious function is to hold the MPHX plate and lamina together, so it inherited Requirement 1 nearly verbatim. The adhesive also had to be chemically compatible with the materials already in use for the system, i.e. ABS for the MPHX plate and PC for the lamina. Requirement 2, the throughput, also influenced our selection as we need a reasonably fast curing time in order to maximize manufacturing efficiency.

=== Roller

In order to meet Requirement 1 of adhesive strength, we needed the roller to provide adequate force to the MPHX plate in order to ensure glue adhesion to the plate. In @SpringLoad we calculated that the required force given our MPHX and adhesive selection is 3 lb. We recognize that the force needed represents a ballpark estimate, and therefore also required some adjustability in the jig and in the load applied in case of issues encountered in testing. 

// To meet the pressure on MPHX requirement, we have selected springs that are capable of excertning the nessary force (link to calculations). 

// The top roller assembly includes shims that we can add to increase or decrease the force the jig experiences

// furthermore, the top roller vertical spacing from the roller can also be adjusted thanks again to the 80x20, giving us another angle of adjustment

// The roller can also be removed thanks to 

=== Jig 

The jig subsystem has to fulfill several purposes in the design. First, the MPHX jig must hold the MPHX plate in place during the adhesive application. To that end, it must be able to position the MPHX in alignment with the roller, informing the required the lateral tolerance of the jig (Requirement 5). Since the lamina are somewhat oversized, the longitudinal tolerance can be slightly less. The jig must also sustain compressive force twice per cycle, first in the adhesive application as it passes through the roller, then in the clamping phase. The clamping phase requires 5 lb of compressive force (see @clampingforce) and the roller requires 6 lb of compressive force (see @SpringLoad), so taking the larger of the two gave a requirement of 6 lb loading. The fixture time of the selected adhesive is 30 minutes, so the throughput of 1000 modules per day (assuming 5 hours of working time and 3 hours other) gives a requirement of using 100 jigs in one working hour, as detailed in @jigstacking. The lifetime requirements also require that 10,000 MPHX modules be made, which at 100 jigs translates to a requirement that each jig must be reusable a minimum of 50 times.




== Subsystem Interactions 

=== Roller 

==== Roller Super-Structure 
The roller super-structure provides the primary support for the adhesive roller subsystem, which is mounted via a base plate secured to the adhesive pan. It also supports the pressure rollers, which apply force to ensure an even coating of adhesive on the MHX plates. The structure is designed to allow unobstructed access to the adhesive pan for maintenance and cleaning.

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

The feed subsystem's purpose is to move the jig over the adhesive roller. The entire system is constructed using 80/20 extruded rail. This is done such that the system is full adjustable. The height of the feed track which the jig rolls on can be adjusted in height. In addition the distance between the feed track can be adjusted to ensure that there is no fuction between the rails and jig allowing for the jig to smoothly slide along the feed system. 

This subsystem is connected to the roller super-structure via the base plaate of the roller super-structure assembly which has hole for T-slot nuts to slide into the 40-8020 rail of the feed subsystem



== Design Verification 

=== Adhesive Selection Verification
To evaluate the bonded samples (ABS pipe bonded to PC film), three specimens were pressurized to 50 psig in 5 psi increments. At each increment, the pressure was held for 5 minutes. No samples exhibited failure or leakage throughout the testing. @pressure presents the pressure profile of the samples over time. 

#figure(
  caption: [Pressure Incrementation Graph],
  [#image("images/pressure.png", width: 50%)]) <pressure>
@setup shows the experimental setup used to pressure test the adhesive.

  #figure(
  caption: [Experimental Setup],
  [#image("images/Setup.png", width: 40%)]) <setup>
  
Through the adhesive testing process, our team was also able to verify that a key requirement from Report 1 can be met. Pressure testing confirmed that the selected adhesive can withstand the required 10 psig for successful operation of the heat exchanger. Because the system will operate with water flowing through it, compatibility with water was also evaluated. The selected adhesive is designed for plumbing applications, confirming its suitability for this use case.


=== Determining Motor Speed


#text(size: 1.0em, weight: "bold")[Production Goal:] <production-goal>

Our team aims to glue 1000 plates in 5 hours. We decided on this number because one polymer heat exchanger requires 1000 plates. The 5 hours do not include cleanup time and prep time; it only accounts for the time during which the roller is applying adhesive. Our system can glue two plates at once, meaning we need to apply adhesive to 500 jigs in 5 hours. Our team aims to be able to adhere all modules required for one heat exchanger within an 8 hour working day. This assumes approximately 3 hours of prep and cleanup time. 

#text(size: 1.0em, weight: "bold")[Plate Travel per Roller Revolution:]

Distance traveled per revolution: 

$1.5 dot pi = 4.71 $

Length of MPHX plate:

13.78 in 

Number of revolutions to traverse jig: 

$13.78 /4.71 = 2.92  approx 3 "rev"$

#text(size: 1.0em, weight: "bold")[Total Revolutions Required:]

$3 "revolutions" dot 500 "jigs" = 1500 "revolutions total"$

To complete 1500 revolutions in 5 hours:

$1500 / 5 = 300 "rev/hr"$

$300 / 60 = 5 "rpm"$
This establishes a *minimum motor speed of 5 rpm*.

#text(size: 1.0em, weight: "bold")[Adhesive Pot Life Constraint:] <glue-constraint>

These estimates are based on the assumption that the pot life of the adhesive can be extended by adding supplementary solvent at periodic intervals during the gluing process. If it is impossible to extend the pot life of the adhesive, this will affect the speed at which the motor has to run in order to be able to complete 500 jigs (1000 plates) in 5 hours. Through experimentation, we determined that the adhesive begins to skin over after approximately 5 minutes when left in an open vat, which we will assume to be the pot life of the adhesive. This time limit constrains how long the adhesive can be effectively used during the gluing process. In the worst-case scenario, we will not be able to thin the adhesive with the addition of solvent. An approximate cleanup time of 5 minutes will follow each 5-minute run of the system. This gives 30 minutes of glue application time per hour, in which we want to apply glue to 100 jigs. 

#text(size: 1.0em, weight: "bold")[Worst-Case Motor Speed Requirement:]

To process 100 jigs in 30 minutes:

$3 "revolutions" dot 100 "jigs" = 300 "revolutions total"$

$(300 "rev") /( 30 "min" ) = 10 "RPM"$

This establishes an *upper bound motor speed of 10 RPM*.

#text(size: 1.0em, weight: "bold")[Motor Selection:]

Our team plans on using an *18 RPM motor* with a *speed controller* so we have the flexibility to adjust speed. The RPM of our selected motor is well within our calculated specs.

#text(size: 1.0em, weight: "bold")[AC to DC Converter Selection:]

The motor we selected requires an input voltage of 12V, and we would like our system to receive power from a standard AC outlet. We selected Digikey's LRS-35-12 AC to DC converter. It has an input voltage range of 85-264 VAC, which means it is capable of handling the standard AC wall voltage in the United States of 120 VAC. The converter supplies an output of 12 VDC and 3 amps. This supplies the necessary 12V to the motor and speed controller, which are both specified for 12 VDC.


#text(size: 1.0em, weight: "bold")[Adhesive Thinning Investigation:]

Our group will explore adhesive thinning to extend the pot life, provided the bond strength is not affected. These experiments will be documented next quarter when our team has access to respirators and a fume hood.

The solvent data sheet (SDS) indicates the solvent mixture consists of @OateySpecialMedium:

- 30–60% MEK  
- 10–30% acetone 

When thinning the adhesive, similar solvent ratios will be maintained to avoid
reducing adhesion strength.

#text(size: 1.0em, weight: "bold")[Additional Pot Life Mitigation:]

To further increase the effective pot life, we recommend turning off the motor between plates so that additional mixing does not accelerate solvent evaporation or reduce the adhesive’s usable time.

Our team will also provide a cover for the vat that can be easily placed over the vat by undoing the latch holding the top bar in place and lifting it out of the way. 


=== Determine Spring Force <SpringLoad>

According to the Handbook of Pressure Sensitive Adhesive Technology, the amount of force applied to a coating roller for a solvent-based adhesive with a viscosity between 500 and 5000 cP (our adhesive is 500 to 1500 cP @OateySpecialMedium) and should be 10-25 lbs per linear inch of force for full contact of roller to material @PressureSensitiveHandbook. 
 
Total width of ribs on MPHX plate: 

$7.8 "mm"$ 

Required Force: 

$10 "lbs/in" dot ((1"inch") /(25.4 "mm") ) dot 7.8 "mm" = 3.07 "lbf/MPHX Plate"$

Therefore, approximately *3 lbf per plate* is required.

#text(size: 1.0em, weight: "bold")[Determining Spring Compression:]

A spring with a 5" diameter and 1.19" free length @W100CS119Inch was selected based on a preliminary estimate of required spring rate which we wanted to be around 3 to 4 lbf/in. 

To achieve 3 lb of compression on each MPHX plate, two springs and three bearings will press against each MPHX plate. Each jig holds two plates, thus two compression assemblies (pressure rollers) are required to apply pressure to the plates.

Required compression for the selected spring: 

- Initial spring compression: set so 3 lbf of force is applied to each plate (1.5 lbf of force per spring)
- Selected spring rate: 4.1 lbf/in, whcih determines the required compression to achieve desired force

Compression of each spring:

$(1.5 "lbf ")/ 4 = .375 "in" $

Compressed spring length:

$1.19 "in" - .375"in" = .815 "in" $

The compression assembly is designed to have some adjustability of force using removable spacers to apply varying compression to the spring. This will allow us to vary the amount of force on the plates in the prototyping process. We will start with 3 lbf and adjust as needed. We sized the spacers such that 2 stacked together apply 3 lbf of force. Using the spacers, we can vary the force in 0.5 lbf increments per spring. 

=== Determining Roller Traction On Jig <tractionforce>

In order to verify that the adhesive roller will successfully pull the jig through the system, the static frictional force between the knurled adhesive roller and the MPHX surface must be calculated.

For clean and dry contact between hard metals and thermoplastics, the static coefficient of friction typically ranges from *0.35-0.40* @FrictionCoefficientsCommon. For knurled surfaces, the coefficient of static friction is approximately *73%* higher than that of smooth surfaces @seoComparisonTwoMethods2009. Therefore, the expected coefficient of static friction ranges from *0.6055-0.692*. This static friction arises from the points of the knurling gripping the plastic surface of the MPHX plate.

It is not expected that a thin layer of adhesive will significantly change this metal-to-plastic contact. Additionally, there are limited resources available to verify this assumption, since static friction must generally be determined experimentally. To our knowledge, there is no published research on the static friction of high-viscosity, wetted knurled surfaces. However, this can be easily determined once the apparatus is constructed and operating by pulling the jig with a spring scale until slipping occurs. For now, we must rely on estimated values.

As mentioned in @SpringLoad, the load required for each MPHX plate is 3 lbf, and 6 lbf per jig since there are two plates per jig. Therefore, the worst-case force required to cause slippage at the roller is:

$0.6055 dot 6 "lbf" = 3.633 lbf $

The jig rides on lubricated ball bearings, so it is not expected that the frictional resistance of the bearings will exceed this force. As a result, the jig should pass through the roller without slipping, especially since the bearings are operating under relatively low loads and low rotational speeds.

=== Fatigue Analysis On Springs 

We will analyze the fatigue of the spring components in the pressure rollers using the Goodman criterion to ensure that our apparatus can withstand 5,000 cycles (the number of cycles required to create 10 heat exchangers). The springs we are using experience a force of 0.5/3 lbf, or 1.67 lbf per millimeter of compression @W100CS119Inch. In @SpringLoad, we determined that the load per spring is 1.5 lbf for consistent glue application. We achieved this force by compressing the spring 0.375", which applies a constant load of 1.5 lbf to each spring. The feed is constrained in such a way that the springs will only experience a few millimeters of additional compression when a jig passes underneath. For this calculation, we will assume 2 mm of additional compression, which will be the applied alternating load on the spring.


#text(size: 1.0em, weight: "bold")[Goodman Criterion:]


The Goodman fatigue safety factor is @ShigleysMechanicalEngineering:

$
n_f = (tau_a / (S#sub[se]) + tau_m / (S#sub[su]))^(-1)
$
#text(size: 1.0em, weight: "bold")[Supporting Equations:] @ShigleysMechanicalEngineering

Endurance strength of the spring:

$
S#sub[se] = (S#sub[sa]) / (1 - (S#sub[sm]) / (S#sub[su]))
$

Shear stress amplitude:

$
tau_a = K_B (8 F_a D) / (pi d^3)
$

Mean shear stress:

$
tau_m = K_B (8 F_m D) / (pi d^3)
$

#text(size: 1.0em, weight: "bold")[Spring Geometry:] @ShigleysMechanicalEngineering

Wire diameter:

$
d = "OD" - D
$

Mean coil diameter:

$
D = "OD" - d
$

Spring index:

$
C = D / d
$

Bergsträsser factor:

$
K_B = (4C + 2) / (4C - 3)
$

#text(size: 1.0em, weight: "bold")[Material Properties Of Unpeened Springs:] @ShigleysMechanicalEngineering

$
S#sub[sa] = 35 "ksi" = 241 "MPa"
$

$
S#sub[sm] = 55 "ksi" = 379 "MPa"
$

Ultimate tensile strength @302StainlessSteel:

$
S#sub[ut] = 585 "MPa"
$

Ultimate shear strength @ShigleysMechanicalEngineering:

$
S#sub[su] = 0.67 S#sub[ut]
$ 

#text(size: 1.0em, weight: "bold")[Forces Acting On the Spring:]

Mean Force:

$
F_m = 1.5 "lbf" = 6.67233 "N"
$ 

Alternating Force @W100CS119Inch:

$
F_a = "spring rate" dot "additional compression"\
= 4.1 "lbf/in" dot "additional compression (in)"\
= .718 "N/mm" dot "additional compression (mm)"
$ 


#text(size: 1.0em, weight: "bold")[Results:]

The calculations were performed using MATLAB code, which can be found in @appx-spring. The spring compression was varied from 1 mm to 4 mm to evaluate the resulting fatigue safety factor. The worst-case condition occurred at a compression of 4 mm, which resulted in a safety factor of 1.21. According to the Goodman criterion, this safety factor corresponds to an infinite fatigue life, indicating that the spring will successfully withstand the required 5000 cycles.

=== Deformation Analysis of Axle
We require our machine to manufacture at least 5 full heat exchangers, which at 1,000 plates per heat exchanger and 2 plates per cycle, requires the roller to successfully manufacture for
$
  5 "HX" times 1000 "plates/HX" times (1 "cycle")/(2 "plates") = 5000 "cycles".
$
without failure.
We also require that the shaft not deflect excessively, which requires a deflection of less than $8 times 10^(-4) "rad"$ @ShigleysMechanicalEngineering.

The analysis was performed by modeling the shaft as a simply-supported beam (with supports at the bearings) under loading in the $y$ (vertical) and $z$ (lateral) directions, with a vertical force of $F_y = 3 "lbf"$ per roller (@SpringLoad) and a very conservative lateral force of $F_z = 0.6 times 3 "lbf" = 1.8 "lbf"$ (@tractionforce). Assuming a uniform load on the rollers, this gives a force density of
$
omega_y &= F_y/l_"roller" = (3 "lbf" )/ (2.1 "in") = 1.42 "lbf/in" \
omega_z &= F_z/l_"roller" = (1.8 "lbf" )/ (2.1 "in") = 0.857 "lbf/in" \
$
The symmetry of the loading dictates that each bearing reaction equals the force on one roller, and the motor torque must equal the total torque on the rollers. A MATLAB Program was set up to model the shear force using singularity functions as
$
  V_y (x) &= F_y chevron.l x - x_A chevron.r^0 - omega_y chevron.l x - x_B chevron.r^1 + omega_y chevron.l x - x_C chevron.r^1 - omega_y chevron.l x - x_D chevron.r^1 + omega_y chevron.l x - x_E chevron.r^1 - F_y chevron.l x-x_F chevron.r^0 \
  V_z (x) &= F_z chevron.l x - x_A chevron.r^0 - omega_z chevron.l x - x_B chevron.r^1 + omega_z chevron.l x - x_C chevron.r^1 - omega_z chevron.l x - x_D chevron.r^1 + omega_z chevron.l x - x_E chevron.r^1 - F_z chevron.l x-x_F chevron.r^0 .
$
The bending moments were applied by numerical integration, using the fact that the moment will be zero at the edges:
$
  M_z (x) &= integral_0^x V_y (x') d x', \
  M_y (x) &= integral_0^x V_z (x') d x'.
$

Similarly, the slopes $theta_y, theta_z$ and displacements $delta_y, delta_z$ were found by integrating $M_z\/E I$ and $M_y\/ E I$ and enforcing the boundary conditions that the slope halfway between supports should be zero (due to symmetry) and the deflection at the supports is zero. The total bending moment, slope, and deflection were obtained by orthogonal vector addition ($M=sqrt(M_y^2+M_z^2)$, etc.). The modulus of elasticity of the carbon steel axle is approximately 30 ksi @ShigleysMechanicalEngineering.

#figure(grid(columns:2,
  image("images/axle_load_xy.pdf"),
  image("images/axle_load_xz.pdf"),
  image("images/axle_load_combined.pdf"),
),caption:"Loading Diagrams for the axle."
) <shaft-force-diag>

The diagrams in @shaft-force-diag show the maximum bending moment occurs in the center at $8.74 "lb"$, the maximum slope occurs at the center at $4.33 times 10^(-6) "rad"$, and the maximum deflection occurs in the center at $8.95 times 10^(-6) "in"$. The maximum slope is far below the maximum allowable slope, with a safety factor of 184.

We also preformed finite element analysis on the part as seen in @sim.

=== Axle Life Cycle Analysis
The axle has to last for at least 5000 cycles according to Requirement 3. Given that AISI 1018 steel has an ultimite tensile strength of $S_"ut" = 64 "ksi"$ @ShigleysMechanicalEngineering, the ultimate strength is given by
$
  S_e = k_a k_b S_e' = k_a k_b (S_("ut"))/2,
$
where the surface factor is given by $k_a = a S_"ut"^b$ with $a = 2$, $b=-0.217$ and $S_"ut"$ in ksi, and $k_b = (d\/0.3)^(-0.107)$ with diameter $d$ in inches. This altogether gives an endurance life of 21.85 ksi.

The torque loading is applied roughly as a square wave alternating between 0 and the full load, whereas the rotating nature of the shaft makes the bending load fully reversible. A simple approximation that captures the most damaging behavior is to split the bending and torque into mean and alternating components, and assign the moment fully to the alternating component, $M_a = M, M_m = 0$ and the torque has a mean of half of its intensity and alternating the other half, $T_m = T\/2, T_a = T\/2$. The mean and alternating Von Mises stresses are then
$
  sigma'_m &= sqrt(3)T_m, \
  sigma'_a &= sqrt(M_a^2 + 3T_a^2)
$
Note that the stresses are taken where the moment is highest, as that is the largest load. Analogous calculations where the torque is highest provided a larger safety factor.
The Goodman safety factor given this loading condition is then given by
$
 n_f = (sigma'_m/(S_"ut") + sigma'_a/S_e)^(-1) 
$
The MATLAB simulation in @matlabshaft gives a factor of safety of 735, showing that the shaft can withstand much larger loads than this with no issues. Given the large factor of safety for even this large cycle, a rainfall analysis of smaller cycles in the machine operation was deemed unnecessary.


=== Glue and Lamina Adhesion Force <clampingforce>
To make sure the jig properly holds the lamina and glued MPHX plates during the drying process, the force needed to be applied must be calculated. The glue (Oatey Special Medium) used does not specify a required pressure to ensure bonding. Directions on the container only say to "hold the pipe and fitting together for 30 seconds" or longer, depending on the temperature.

Without a definite number, an estimate was assumed to be the average of two on the market clamps. These clamps were: _Irwin Quick-Grip 4.25in X 1-3/16 in. D Micro Bar Clamp and Spreader 35lb_ (#link("https://www.acehardware.com/departments/tools/hand-tools/bar-clamps/2386852?store=17424&gclsrc=aw.ds&gad_source=1&gad_campaignid=20155428902&gbraid=0AAAAADtqLJEtgbXsj4KqhD5_X0nM7dxIP&gclid=CjwKCAjwyMnNBhBNEiwA-Kcguy5qeXpSlHg73kD6v3P2OnuiosjhtsfUyaG2f80p3JZL5yRO1hRVdBoCPSIQAvD_BwE")[Reference A]) and _Irwin Quick Grip 12 in. X 3-1/2 in. D Bar Clamp 300lb_ (#link("https://www.irwintools.com/product/1964718/quick-grip-medium-duty-one-handed-bar-clamps?tid=578191")[Reference B]). The Irwin branded clamps were chosen specifically since they were used during the initial glue testing phase.

The clamping force of Reference A is 35 lbs with a clamping capacity of 4.25" and a depth of 1-3/16". Our tested sample area was a 1" diameter pipe with a 0.5" inner diameter. The pipe had surface area that we applied glue to of $A = pi dot (0.5)^2- pi dot (0.25)^2 "in"^2$. This gives an approximate applied pressure of $59.41784543 "psi." (P_A= (35lbf)/(0.5890486225"in"^2))$

Similarly, Reference B had a clamping force of 300lbs and a capacity of 12" with a depth of 3-1/2". The same test area of $0.5890486225"in"^2$ was used for the pressure approximation for Reference B. The pressure came out to be about $P_B = 509.2958179 "psi" (P_B= (300lb)/(0.5890486225"in"^2))$.

Since these were approximately the pressures the glues were held at during testing, the average of the two values can be taken as a conservative estimate for the glue's required bonding pressure.

With the bonding pressure estimated as 284.3568 psi; the equation for Pressure:

$ P=F_a/A "can be rewritten as " F_a=P dot A $

where:

$P = "the bonding pressure"$

$F_a = "force for glue and lamina adhesion"$

$A= "surface area of the bonded faces"$

Each of the MPHX plates has ridges with a surface area of 2186.94 $"mm"^2 = 3.396 "in"^2$

Plugging in values to solve for $F_a$:
$ F_a &= 284.3568317 "psi" dot 3.396 "in"^2\
  F_a &= 965.6758005 lbf
$

Therefore, the needed to be applied on the jig for the glue to ensure bonding is 965.6758005 lbf. To calculate the weight to be placed on top, assuming a distributed load, we can simply divide the force by gravity in terms of inches per second squared.

$ &F = m dot a \
  &965.6758005 lbf = m dot 386.09 "in"/"s"^2 \
  &m = 2.501167605 "lbs" $$
  "which is multiplied by two for two plates": m = 5.00233521 "lbs"$

Hence, a mass of 5 lbs will suffice as the weight on top of the jig in order to ensure bonding between the MPHX plate and the lamina. 


=== Jig Stacking Limits <jigstacking>
As mentioned earlier, our team aims to glue 1000 modules within one working day, specifically 500 jigs in 5 hours. Further broken down into 100 jigs in an hour. Ideally, the stacks should be of even distribution, so the number of stacks equals 100 divided by the number of jigs per stack.

The weight of each jig can be neglected when determining stacking limits due to the materials used (PLA, 0.05" thick shim stock, M3 and M4 sized screws, as well as the lamina and MPHX plate). Since the weight is not a deciding stack factor, the jig's height and volume dictate the stack sizing.

To determine the limitation of the jig stacks, we must first determine how tall each jig is. A full jig consists of: the MPHX jig, the lamina jig, the MPHX plate, and the lamina. The whole assembly sits 0.51" tall. A stack of 100 jigs would be 51" high, which is obviously unreasonable. To determine a reasonable stack size, we decided to match the stack size to the speed of the modules we plan on producing.

Since the goal is 100 plates in 30 minutes (with 5-10 minute application increments), a reasonable stack height was found to be 20 jigs. Using 20 jig stacks means that there will be 5 stacks total, leaving an extra 2 minutes of time for each stack to deal with any disruptions during the application process. The 20 jig stacks have a total height of 12.75", slightly more than 1', and fit well within the fume hood's limitations.