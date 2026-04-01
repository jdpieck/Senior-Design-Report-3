#import "bin/template.typ": *

// #set text(.85em)

#let accent = rgb("#063e7e")

#let standard-table(body) = {
  show table.cell.where(y: 0): set text(white, weight: "bold")
  show table.cell.where(y: 0): it => math.bold(it)
  show table.cell: set align(left)

  // show table.cell.where(x: 0): strong
  
  set table(
    inset: .6em,
    fill: (x,y) =>
      if y == 0 {accent},
  stroke: luma(50%),
  // stroke: (x,y) => (
  //   left: if x == 1 {gray}
  //   )
  )
  body
}

#show: standard-table

#figure(
  table(
  columns: 2,
  table.header([Winter Quarter], [Spring Quarter]),
  [
    + Team Formation/Role Assignment & Project Assignment  (#sym.checkmark)
    + Contact Sponsor and Prepare Questions for First Meeting (#sym.checkmark)
    + Memo Report 1 Due (#sym.checkmark)
    + First Sponsor Meeting (#sym.checkmark)
    + Post-Sponsor Meeting Debrief (#sym.checkmark)
    + Develop Preliminary System Requirements (#sym.checkmark)
    + Develop Design Evaluation Criteria For Scoring Matrix (#sym.checkmark)
    + Memo Report 2 Due (#sym.checkmark)
    + Second Sponsor Meeting (#sym.checkmark)
    + Begin Research on Different Adhesive Options (#sym.checkmark)
    + Third Sponsor Meeting (#sym.checkmark)
    + Begin Subsystem Design (#sym.checkmark)
    + Begin Design Sketches (#sym.checkmark)
    + Preliminary Gantt Chart (#sym.checkmark)
    + Identify Which Adhesives Work With Available Materials (#sym.checkmark)
    + Select Final Design Candidates (#sym.checkmark)
    + Preliminary Feasibility Calculations (#sym.checkmark)
    + Fourth Sponsor Meeting (#sym.checkmark)
    + Preliminary Design Report (#sym.checkmark)
    + Pressure Test Selected Adhesives (#sym.checkmark)
    + Fifth Sponsor Meeting (#sym.checkmark)
    + Critical Analysis of Adhesive Types (#sym.checkmark)
    + Memo Report 4 Due (#sym.checkmark)
    + Finalize Prototype Design (#sym.checkmark)
    + Basic CAD Models in Onshape (#sym.checkmark)
    + Revise CAD Models (#sym.checkmark)
    + Create Master Assembly of CAD Models (#sym.checkmark)
    + FEM Analysis (#sym.checkmark)
    + Finalize Calculations (#sym.checkmark)
    + Finalize Bill of Materials (#sym.checkmark)
    + Submit BOM and Engineering Drawing Package (#sym.checkmark)
    + Submit Machine Architecture Report (#sym.checkmark)
    + Purchase Supplies for Prototype Manufacturing (#sym.checkmark)
  ],
  [
    + Obtain Bill of Materials Order
    + Sixth Sponsor Meeting
    + 3D Print Parts
    + Solder Electrical Components
    + Assemble Electrical Systems
    + Machine + Modify Ordered Parts
    + Seventh Sponsor Meeting
    + Assemble Subsystem Components
    + Finish Final Physical Prototype
    + Test and Troubleshoot Final Prototype
    + Draft of Poster Design
    + Submit Project Abstract for Senior Design Showcase
    + Prepare for Team Critical Design Reviews
    + Final Poster PowerPoint
    + Write Final Report
    + Final Poster Design
    + Capstone Poster and Design Showcase
  ]
),
caption: [Tasks for the next two quarters]
) <tasks>