#let solution-grid(entries) = {
  show image: set block(radius: 5pt, clip: true)
  
  set grid(
    fill: none,
    column-gutter: 3%,
    row-gutter: 4%,
  )
  
  set heading(
    numbering: none,
    outlined: false
  )
  
  grid(
    columns: (2fr, 2fr),
    ..entries.map( it => {
       (  
        [#figure(
          image("images/" + it.path),
            caption: it.title + " Sketch"
          ) #label(it.path.replace(" ", "-").split(".").at(0))],
          stack(
          heading(it.title, level:3),
          .7em,
          it.description
        ),
      )
    }).flatten() 
  )
}

#solution-grid(yaml("reference/designs.yaml").selected)