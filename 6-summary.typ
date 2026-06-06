== Strengths

The current design can smoothly process two MPHX modules at a time, precisely applying adhesive to the module ridges without any risk of jig catching or adhesive thickening when used properly. The roller subsystem can easily be removed and cleaned in acetone, and the system's module structure can easily be adjusted to accommodate any future changes. The width of the rollers and jig geometry prevents excess adhesive from bonding the two jig halves, and the system size is capable of running in a standard fume hood, as required

== Weaknesses

A major issue with the design currently is chemical adhesive compatibility. Currently, using PC MPHX plates and PC film, the adhesion between the plate and film is not especially high. This is because we had originally designed the system for use with ABS plates and PC film, but the injection molding company had to switch to PC film in the middle of the quarter due to manufacturing quality issues. We did not perform the formal adhesive strength test (Requirement 1) due to this issue. 

In addition, glue application during testing was inconsistent across the plates due to warping caused by the manufacturing process (injection molding). This caused the plates to bow away from the adhesive rollers under applied pressure, leading to uneven bonding. Due to limited testing time and space, our team was unable to fully adjust the setup to account for this inherent issue with the plates.

Another major issue identified was the consistency of adhesive application. As we did not have access to the final manufactured MPHX plates until after most of the assembly, we did not sufficiently account for the possibility of MPHX plate bowing, causing glue placement issues. 

== Future Work

Future testing and improvements will require the MPHX injection-molding process to be more stabilized, including selecting a final material, addressing flashing on the plates. This will help prevent last-minute design changes such as those discussed in the previous section.

Seeing as plate warping is a manufacturing defect inherent to the injection molding process, the jig will need to be updated to hold the plates completely flat. We recommend perusing some of our previously evaluated designs from Report 1, as seen in @alt-jig. Specifically, a vacuum-based jig may be ideal to properly hold the plates flat and negate bowing.

Assuming the current design is still active, future teams should consider pairing the PC MPHX plates with an ABS film, since the adhesive we selected was optimized for PC-ABS bonding. This film should preferably be 400 microns thick and flat; any bowing will cause alignment issues. A successfully glued MPHX plate can then be pressure-tested to verify that it has specific adhesion.

