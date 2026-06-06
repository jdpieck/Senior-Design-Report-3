== Risks Identified
//5.1) DFMEA performed, appropriate prioritized list, full analysis in appendix /3.0
To determine the most failure-prone components of our design and to help mitigate the risk, our group has conducted a Design Failure Mode and Effects (DFMEA) on the design. The key takeaways and most important components identified from the DFMEA can be seen below:

#import "src/risk-tables.typ": *
#risk-table(num-entries: 5)


The full DFMEA with specified evaluation criteria can be seen in @full-dmfea. The notable changes to the evaluation criteria are that the severity rankings range from any harm being a 10 and no effect as a 1, the middle values are minor part replacements and system failure to meet the design specifications. The occurrence ranking table was changed to range only from 1 in 2 through 1 in 100,000. The detection ranking table has a 10 as an undetectable problem and a 1 as a non-applicable detection. The split for the detection table between rankings 5 and above is the detection ability of a fully assembled system versus individual parts.

To outline all the different interactions between each of the subsystems, we created a DMFEA Flow Chart (@sys-flow-chart)
#v(-1em)
#figure(
  block(
    // height: 3in,
    // width: 100%,
    clip: true,
  image(
    "DFMEA Flow Chart.pdf",
    width: 100%
  )
  ),
  caption: [DMFEA Flow Chart]
) <sys-flow-chart>

=== The Adhesive (Pot-Life)
// #table(
//   columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
//   inset: 2.5pt,
//   align: center,
//   table.header(
//     [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [Adheres MPHX plate and lamina], [Short pot life], [Smaller batches before cleaning and or diluting], [7], [Rollers mixing adhesive causing it to set faster], [10], [We will be doing tests to attempt to dilute the adhesive and revive the pot], [5], [350])
//   )
==== Overview
The primary concern with the adhesive is a potentially short pot life, causing it to skin over and affecting viscosity. Premature thickening would decrease the number of modules the system could glue between each cleaning cycle and may lead to wasted adhesive.

==== Assumptions
- The adhesive will dry over its 5-minute pot-life
- Adding solvent to the vat will thin out the adhesive
- The roller may prevent skinning

==== Observed Failure
Through testing, it was observed that adhesive skinning wasn't a problem because of the roller's constant motion. While the thickening of the adhesive was an issue, adding solvent proved to be an easy fix, and therefore, thickening of the adhesive was not a critical problem.

==== Design Modifications
There were no design modifications since there was no failure.

====  Conclusions
Through testing, we found that the roller negated the problem of the adhesive skinning over in the vat. We also determined that any 40:60 combination of acetone and MEK, along with additional added adhesive added to the vat during operation, would suffice for keeping the adhesive at a workable and usable viscosity.

=== The Cycle Time
// #table(
//   columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
//   inset: 2.5pt,
//   align: center,
//   table.header(
//     [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [A byproduct of production rate], [Too slow of a cycle time], [Smaller batches/inability to meet desired output], [7], [Too slow of a production speed], [9], [Tests for cycle time (how long it takes for one jig to be glued)], [5], [315])
//   )

==== Overview
To complete a MPHX heat exchanger, 1000 modules must be manufactured. The goal of our system is to allow for the capability to produce a full heat exchanger in a working day (8 hours). This requires a high production rate that would not be met if the system proves to be too slow. 

==== Assumptions
- To complete a full heat exchanger in 8 hours, the system needs to process approximately 2 modules every 57 seconds
- Completing a module entails loading and feeding an MPHX jig through the system and sealing it with a loaded lamina jig
- The time required to process 10 jigs can be extrapolated to estimate the time to complete 1000 jigs

====  Observed Failure
There was no observed failure, it took 30 seconds to glue 4 plates during testing, and so the 8-hour workday was well within the design requirements.

==== Design Modifications
No modifications were needed to be made to the roller, electrical, or feed system since no failure was observed.

====  Conclusions
In conclusion, the cycle time was not a failure mode within our system. While cycle time was a major risk element in our DFMEA due to its potential setbacks in the event of failure; the testing proved that it actually was not a major risk.

=== Jig Bonding Testing

// #table(
//   columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
//   inset: 2.5pt,
//   align: center,
//   table.header(
//     [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [Holds the MPHX plates in place], [Surface of the front of the MPHX jig is coated in glue and adheres to the lamina during curing], [Inability to produce modules (wasted materials), need to reprint and assemble the jigs, significant time and money loss], [9], [Inaccurate glue distribution], [5], [Detectible once the MPHX plate has glue and is placed onto the lamina jig], [6], [270])
//   )

==== Overview
A major rig with the two-sided jig system is the risk of excess adhesive being applied to unexpected surfaces, sealing the two jigs together. This would prevent the user from accessing finished modules and most likely cause significant damage to the jigs, potentially requiring replacements. 

==== Assumptions
- The height of certain components on the MPHX jig may be too high, resulting in unwanted glue application
- If the adhesive gets on the jig, it will bond the lamina and MPHX jigs together
- The roller applicator may not be as precise/accurate as we would like, which results in the unwanted glue distribution

==== Observed Failure 
The observed failure during full system testing was that glue got on the stopping ridges of the MPHX jig. This is the same location at which we identified the highest risk for jig bonding. The glue on the edge, however, was not an issue due to the fact that the (PLA) jig was not compatible with the adhesive and PC lamina.

==== Design Modifications 
Modifications for the jig were made and only included small basic testing adjustments, such as insetting the shim stock into the plate jig and widening the channel slots for less friction and easier movement.

==== Conclusions 
In conclusion, the adhesive compatibility between the jig (PLA) and lamina (PC) made unwanted glue application (jig bonding) a non-issue since it had no effect on the end product.

=== Jig Alignment

// #table(
//   columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
//   inset: 2.5pt,
//   align: center,
//   table.header(
//     [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [Holds the jig as it slides over the roller], [Misalignment with feed on other side], [Jig gets blocked by feed ], [7], [Difficulty in aligning separate 80x20 pieces across large distance], [7], [Easily detected through basic testing], [3], [147])
//   )

==== Overview
The MPHX jig's ability to reliably move through the feed and roller systems depends on the feed and jig's relative alignment. Once pushed through the roller, if the MPHX jig is misaligned, the system will catch, preventing gluing and the system from progressing. The main risk is the jig being blocked by the feed bars when it slides through the roller.

==== Assumptions
- Any protrusions along the MPHX jig's edge would catch on the feed
- The MPHX jig must be linear on its edges, else it increases the risks of catching and can cause system wear
- The feed bars can be pulled out to form a funnel shape

==== Observed Failure
Through testing, we observed that the jig would catch at the transition point from the rollers to the second half of the feed. This was due to both the M3 button-head screws protruding from the sides and slight misalignments of the jig after passing through the rollers.

==== Design Modifications
Design modifications done to our design in order to account for the risk of catching are that we changed the side bracings' material from 1/10" thick shim stock to 1/4" thick aluminum. This aluminum includes countersunk holes, preventing the M3 screw heads from protruding. As an additional measure, we bent the feed rails at a mild angle at the transition points to the roller.

==== Conclusions
The previously mentioned modifications have since eliminated any issues with the jig catching along the system, and as such, we made the decision that additional testing was not required for this failure mode, and did not include a section in our testing plan for this failure mode.

//5.2) Appropriate analysis and presentation of DFMEA results and top risks identified, appropriate management of top risks /10.0
//5.3) Well thought-out interpretation of result and discussion
== Risk Mitigation Strategy //overall summary
To reduce the risk within our glue dispensing system, we tested our top 3 critical components from the DFMEA. These tests can be seen in the prototype testing plan. By testing each component and seeing that the main risks were mitigated, we were able to lower the RPN values.

//The 4th critical component was the jig alignment, which was not directly tested, but rather redesigned to remove the risk.