#import "bin/template.typ": *
// 5.1) All parts included, each part belongs to a sub system, accurate costs, all info included __/10

#{
  set page(
    // margin: 0pt,
    height: auto,
    width: auto
  )
  
  image("BOM.pdf", page: 1)
  pagebreak()
  image("BOM.pdf", page: 2)
  pagebreak()
  image("BOM.pdf", page: 3)
}

