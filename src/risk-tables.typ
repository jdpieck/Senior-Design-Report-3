#let risk-table(
  num-entries: 31,
) = {
  let data = csv(
    "../reference/DMFEA.tsv",
    delimiter: "\t",
  )
  // highlight[I'm working on the table don't worry about it]
  set text(
    .2em
  )
  [
  #figure(
    table(
      columns: data.first().len(),
      ..data.slice(0, num-entries).flatten()
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

  [
  #figure(
    table(
      columns: data.first().len(),
      table.cell(colspan: 3)[#type Ranking Criteria],
      ..data.flatten()
    ),
  ) #label("ranking-criteria:" + type)
  ]
  
}