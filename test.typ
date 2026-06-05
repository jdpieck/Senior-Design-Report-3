
#{
  let data = csv(
    "reference/manufacturing.tsv",
    delimiter: "\t",
  )

  show table: set align(left)
  import "src/template.typ": *
  show figure: set block(breakable: true)
  // show: standard-table
  [
    #figure(
      table(
        // breal
        columns: data.first().len(),
        ..data.flatten()
      )
    )
  ]
}