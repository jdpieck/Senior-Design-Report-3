== Project Overview
A fundamental task in thermal engineering is the transfer of heat between two flowing fluid streams. This function is typically accomplished using a heat exchanger. As AI data centers continue to expand, the need for efficient and effective cooling solutions has increased significantly. To address this demand, a polymer heat exchanger has been developed as a cost-effective solution to this growing challenge.

Heat exchangers are often expensive due to the materials used in their construction. However, in many applications, they operate under conditions that do not require the robust properties of metals, as pressures and temperatures are relatively low @Vinod. These conditions are commonly found in air-conditioning and heating systems, where temperatures are near ambient @HeatTransferText. In such cases, lower-cost materials can be used without significantly sacrificing performance @MPHXArticle. This project investigates the use of thermoplastics as a replacement for metal in a water-to-air heat exchanger @Vinod. Although thermoplastics exhibit higher thermal resistance than metals, this does not significantly hinder overall performance @HeatTransferText. In the system considered here, the limiting factor is the thermal resistance of the air rather than the material properties of the exchanger itself @tjoenReviewPolymerHeat2009.

The heat exchanger examined in this project consists of stacked, identical modules. Each module is constructed from an injection-molded micro channel polymer heat exchanger (MPHX) plate made of PC plastic, formerly ABS plastic, along with a thin polycarbonate film or lamina (made of ABS) bonded to one side of the plate. This film seals the internal channels, allowing water to flow through the module. Multiple modules are then stacked and bonded together, forming continuous water passages and air gaps between plates that enable airflow through the exchanger @ValentinaThesis.

#pagebreak()
== Project Objectives
The primary task of this project is to identify suitable materials and assembly methods for bonding the heat exchanger units. Specifically, the project focuses on selecting an appropriate adhesive and defining a reliable application process that satisfies the following design constraints:

- The adhesive must not significantly clog or obstruct water flow passages.
- The adhesive must be compatible with the PC MPHX plates and ABS film.
- Adhesive application must be semi-automated and predictable for manufacturing scalability.
- A clamping method must be implemented to ensure proper bonding during curing.
- The bonded assembly must withstand internal water pressures of at least 10 psig without leakage.
- The adhesive and bonded joints must tolerate repeated temperature and pressure cycling over the expected service life of the product.


== Stakeholder Analysis
The primary goal of our project is to serve as a proof of concept. The current method used by the WCEC (Western Cooling and Efficiency Center) to adhere the MPHX plates to the film is laser welding, which is both expensive and inefficient. As a result, the WCEC has been exploring more cost-effective and faster alternatives. This is where our system comes in—to investigate the concept of gluing the plates to the lamina. The goal of our system is to demonstrate that this method is a scalable and practical option.

Currently, the WCEC is working with a company, R&D Plastics, to injection mold the MPHX plates. Individuals within this company routinely communicate with our sponsor to make improvements to their manufacturing process. They are also involved in this proof-of-concept effort, meaning they will interact with our device to refine their process and better accommodate ours.

Beyond our sponsor, we are collaborating with the Advanced Composites Research, Engineering, and Science (ACRES) Laboratory to use their fume hood for testing our device. Because our adhesive contains hazardous and carcinogenic solvents, it is essential that laboratory personnel are aware of how our device is used to minimize risk to their personnel. The ACRES facility will continue to support this project beyond the duration of this course, as their fume hood will remain integral to our testing process.

Once prototype testing is complete, and assuming favorable results, this device concept could be used to construct these heat exchangers in the future. Our sponsor and their team (graduate students and postdoctoral researchers) will use our device to assemble heat exchangers for testing their system, as well as to evaluate the practicality of this assembly method. They will also provide feedback to future manufacturers at the industrial level. 



== Concept of Operations
The glue dispensing jig can be divided into four main operational components: the feed system, the roller assembly, the jig, and the electrical box.

Before the adhesive is applied to the MPHX plates, they are loaded into the MPHX jig, which transports the plates through the system during application and facilitates proper lamina adhesion. The plates are inserted into channels within the jig and secured by the excess material (rails), which hold them in place throughout processing. This design ensures that adhesive is applied only to the required regions (i.e., the ridges).

After loading, the motor is turned on via the switch on the electrical box. The MPHX jig is then manually fed into the system until it engages with the rollers, at which point the motor takes over and pulls the jig through the adhesive application stage. Once the jig has fully passed through the rollers, it is removed by hand from the feed rails and placed onto the lamina jig, where pre-positioned lamina are ready for bonding.

*Overall, the general workflow of our system is as follows:* 

@flowchart illustrates the step-by-step operational workflow of the system, detailing the sequence from jig setup through adhesive application, stacking, and system cleaning.

#figure(
  caption: [System Operation Workflow Diagram],
  image(
    "images/WorkflowDiagram.png",
    width: 96%
  ),
  
) <flowchart>

  