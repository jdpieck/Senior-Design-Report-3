#import "template.typ": *

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
  block(below: 1em)[Section #counter(heading).display("1 -") #it.body]
}

= Introduction 
#include "../1-introduction.typ"

= Product Requirements
#include "../2-requirements.typ"

= Final Design Summary
#include "../3-design.typ"

= Risk Assessment and Analyses
#include "../4-risk.typ"

= Project Testing Plan
#include "../5-testing.typ"

= Conclusions
#include "../6-summary.typ"

