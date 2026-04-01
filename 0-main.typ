#import "bin/template.typ": *

#show: template.with(
  title: "Progress Report 3",  
  class: "EME-185A/B", 
  team-number: "17",
  project-name: "Glue Dispensing Jig for Novel Polymer Heat Exchanger Fin Plates", 
  ta-contact: "Angel Rodas",
  professor-contact: "Dr. Jonathon Schofield", 
  authors: (
    (name: "Patrick Abrash", id: "920893423"),
    (name: "Keira Godfrey", id: "920712384"),
    (name: "Leah Andberg Katzen", id: "920763207"),
    (name: "Jason Daniel Pieck", id: "920981652"),
    (name: "Lara V. Tam", id: "921007153"),
    (name: "Peter Webster", id: "920857757"),
  ), 
)
///////////////////////////////////////////////////

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(below: 1em)[Chapter #counter(heading).display("1 -") #it.body]
}

= Abstract 
// Worth 10 Points
#include "1-abstract.typ"

#pagebreak()
= System Architecture Selected
// Worth 20 Points
#include "2-selected.typ"

#pagebreak()
= Discussion 
// Worth 25 Points
#include "3-discussion.typ"

#pagebreak()
= Preliminary Bill of Materials
// Worth 10 Points
Below is a copy of our bill of materials, complete with documentation on what subsystem each part is associated with, whether the part will be manufactured or purchased, part number when applicable, unit cost, system cost, and total cost. With this in mind, our total system cost comes out to be \$1,267.25, and the total order cost is \$1576.84. 

The reason for this disparity is that we won't be using all of the small fasteners and other bulk-packaged parts we will be ordering. For example, we will be ordering a container of 100 plain grade A M8 washers which is a total cost of \$3.32. However, we will only be using 24 of those 110 washers, meaning the system total comes out to \$0.80.

#include "4-bom.typ"

#pagebreak()
= Project Management Information
// WOrth 15 Points
#include "5-project.typ"
