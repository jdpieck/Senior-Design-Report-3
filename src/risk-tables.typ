#import "template.typ": *


#let risk-table(
  num-entries: 31,
) = {
  let data = csv(
    "../reference/DMFEA.tsv",
    delimiter: "\t",
  )
  // highlight[I'm working on the table don't worry about it]
  set text(
    .6em
  )
  show: standard-table
  show figure: set block(breakable: true)
  set table.cell(breakable: false)

  show table.cell.where(x: 9): strong
  show table.cell.where(y: 0): set align(bottom)
  // show table.cell.where(x: 8, y: 0): it => rotate(-90deg, it)
  // show table.cell.where(x: 6, y: 0): it => rotate(-90deg, it)
  // show table.cell.where(x: 4, y: 0): it => rotate(-90deg, it)

  [
  #figure(
    table(
      // columns: (1fr, 1fr, 1fr, 1fr, 5em, 1fr, 5em, 1fr, 5em, 5em, 1fr),
      columns: data.first().len(),
      // table.header(
      //   ..data.slice(0, 1).flatten().map(it => 
      //     rotate(
      //     // -45deg,
      //     reflow: true,
      //     it
      //   )
      // )
      // ),
      table.header(..data.slice(0, 1).flatten()),
      ..data.slice(1, num-entries).flatten()
    ),
    caption: [DMFEA Analysis with #num-entries entries]
  ) #label("dmfea:" + str(num-entries))
    
  ]
}

#let ranking-criteria(
  type
) = {
  let data = csv(
    "../reference/ranking-" + type + ".tsv",
    delimiter: "\t",
  )
  let name = upper(type.slice(0, 1)) + type.slice(1)
  show: standard-table
  show table.cell.where(y: 1): strong
  [
  #figure(
    table(
      columns: data.first().len(),
      table.cell(colspan: data.first().len())[#name Ranking Criteria],
      ..data.flatten()
    ),
  ) #label("ranking-criteria:" + type)
  ]
  
}