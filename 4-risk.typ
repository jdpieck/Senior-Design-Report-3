== Risks Identified
//5.1) DFMEA performed, appropriate prioritized list, full analysis in appendix /3.0
To determine the most failure prone components of our design and to help mitigate the risk, our group has conducted a Design Failure Mode and Effects (DFMEA) on the design. The key takeaways and most important components identified from the DFMEA can be seen below:

#import "src/risk-tables.typ": *
#risk-table(num-entries: 3)
#ranking-criteria("detection")
The full DFMEA with specified evaluation criteria can be seen in (appendix). The notable changes to the evaluation criteria are that the severity rankings range from any harm being a 10 and no effect as a 1, the middle values are minor part replacements and system failure to meet the design specifications. The occurrence ranking table was changed to range only from 1 in 2 through 1 in 100,000. The detection ranking table has a 10 as undetectable problems and a 1 as non applicable detection. The split for the detection table between rankings 5 and above is the detection ability of a fully assembled system versus individual parts.

=== The Adhesive (Pot-Life)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: 2.5pt,
  align: center,
  table.header(
    [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [Adheres MPHX plate and lamina], [Short pot life], [Smaller batches before cleaning and or diluting], [7], [Rollers mixing adhesive causing it to set faster], [10], [We will be doing tests to attempt to dilute the adhesive and revive the pot], [5], [350])
  )
_Overview_\
The primary concern with the adhesive is a potentially short pot life, causing it to skin over and affecting viscosity. Premature thickening would decrease the amount of modules the system could glue between each cleaning cycle and may lead to wasted adhesive.

_Assumptions_
- The adhesive will dry over its 5 minute pot-life
- Adding solvent to the vat will thin out the adhesive
- The roller may prevent skinning

_Observed Failure_\
Through testing it was observed that adhesive skinning wasn't a problem cause of the roller's constant motion. While the thickening of the adhesive was an issue, adding solvent proved to be an easy fix and therefore thickening of the adhesive was not a critical problem.

_Design Modifications_\
There were no design modifications since there was no failure.

_Conclusions_\
Through testing we found that the roller negated the problem of the adhesive skinning over in the vat, we also determined that any 40:60 combination of acetone and MEK along with additional added adhesive added to the vat during operation would suffice for keeping the adhesive at a workable and useable viscosity.

=== The Cycle Time
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: 2.5pt,
  align: center,
  table.header(
    [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [A byproduct of production rate], [Too slow of a cycle time], [Smaller batches/inability to meet desired output], [7], [Too slow of a production speed], [9], [Tests for cycle time (how long it takes for one jig to be glued)], [5], [350])
  )

_Overview_\
To complete a MPHX heat exchanger, 1000 modules must be manufactured. The goal of our system is to allow for the capability to produce a full heat exchanger in a working day (8 hours). This requires a high production rate that would not be met if the system proves to be too slow. 

_Assumptions_\
- To complete a full heat exchanger in 8 hours, the system needs to process approximately 2 modules every 57 seconds
- Completing a module entails loading and feeding an MPHX jig through the system and sealing it with a loaded lamina jig
- The time required to process 10 jigs can be extrapolated to estimate the time to complete 1000 jigs

_Observed Failure_\
There was no observed failure, it took 30 seconds to glue 4 plates during testing, and so the 8 hour work day was well within the design requirements.

_Design Modifications_\
No modifications were needed to made to the roller, electrical, or feed system since no failure was observed.

_Conclusions_\
In conclusion, the cycle time was not a failure mode within our system. While cycle time was a major risk element in our DFMEA due to its potential setbacks in the event of failure; the testing proved that it actually was not a major risk.

=== Jig Bonding Testing

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: 2.5pt,
  align: center,
  table.header(
    [*Function*], [*Failure Mode*], [* Effects of Failure*], [*Severity Ranking*], [*Failure Cause*], [*Occurrence Ranking*], [*Control Method*], [*Detection Ranking*], [*RPN*], [Holds the MPHX plates in place], [Surface of the front of the MPHX jig is coated in glue and adheres to the lamina during curing], [Inability to produce modules (wasted materials), need to reprint and assemble the jigs, significant time and money loss], [9], [Inaccurate glue distribution], [5], [Detectible once the MPHX plate has glue and is placed onto the lamina jig], [6], [270])
  )

_Overview_\
A major rig with the two-sided jig system is the risk of excess adhesive being applied to unexpected surfaces, sealing the two jigs together. This would prevent the user from accessing finished modules and most likely cause significant damage to the jigs, potentially requiring replacements. 

_Assumptions_\
- The height of certain components on the MPHX jig may be too high resulting in unwanted glue application
- If the adhesive gets on the jig it will bond the lamina and MPHX jigs together
- The roller applicator may not be as precise/accurate as we would like which results in the unwanted glue distribution

_Observed Failure_\
The observed failure during full system testing was that glue got on the stopping ridges of the MPHX jig. This is the same location at which we identified the highest risk for jig bonding. The glue on the edge however was not an issue due to the fact that the (PLA) jig was not compatible with the adhesive and PC lamina.

_Design Modifications_\
Modifications for the jig 

_Conclusions_\
In conclusion, the adhesive compatibility 

//5.2) Appropriate analysis and presentation of DFMEA results and top risks identified, appropriate management of top risks /10.0
//5.3) Well thought-out interpretation of result and discussion
== Risk Mitigation Strategy //overall summary