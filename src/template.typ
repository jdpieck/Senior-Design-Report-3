#let styles = (
  accent: rgb("#063e7e"),
  strong-line: black,
  weak-line: luma(40%),
)



#let appendix(body) = {
    set heading(numbering: "I.I.", supplement: [Appendix])
    show heading.where(level: 1): set heading(supplement: "Appendix")
    show heading.where(level: 3): set heading(outlined: false)

  
  show heading.where(level: 1): it => {
    pagebreak()
    [Appendix #counter(heading).display("I -") #it.body]
  }
  counter(heading).update(0)
  body
}





#let standard-table(body) = {
  show table.cell.where(y: 0): set text(white, weight: "bold")
  show table.cell.where(y: 0): it => math.bold(it)
  show table.cell: set align(left)

  show table.cell.where(x: 0): strong
  
  set table(
    inset: .6em,
    fill: (x,y) =>
      if y == 0 {styles.accent},
    stroke: luma(50%),
  )
  body
}



#let template(
  title: "", 
  class: "EME-185A/B", 
  team-number: "17",
  project-name: "Glue Dispensing Jig for Novel Polymer Heat Exchanger Fin Plates", 
  ta-contact: "Xiangpu Wang",
  professor-contact: "Jonathon Schofield", 
  authors: (
    (name: "Patrick Abrash", id: "920893423"),
    (name: "Keira Godfrey", id: "920712384"),
    (name: "Leah Andberg Katzen", id: "920763207"),
    (name: "Jason Daniel Pieck", id: "920981652"),
    (name: "Lara V. Tam", id: "921007153"),
    (name: "Peter Webster", id: "920857757"),
  ), 
  page-height: 11in, 
  page-width: 8.5in, 
  columns: 2,
  accent: styles.accent,
  body
) = {
  
  // Set the document's basic properties.
  set document(
    author: authors.map(a => a.name), 
    title: [#class #title - Group \##team-number (#project-name) ]
  )
  
  show link: it => underline(text(accent.lighten(10%), it))
  
  set text(
    font: "IBM Plex Sans", 
    lang: "en",
    size: 11pt,
  )
  
  show math.equation: set text(font: "IBM Plex Math", size: 11pt)
  

  set par(leading: .6em)
  set rotate(reflow: true)

  show table: set par(justify: false)
  show table: set list(indent: .2em)

  
  show figure.caption: set text(.9em, fill: accent)
  show figure.caption.where(body: []): it => it.supplement + [ ] + context it.counter.display()

  show heading.where(level: 1): set text(fill: accent)
  show heading.where(level: 2): set text(fill: luma(20%))
  show heading.where(level: 3): set text(fill: accent.lighten(10%))

  set heading(numbering: "1.1)")
  



  set footnote(numbering: "*")
  
  show bibliography: set heading(numbering: "1)")
  show bibliography: set par(justify: false)

  // set math.equation(numbering: "(1)")
  show rect: set align(center)
  set par(justify: true)

  set enum(indent: .5em)
  set list(indent: 1em)

  set raw(lang: "MATLAB")
  
  // Display inline code 
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  // Display block code
  show raw.where(block: true): block.with(
    fill: luma(96%),
    inset: 10pt,
    radius: 4pt,
  )
  

  set page(
    paper: "us-letter", 
    numbering: "1", 
    number-align: right, 
    margin: (
      rest: .75in,
      // bottom: .875in,
      // rest: .625in
    ), 
    height: page-height, 
    width: page-width, 
    footer-descent: 40%,
    footer: context {
      if counter(page).get() > (1, ) {
        set text(8pt, weight: 300)
        h(1fr)
        [#for a in authors [#a.name#if a != authors.last() [, ]] - ]
        text(fill: accent, weight: "bold", counter(page).display("1"))
      }
    },
    header: context {
        set text(8pt, weight: 300)
        if counter(page).get() > (1, ) {
        smallcaps[ #class #h(1fr) #text(fill: accent, weight: "bold")[#title]]
      }
    }
  )
  

  let cover-page = bytes(read("Report Cover.svg")
    .replace(
      black.to-hex(), 
      accent.lighten(10%).to-hex())
  )
    

  let descriptor(body) = text(
    luma(20%),
    0.9em,
    weight: 300,
    body
  )
  

  page(
    height: 11in,
    background: image(cover-page, width: 100%),
    margin: (rest: .75in, bottom: .6in),
    footer-descent: 24%,
    footer: text(weight: 300, white, [Template design by Jason Pieck]),
    {
    set text(1.1em)
    align(
    stack(
      spacing: 0.8em, 
      text(weight: 700, 2.5em, fill: accent, title),
      v(1.7em),
      text(weight: 300, 1.5em, class),
      v(1em),
      text(weight: 300, 1em, datetime.today().display("[month repr:long] [day], [year]")),
      
      line(length: 67%, stroke: .5pt),
      v(4pt),
      line(length: 65%, stroke: .5pt ),
      v(1em),
      
      descriptor[Team Number: ] + team-number,
      descriptor[Project Name: ] + project-name,
      descriptor[Professor Contact: ] + professor-contact,
      descriptor[TA Contact: ] + ta-contact,
      v(1fr),
      v(4em),
      {
        set text(1.4em, white, weight: "bold")
        grid(
          columns: 2,
          row-gutter: 6pt,
          column-gutter: .7em, 
          ..authors.map(a => (
            a.name, 
            text(.8em, weight: 400)[(#a.id)],
          )).flatten()
        )
      },
      v(1.3em),
      )
    )
  }
  )
  pagebreak()


  let fancy-outline(body) = {
    show outline.entry.where(level: 1): set block(above: 1.2em)
    show outline.entry.where(level: 1): strong
    body
  }
  
  {
    show: fancy-outline
    outline(
      title: [Main Table of Contents],
      target: heading.where(supplement: [Chapter])
      .or(heading.where(supplement: [Section]))
    )
  }
  pagebreak()
  {
    show: fancy-outline
    outline(
      title: "Appendix Table of Contents", 
      target: heading.where(supplement: [Appendix])
    )  
  }

  pagebreak(weak: false)
  
  outline(title: "Figures", target: figure.where(kind: image))
  outline(title: "Tables", target: figure.where(kind: table))
  
  

  heading(level: 1, numbering: none, [Key Terms], bookmarked: false)
  terms(..csv("../reference/def.csv").sorted(), separator: [ -- ])


  pagebreak()  


  {
    show heading: set text(1.2em)
    // show heading.where(level: 2): it => {
    //   pagebreak(weak: true)
    //   block(it)
    // }

    body // Main body
  }

  pagebreak()
  
  {
    show bibliography: set text(.8em)
    // show bibliography: it => {
    //   text(.8em, it.title)
    // } 
    bibliography("../reference/refs.bib", full: false)
    
  }

  {
    pagebreak(weak: true)
    show: appendix
    include "../7-appendix.typ" 
  }

  


}


/////////////////////////////////////////////////
//        Shorthands & Custom Functions        //
/////////////////////////////////////////////////








#let then = $quad arrow.double quad$
#let imp = $&=>$
#let there = $therefore quad $
#let also = $quad \& quad$
#let e(var) = $times 10^(var)$
#let ee(var) = $times 10^(var)$
#let eet(var) = [#math.times\10#super[#var]]
#let tot = "tot"
#let shear = $tau_(x y)$
#let shearp = $tau_(x' y')$
#let avg = "avg"
#let PE = "PE"
#let KE = "KE"
#let ref = "ref"
#let cq = $, quad$


#let lbmol = "lbmol"

#let hb = $macron(h)$
#let dhb = $Delta macron(h)$
#let hbf = $macron(h)_f^degree$
#let nf = $dot(n)$
#let nff = $dot(n)_"fuel"$
#let qd = $dot(Q)$
#let sb = $macron(s)$
#let sbf = $macron(s) ^degree$ 
#let da  = sym.harpoons.rtlb
#let gib = $Delta G ^ degree$
#let gibb = $macron(g) ^ degree$


#let MPA = "MPa"
#let MPa = "MPa"
#let kip = "kip"
#let ksi = "ksi"
#let in2 = "in²"
#let um = "μm"
#let GPa = "GPa"
#let milli = $ee(-3)$
#let micro = $space"μ"$
// #let micro = $ee(-6)$
#let nano = $ee(-9)$
#let kN = "kN"
#let MN = $ee(6) "N "$
#let ft = "ft"
#let Nm = "N⋅m"
#let lbf = "lbf"
#let lbfts = "lb⋅ft/s²"
#let kNm = "kN⋅m"
#let fts = "ft/s²"
#let lb = "lb"
#let npm = "N/m²"
#let kg = "kg"
#let kgs = "kg/s"
#let kgs2 = "kg/s²"
#let kgm2 = "kg" + sym.dot + "m²"
#let m2 = "m²"
#let m4 = "m⁴"
#let new = "N "
#let met = "m "
#let hr = "hr"
#let sec = "sec"
#let ms2 = "m/s²"
#let m3 = "m³"
#let kJ = "kJ"
#let bar = "bar"
#let kW = "kW"
#let degC = "°C"
#let degK= "K"
#let degF= "°F"
#let degR= "°R"
#let net = "net"
#let volt = "V "
#let out = "out"
#let inn = "in"
#let amp = "A "
#let lbfin2 = "lb/in²"
#let ft3lb = "ft³/lb"
#let btulb = "Btu/lb"
#let btulbmol = "Btu/lbmol"
#let btulbR = "Btu/lb⋅R"
#let m3kg = "m³/kg"
#let kjkg = "kJ/kg"
#let kPa = "kPa"
#let kjkmol = "kJ/kmol"
#let kjkmolK = "kJ/kmol⋅K"
#let kjkgK = "kJ/kg⋅K"
#let mf = $dot(m)$
#let lbs = "lb/s"
#let vel = $arrow(v)$
#let ms = "m/s"
#let sun = "kJ/kg⋅K"


#let dp = $d p$
#let phi = math.phi.alt
