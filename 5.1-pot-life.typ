=== Objective
The highest-rated risk in our DFMEA is the uncertainty surrounding the adhesive’s pot life. Because the adhesive is mixed by the rollers, we are concerned that this process may further shorten the pot life, which is already limited to approximately five minutes. To evaluate potential methods for extending and restoring the adhesive’s pot life, our team has developed the following testing plan.


=== Test Design
In this experiment, we will investigate the feasibility of diluting the adhesive with additional solvent to extend its pot life, as well as methods for reviving the adhesive after it has begun to dry out.

All samples used for pressure testing are machined to provide an appropriate adhesive surface area, allowing us to replicate the forces experienced by glue joints in MPHX modules at 10 psig. The samples have been reduced in size such that, when tested at 40 psig, the adhesive joints experience equivalent stress conditions to those in the actual modules. The samples are machined from ABS piping to mimic the material of the MPHX plates. In each experiment, PC film will be adhered to the machined samples and, after curing, the samples will be tapped and tested at 40 psig.

==== Experiment 1: Evaporation Rate

+ Place the scale and aluminum foil-lined metal container in the fume hood
+ Retrieve Oatey ABS Cement from flammables storage
+ Fill tinfoil revisor partially with Oatey ABS Cement
+ Record the mass at 30-second intervals over a 5-minute period
+ Calculate the total mass loss due to solvent evaporation after 5 minutes


==== Experiment 2: Test Evaporation Time and Bond Strength of Various Dilutions

+ Dispose of trays from previous experiment (or more aside out of the way)
+ Retrieve acetone and MEK from flammable storage and place containers in the fume hood
+ Pour out adhesive into an aluminum foil-lined metal container
+ Weigh the amount of adhesive
+ Create a mixed solvent using the percentages in the
 adhesive SDS. Add acetone first to the mixture to prevent splashing (in a separate sealable metal container). 
+ Add solvent mixture 20% (by weight)
+ Time pot life &amp; bond a test sample
+ Repeat for 30% and 40% dilution levels

==== Experiment 3: Reviving The Pot

+ Dispose of trays from previous experiment (or more aside out of the way)
+ Pour out adhesive into tinfoil tray
+ Allow the pot to sit and partially dry out for 5 minutes
+ Add back the amount of solvent lost using the SDS-based solvent mixture
+ Mix thoroughly to restore consistency.
+ Time the pot life and evaluate bond strength by preparing a test sample.


=== Data Collection 
For Experiment 1, we will measure the mass of solvent that evaporates after a 5-minute pot life. This will allow us to estimate the solvent evaporation rate and determine how much solvent must be added back to revive the pot.

For Experiment 2, we will measure the pot life of three different adhesive dilutions. These results will help determine whether pre-dilution is a better approach than pot revival. We will also pressure test bonded samples at 40 psi to replicate the force at the glue joint in the actual MPHX modules. (The inner wall of the ABS tube samples has been machined to increase the inner diameter such that 40 psi corresponds to the force experienced at the glue joint in the module at 10 psi.) This test ensures that pre-dilution does not adversely affect adhesive strength.

For Experiment 3, we will measure the pot life of the adhesive after it has been revived. We will also bond a test sample after revival and pressure test it at 40 psi, as in the previous experiment. These results will allow us to determine whether pre-dilution or pot revival is the more effective approach.

=== Results <results>
For Experiment 1, we were unable to accurately determine the adhesive evaporation rate. The highly sensitive scale could not obtain stable measurements due to the constant airflow in the fume hood. In addition, we observed that the adhesive formed a skin over the surface of the vat, which protected the adhesive underneath from evaporation. Disturbing this skin through mixing significantly increased the pot life.

For Experiment 2, we recorded the following pot life times. 

#figure(
  table(
  columns: (auto, auto),
  inset: 9pt,
  align: (left, center),
  stroke: 0.5pt + luma(120),
  fill: (x, y) => if y == 0 { rgb("e0e0e0") } else { none },
  
  // Table Header
  [*Material / Condition*], [*Pot Life*],
  
  // Table Data
  [Adhesive (Undiluted)], [5 minutes],
  [20% Dilution], [7 minutes],
  [30% Dilution], [10 minutes],
  [40% Dilution], [15 minutes],
),
caption: [Adhesive Dilution Testing Results]
)

For Experiment 3, we found that the pot could be successfully revived any amount of solvent .



=== Data Analysis
As seen in @results, the adhesive’s pot life was primarily affected by the formation of a skin over the vat. When this skin formation was disrupted, the adhesive remained operational. The pot began to skin over after approximately 5 minutes, but it is suspected that the constant mixing caused by the rollers will hinder skin formation and make pot life less of a concern.

The dilution tests were successful, and any dilution used would only further extend the pot life. As previously mentioned, the pot revival process was also successful. The addition of solvent, combined with mixing, removed the skin from the vat. This presents a promising possibility, as the vat could be sprayed with solvent while the rollers break up the skin, or the adhesive could be stirred with a disposable tool to restore usability.

=== Safety Considerations
 All experiments will be conducted using proper personal protective equipment (respirators, coveralls, and sealed eye protection) and within a fume hood.

=== Limitations
One major inherent limitation of this experiment is that pot life is measured without the adhesive being processed through mixing rollers. In the real application, roller mixing would likely accelerate evaporation due to increased surface area exposure and potential temperature rise from mixing. However, despite this limitation, the experiment will provide a useful baseline for comparing methods and determining the most effective approach moving forward.
