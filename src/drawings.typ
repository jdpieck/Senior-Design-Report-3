#{
  // pagebreak()
  [
    // #counter(heading).step()
    // #page(columns: 2, [
      
    // ]
    
    
    // #place(top, float: true)[
      = CAD Drawings <CAD-Drawings>
    // ]  
    #set text(.85em)
    #v(.65em)
    #outline(
      // title: "CAD Drawings",
      title: none,
      target: figure.where(kind: "drawing")
    ) <drawing-ouline>
  ]
  
  let drawing-data = csv("../reference/drawings.csv", row-type: dictionary)

  for entry in drawing-data {
    let path = "../drawings/" + entry.name + ".pdf"

    for p in range(1, int(entry.pages) + 1) {
      page(
        margin: 0in,
        paper: "ansi-a",
        flipped: true,
        header: none,
        footer: none,
        [
          #figure(
            image(path, page: p),
            supplement: "Drawing",
            kind: "drawing",
            caption: entry.name + [ (#p/#entry.pages)]  
          ) #label("drawing:" + entry.name.replace(" ", "-") + "-p" + str(p))
        ]
      )
    }
  }
}