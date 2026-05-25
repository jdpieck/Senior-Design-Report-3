== Fabrication Description 
//needs to be written
=== Roller Subsystem 

==== Adhesive Rollers

The adhesive rollers were fabricated from 1.5-inch aluminum stock and machined manually on a lathe. The stock was first secured in a 3-jaw chuck, after which a central hole was drilled to allow mounting on the axle. A center drill was used to initiate the hole, followed by an undersized drill to establish the full depth. The bore was then brought to final size using a drill slightly larger than the 8 mm axle diameter (size “O” drill) to ensure proper clearance.

Next, a knurling tool was used to texture the outer surface of the rollers to improve grip. The stepped features on the rollers were then machined. The step accessible from the end of the stock was produced using a facing tool, with roughing passes followed by a finishing pass to achieve the final dimensions.

The second step, located away from the end of the stock, required a different approach. A parting tool was used to rough out the geometry, followed by finishing passes to reach the final specification. This step was intentionally machined slightly oversized to allow the finished roller to be parted off cleanly after the feature was completed. Finally, the set screw holes were drilled on the steps of the rollers using the mill and tapped on the mill. This was done by wrapping the roller in paper towels to ensure that the knurling would not be harmed by the vise on the mill. This process was then repeated for the second roller.

==== The Bearing Blocks

The bearing blocks were machined from 1/2-inch thick, 1-inch wide Teflon stock. The stock was first cut to length (1 inch) using a rough cut on a table saw, followed by a finishing pass on a mill to achieve final dimensions.

Next, the through-hole clearance screw holes were drilled on the mill in the top face of the block. The part remained in the same orientation in the vise as during the finishing operation. These holes were drilled using a number 4 drill; a center drill was not required due to the softness of Teflon.

Finally, the axle hole was drilled by rotating the bearing block in the vise and drilling through with a size “O” drill to achieve the required clearance. The same process was then repeated for the second bearing block.

==== The Adhesive Vat

The adhesive vat was contracted out to be machined due to its complexity. It was machined by Protolabs on a 5-axis mill. 

==== The Base Plate

The base plate was fabricated from 1/4-inch thick × 6-inch wide × 12-inch long aluminum bar stock. As the stock was already at the required dimensions, no cutting operations were necessary. Fabrication consisted solely of drilling and tapping operations.

The plate was first coated with blue layout dye, and all hole locations were marked using a flat granite surface plate to ensure accuracy. The holes were then drilled on a mill using the appropriate drill sizes specified in the engineering drawing. After drilling, the base plate remained in the mill vise to maintain alignment, and all threaded holes were tapped using a tap guide to ensure perpendicularity and thread quality.

==== Axels

The roller axle and pressure roller axles were cut to the required lengths and subsequently ground to remove burrs and smooth the ends.

=== Jig Subsystem 

Both of the jigs (MPHX and lamina) were 3D printed from PLA in two halves per jig. Once printed, alignment and quality was checked before moving on to manufacturing the side bracings. The side bracings were cut on a water jet (following the drawing ) into 1/2" by 1/4" by 16" pieces for cutting accuracy ensuring a flush fit with the outer edge of the jigs. The 1/4" thick bracings were secured by M3 button-head screws (the holes for which were drilled on the drill press) and threaded into printed holes. The screws were tightened into the jig's such that the screw heads were inset into the side bracing. Once all screws were threaded into the 3D print and tightened, the shim stock for the MPHX plate jigs was sheared from its original length (12 by 6 in) to 12 by 0.5in pieces for the edge overhangs and 12 by 0.912 in pieces for the center overhang. The sheared shim stock was then deburred and super glued onto the MPHX jig; given 48 hours to dry under the pressure of our #link("https://www.mcmaster.com/9516K542-9516K745/")[jig weight]. After 48 hours, with the shim stock attached to the MPHX jig's, both the lamina and MPHX jig's were fully assembled and ready to be used.

=== Feed Subsystem
//needs to be written 
== How To Use

The following is a comprehensive guide on how to properly set up, use, and clean Glue Dispensing Jig for Novel Polymer Heat Exchanger. 

=== Device Setup
+ Connect separate halves of the base plate jigs by aligning the dovetail cutouts. This should make one continuous plate with a screw hole at each corner.
+ Plug the electrical box into a wall socket.
+ Create a mixed solvent using the acetone and MEK. Add acetone first then the MEK in a 40:60 ratio to a sealable metal container.
// add image of measured out materials
+ Pour a generous amount of Oatey ABS Cement into the vat and mix in the solvent mixture from Step 3. Continue adding solvent mixture until the adhesive reaches the desired viscosity Ensure the adhesive and solvent are thoroughly mixed prior to use.
// Add image of adhesive in asssembled vat

=== Prepare Plates for Adhesive Application
+ Turn the adhesive roller on with the switch on the electrical box and adjust to desired RPM using the speed controller knob.
+ Insert 2 MPHX plates into the jig so they are held in place by the shim stock and not hanging out on one side.
// Add image of plates in jig
#figure(
  caption: [Polymer Plates in Jig],
  [#image("images/Plate In Jig 3.png", width: 90%)])


=== Adhesive and Lamina Application
+ Push the jig-plate assembly along the rollers until the edge of the plate touches the adhesive application roller. Allow the plate to move over the roller so adhesive is evenly applied to the plates.
// Add image of jig on rollers
#figure(
  caption: [Plate Jig in Prototype Feed],
  [#image("images/Jig In Feed 2.png", width: 90%)])
+ Move the jig-plate assembly over the rest of the rollers so the ridges of the plate are fully coated in adhesive. Move the jig to the end of the feed.
+ Adhesive side down, place the plate jig on top of the lamina strips and corresponding lamina jig. Use the pins at each corner to help with proper alignment of the jig pieces.
// Add image of lamina + jig with plate jig above it
+ Secure the two halves of the jig together using screws.
// Add image of the jigs together
+ Repeat Steps A-D, stacking each completed lamina-plate jig assembly on top of the previous one until the desired number of plates has been glued
// Add image of jigs stacked together
+ !0 minutes after the final plate is glued, remove all plate-lamina modules from the jigs.
// Add image of completed plate-lamina module(s)

=== Replenishing the Pot
+ Add a few drops of solvent to the vat as it continues to mix to thin out the consistency and stir it to ensure proper distribution.
+ If the vat is running low on adhesive, add more from the bottle and continue manufacturing procedures.
+ To clean off the edge of the vat, put a few drops of solvent on a disposable rag and wipe the edge where a skin has formed. This skin should not impact manufacturing overall.
// Add image of cleaning the edge of the vat

== Proper Cleaning Procedures
+ Upon completion of the desired number of MPHX plate modules, it’s important to clean the vat and roller components to prevent adhesive buildup over time.
+ Disconnect the roller from the motor housing and remove it from the vat. Unscrew the vat and scraper bar from the rest of the assembly.
+ Place vat and roller components in an acetone bath and allow them to sit until most of the adhesive has been dissolved.
// Add image of components in acetone bath
+ Remove components from the acetone bath and wipe down with paper towels or a clean rag to remove any leftover adhesive residue.