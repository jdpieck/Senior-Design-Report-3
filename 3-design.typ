== Design Function



=== Master Assembly 

The glue application manufacturing process can be broken down into 3 mechanical subsystems: 

- *Jig*
- *Roller *
- *Feed Mechanism*


Some of these overarching subsystems can be broken down into further subassemblies. The diagram in @MasterAssemblyFlow details the breakdown of each subsystem. 

#figure(
  caption: [Master Assembly Breakdown],
  [#image("images/MasterAssemblyFlow.png", width: 90%)]) <MasterAssemblyFlow>

  
 @MasterAssembly is the CAD model of our completed design. It features all subsystems of our finalized jig design. 
#figure(
  caption: [Master Assembly Isometric View],
  [#image("images/MasterAssembly.png", width: 90%)]) <MasterAssembly> 

*Overall, the general workflow of our system is as follows:* 

@flowchart illustrates the step-by-step operational workflow of the system, detailing the sequence from jig setup through adhesive application, stacking, and system cleaning.

#figure(
  caption: [System Operation Workflow Diagram],
  [#image("images/WorkflowDiagram.png")]) <flowchart>

  
The MPHX-loaded jig moves through the system as shown in @JigPath.
  #figure(
  caption: [Jig Path],
  [#image("images/SystemPassThrough.png", width: 90%)]) 
  <JigPath>

#pagebreak()
  As seen in @CrossSection, the MPHX modules come into contact with the adhesive rollers at the same time the jig comes into contact with the top idler rollers. The rollers on top provide a constant force, ensuring that the modules always remain in  contact with the adhesive rollers as they pass through. As the rollers rotate, they are constantly re-coated in adhesive from the vat, and the coat is made uniform using a squeegee detailed in @AdhesiveRoller. The entire system is driven by a single 12V motor with adjustable speed using an auxiliary electrical control box, which can be plugged into an AC outlet.

  #figure(
  caption: [Critical System Cross Section],
  [#image("images/Cross Section.png", width: 90%)]) 
  <CrossSection>


#pagebreak()
=== Roller 

Figure @rollerassy shows the complete roller subsystem, which includes the roller super-structure, pressure roller subassembly, adhesive roller assembly, and motor assembly. Each component is described in detail below.

#figure(
caption: [Roller super-structure CAD labeled with key components],
[#image("images/RollerAssy.png", width: 90%)]) <rollerassy>

#pagebreak()
==== Roller Super-Structure 

The pressure roller is a subassembly of the roller system. The two feed assemblies are joined together by the pressure roller assembly as seen in @MasterAssembly. This assembly consists of 80/20 aluminum extrusion, a base plate (4) that connects the roller assembly to the feed assemblies, a latch mechanism (2,3), and the pressure rollers (1). @super-structure shows a labeled and numbered CAD model of the system.

#figure(
caption: [Roller super-structure CAD labeled with key components],
[#image("images/Super-Structure.png", width: 90%)]) <super-structure>

The latch and hinge mechanism, shown in @latch, provides easy access to the adhesive pan for cleaning and allows the pan to be covered between uses to prevent adhesive drying.

#figure(
caption: [Latch mechanism],
[#image("images/LatchDemo.png", width: 90%)]) <latch>

#pagebreak()
===== Top Rollers 
The top rollers (or pressure rollers) are a part of the roller super-structure assembly. They are constructed from a 3D-printed housing that contains a spring-loaded shaft. Bearings (1) mounted on the shaft provide contact with the jig as it passes over the adhesive rollers. Upon contact, the shaft (2) is free to translate upward within the housing. Spacers (4) are used to pre-load the springs (3), establishing the desired normal force applied to the jig. Further details on the force calculation are provided in @SpringLoad. A section view of the pressure roller assembly is shown in @PressureRollerSection to illustrate the spring mechanism.

#figure(
caption: [Top roller additional views],
[#image("images/PressRollSection.png", width: 90%)]) <PressureRollerSection>

The base plate serves as a connector between the two feed assemblies, the adhesive roller, and the pressure roller assembly. The bar to which the pressure rollers are attached is both hinged and latched, allowing it to be raised for easy access to the adhesive vat for cleaning and covering between batches.

==== Roller for Adhesive <AdhesiveRoller> 
The adhesive roller assembly serves as the core of our design. This subsystem is responsible for applying adhesive to the MPHX plates, enabling the lamina to bond to the plate surface.

When choosing our application method, we previously weighed the pros and cons of a roller versus a stamp. Because we selected a solvent-based adhesive with a significant viscosity (500--1500 cP @OateySpecialMedium), we opted for a roller design. For reference, our adhesive is much thicker than maple syrup, which typically has a viscosity of only 150--200 cP @ViscosityChart; a stamp would not be able to properly distribute such a viscous fluid. 

As seen in @report1, our original design featured a roller submerged in a vat of adhesive, over which the MPHX plates would pass. This design is very similar to adhesive rollers on the market made for applying adhesive to large surfaces. For the final design, we have maintained and implemented this same core concept. @AdhesiveRollerDia shows the CAD model of the adhesive roller subsystem, with key components labeled and numerically referenced.

#figure(
  caption: [Annotated adhesive roller system showing key components],
  [#image("images/AdhesiveRollerDia.png", width: 90%)]) <AdhesiveRollerDia> 


  
  
 Our design is composed of five main components. The first component is the tray, or adhesive vat. This part is a custom, outsourced component machined from aluminum. A metallic material is required due to continuous contact with adhesive and cleaning solvents. The system was designed with cleanability as a priority, given the relatively short pot life of the adhesive. The aluminum construction allows the vat to be easily cleaned by immersion in a solvent bath (acetone).

The second component is the set of rollers, which are also machined from aluminum to facilitate cleaning. The rollers are knurled to provide sufficient friction to pull the jig across their surface. They are mounted on an 8 mm steel shaft, which transmits torque from the motor to the rollers. The rollers are secured to the shaft using set screws, allowing for both torque transmission and axial positioning. Shaft collars are additionally used to locate the shaft within the tray.

A steel squeegee is incorporated to remove excess adhesive prior to plate contact, ensuring a uniform application. The squeegee is designed to be adjustable, allowing it to be repositioned to achieve the desired coating thickness on the rollers.

Finally, the bearing blocks are machined from Teflon. This material was selected due to its low friction and chemical inertness, particularly with respect to solvents such as acetone. As a result, the entire assembly can be cleaned without disassembly by simply immersing it in a solvent bath.

#pagebreak()
==== Motor Assembly 

The motor assembly consists of a purchased 18 RPM motor sourced from Amazon. This motor (1) is connected to the electrical assembly for power, as described in Section @elec-assem. The assembly includes a flexible coupling (3) that connects the motor output shaft to the adhesive roller shaft, as well as a spacer (2) to ensure proper alignment between the two shafts. In @MotorCAD is a CAD model of the motor subassembly. 

#figure(
caption: [Motor CAD labeled with key components],
[#image("images/MotorCAD.png", width: 90%)]) <MotorCAD>

#pagebreak()
==== Electrical Assembly <elec-assem>
The electrical assembly provides power and speed control for the motor. The electrical assembly is composed of an electrical box (1), DC power supply (2), male power socket (3), and speed controller (4-6) as shown in @ann-elec-assem.

#figure(
  caption: [Annotated Electrical Box Assembly],
  [#image("images/Annotated Elec Assem Drawing.png")]) <ann-elec-assem>

  #text(size: 1.0em, weight: "bold")[DC Power Supply and Speed Controller] 
  
Since the system controlled by the electronics is a simple roller than only needs to be turned on and off, we found it unnecessary to create a complex circuit to power the entire jig. Instead, we settled on an off-the-shelf speed controller, DC power supply, and socket. These systems will be secured to the electrical box.

For the system to operate as intended, wires will be soldered from the socket to the DC power supply and the dial and switch to the speed control board (not pictured). The speed controller will be directly powered by the DC power supply, meaning the power supply will be to the terminals on the speed controller board.

 #text(size: 1.0em, weight: "bold")[ Electrical Box] 
 
The primary purpose of this box is to keep sensitive wiring safe from outside disturbances and keep all components contained to a single, organized space. The box also hides all elements unrelated to the direct operation and control of the roller, such as the switch and dial of the speed controller. Therefore, the electrical box is the structure that houses all previously discussed electronic elements. 

To fit our purposes, the box will be modified from its original design (@ann-box-cutouts) by having holes drilled in the side and bottom to secure the DC power supply and speed controller, respectively (5,4). In addition, there will be appropriately sized slots cut into the top of the box for the socket (1), switch (3), and dial (2) to be inserted into and secured to.

#figure(
  caption: [Cutouts in Modified Electrical Box],
  [#image("images/Annotated Box Cutouts.png", width: 80%)])
  <ann-box-cutouts>

The socket and DC power supply will be secured to the top and right sides of the electrical box, respectively, using two M3 screws each. The speed controller circuit board will be secured to the box using M3 screws through the bottom attachment holes. The speed controller dial and switch will be secured to their respective attachment slots using super glue since they do not come with their own built-in attachment points.



#pagebreak()
=== Feed <FeedSection>

In Report 1, we opted for a locking-driven belt, which we have since forgone for the feed mechanism. Instead, we refined our design to prioritize simplicity, system reliability, and low cost. While we initially selected a locking mechanism in Report 1, we have since transitioned to a system of rollers made from bearings. This concept was considered in Report 1, but was not our final chosen design at the time.

In the updated design, the jig slides along these rollers, allowing adhesive to be applied to the MPHX plate while it remains in the jig. This approach still effectively “locks” the plates in the required upside-down configuration, while enabling the user to simply place the jig on the rollers and push it forward until the system engages the plate and pulls it through. An initial sketch of this design can be found in @report1. In @feedCAD is a CAD model of the feed subsystem with the key components labeled. 

#figure(
  caption: [Annotated feed system showing key components],
  [#image("images/FeedFeatures.png", width: 90%)])  <feedCAD>


The feed is composed of a superstructure built from 80/20 aluminum extrusion (1,4,5,6), which is held together by standard brackets (2,3), allowing adjustability in the system. The entire roller system can slide vertically and horizontally, allowing the feed height distance from the adhesive roller to be adjusted after assembly. Two parallel plates (7) support roller bearings, which spin freely, allowing the jig to pass above and roll into the adhesive application roller without friction. The feeds before and after the roller are identical assemblies.

Rubber feet on the bottom of the feed provide friction, preventing the system from slipping and keeping the system adequately level.





#pagebreak()
=== Jig <jig>
The jig assembly is composed of two subassembly jigs: the MPHX jig and the lamina jig. The jig assembly is vital to the project goal of bonding the glued plates with the lamina because it both holds the MPHX plates during the adhesive application process and aligns the lamina for proper bonding. The annotated jig assembly, as seen in @jig-annotated, features the MPHX jig after adhesive application, placed on top of the lamina jig, held together vertically by 4 M4 hex socket screws. 

#figure(
  caption: [Annotated Jig Assembly showing key components],
  [#image("images/Jig Diagram.jpeg", width: 90%)]) <jig-annotated>
  
 We ultimately decided on *channel slots* for the jig for ease of use. The MPHX will be slid into channels in the jig. It will be under features which hold down the rails of the jig. This facilitates unobstructed glue application to the ridges of the MPHX. For reference, the sketch of our original design from Report 1 can be found in @report1. We decided against moving forward with the alternative method (clips) because they would require the user to manually unclip and re-clip the plate for every application, and they would likely interfere with the roller's path. 




#pagebreak()
==== MPHX Jig <MPHX-jig>

The MPHX jig is composed of two 3D printed PLA pieces, shim stock, M3 button head screws, and glue to secure the shim stock. @MPHXjigCAD shows the CAD model of the MPHX Jig subsystem, with key components labeled and numerically referenced. 

#figure(
  caption: [Annotated MPHX Jig showing key components],
  [#image("images/MPHX Jig Diagram.jpeg", width: 90%)]) <MPHXjigCAD>
  
// #figure(
//   caption: [MPHX Jig Assembly Drawing],
//   [#image("images/PLATE JIG ASSEMBLY DRAWING.png", width: 90%)])

//   #figure(
//   caption: [MPHX Jig Assembly Bill of Materials],
//   [#image("images/PLATE JIG ASSEMBLY DRAWING BOM.png", width: 90%)])

The MPHX jig's first main components are its 3D printed baseplates (2,3). The baseplates are 3D printed using PLA filament and feature a channel slot for the MPHX plates to sit in. They also include a stopping edge to ensure the MPHX plates are centered within the jig's baseplate. The baseplate is split into two halves, the first (2) has the stopping (closed) edge and the second is open allowing the MPHX plates to be slid in. The baseplates are connected by a dovetail pattern and reinforced using shim stock lining on either side which. They are then attached to the baseplate using M3 button head screws. The screws self-thread into the PLA and button heads were selected because of their low profile which would reduce the chances of the jig catching in the feed.

Pieces of steel shim stock (4-6) are glued to the baseplate. They sit on top of the MPHX jig and are used to hang over and hold the railings on the MPHX plates. The shim stock holds the plates in the channel slots, allowing the MPHX jig to be flipped upside down for both the roller and lamina application processes. The baseplates have ridges outlining the locations of the shim stock, making it easier to align when gluing them in place.

The M3 button head screws (7) are used to hold together the two baseplate pieces. Shim stock (8) is used along the side of the baseplate (2,3) to further support and reinforce the connection.


#pagebreak()
The plates are inserted into the jig by sliding them underneath the shim stock railings. As shown in @plateinsert, the plates are inserted from one end of the jig and bottom out at the other, preventing them from slipping out.

#figure(
  caption: [Annotated MPHX jig showing plate insertion],
  [#image("images/PlateInsert.png", width: 90%)]) <plateinsert>



#pagebreak()
==== Lamina Jig <lamina-jig>

After receiving film samples from our sponsor, we discovered that each precut film is covered by a protective layer that must be peeled off by hand. Since this is a necessary manual step, we determined that a manual application process would be simpler and more efficient than an automated one. Even an automated system would still require the user to peel the film before inserting it, making automation unnecessary complexity. This led us to develop the lamina jig.

The lamina jig is composed of 4 main components, as seen in @ann-lamina-jig: two halves of 3D printed PLA, M3 button head screws, and steel shim stock.

#figure(
  caption: [Annotated Lamina Jig showing key components],
  [#image("images/Lamina Jig Diagram.jpeg", width: 90%)])
  <ann-lamina-jig>
  
// #figure(
//   caption: [Lamina Jig Assembly Drawing],
  // [#image("images/LAMINA JIG ASSEMBLY DRAWING.jpeg", width: 90%)]) <lam-jig>

  
The two halves of the lamina jig (1) as seen in @ann-lamina-jig fit together using a dovetail pattern. This locks the parts together and forms a continuous and even surface for the lamina to sit on. The halves features extruded alignment pins to hold the lamina corners. These were designed to hold the lamina tightly, securing it to the jig. This ensures proper pin alignment when the MPHX jig is placed on top. An inner strip is extruded slightly below the corner alignment pins to ensure lamina and MPHX plate contact when pushed together. Each jig half also has 4 corner holes at the edges where M4 hex screws attach for the final lamina adhesion. These screws connect the MPHX and lamina jig subassemblies into the full jig seen in @jig.

The steel shim stock (2) is connected along the lamina jig sides with glue and M3 screws (3) to ensure a proper hold. Once connected the two halves of the lamina jig do not need to be separated and will form the fully connected lamina jig shown in @ann-lamina-jig.

#pagebreak()
@LaminaFunction illustrates the placement of the lamina in the jig. 

#figure(
  caption: [Lamina placement ],
  [#image("images/LaminaFunction.png", width: 90%)]) <LaminaFunction>




We opted for a system that facilitates easy manual assembly. Once the plate runs over the adhesive roller in its jig, the user picks it up the upside-down plate jig and places it onto the lamina jig. This jig is designed with *corner location features* so the user can easily and accurately align the lamina. Because the jig is slightly raised, when pressure is applied to the assembled stack, the raised portions press the lamina directly onto the ridges of the MPHX plate. Finally, a weight is placed on top of the assembly for the 15-minute fixture time @OateySpecialMedium to ensure a secure bond.







== Bill of Materials
#include "3.2-bom.typ"