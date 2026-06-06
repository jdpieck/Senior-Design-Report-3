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
    + Team Formation/Role Assignment & Project Assignment   
    + First Sponsor Contact  
    + Memo Report 1 Due  
    + First Sponsor Meeting  
    + Develop Preliminary System Requirements  
    + Develop Design Evaluation Criteria For Scoring Matrix  
    + Memo Report 2 Due  
    + Second Sponsor Meeting  
    + Begin Adhesive Option Research  
    + Third Sponsor Meeting  
    + Begin Subsystem Design Sketches  
    + Preliminary Gantt Chart  
    + Identify Which Adhesives Work With Available Materials  
    + Select Final Design Candidates  
    + Preliminary Feasibility Calculations 
    + Fourth Sponsor Meeting  
    + Preliminary Design Report  
    + Pressure Test Selected Adhesives  
    + Fifth Sponsor Meeting  
    + Critical Analysis of Adhesive Types  
    + Memo Report 4 Due
    + Finalize Prototype Design
    + Basic CAD Models in Onshape
    + Revise CAD Models
    + Create Master Assembly of CAD Models
    + FEM Analysis
    + Finalize Calculations 
    + Finalize Bill of Materials 
    + Submit BOM and Engineering Drawing Package
    + Submit Machine Architecture Report 
    + Purchase Supplies for Prototype Manufacturing
  ],
  [
    + Obtain Bill of Materials Order
    + Sixth Sponsor Meeting
    + 3D Print Parts
    + Solder Electrical Components
    + Assemble Electrical Systems
    + Seventh Sponsor Meeting
    + Machine + Modify Ordered Parts
    + Seventh Sponsor Meeting
    + Assemble Subsystem Components
    + Eighth Sponsor Meeting
    + Ninth Sponsor Meeting
    + Finish Final Physical Prototype
    + Tenth Sponsor Meeting
    + Eleventh Sponsor Meeting
    + Test and Troubleshoot Final Prototype
    + Twelfth Sponsor Meeting
    + Draft of Poster Design
    + Final Sponsor Meeting
    + Submit Project Abstract for Senior Design Showcase
    + Prepare for Team Critical Design Reviews
    + Final Poster PowerPoint
    + Write Final Report
    + Final Poster Design
    + Capstone Poster and Design Showcase
  ]
),
caption: [Final Completed Task List]
) <tasks>