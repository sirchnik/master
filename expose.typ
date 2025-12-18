#set par(justify: true, linebreaks: "optimized", leading: 0.4em)
#set page(margin: (right: 1.2in, left: 1.2in, top: 1in, bottom: 1in))
#show link: it=> [
  #if type(it.dest) == str {
    text(it, fill: blue)
  } else {
    text(style: "italic")[#it]
  }
]

#line(length: 100%, stroke: 3pt)
#align(center)[
  = Exposé - TrustZone TockOS
]
#v(10pt)
#line(length: 100%)
#v(20pt)
#align(center)[
  *Niklas Sirch* \
  Master Informatik \
  #link("mailto:niklas.sirch1@tha.de")
]
#v(10pt)

#set heading(numbering: "1.1")
#show heading.where(level: 1): it => text(it, size: 14pt)
#show heading: set block(below: 1.2em)

= Motivation

= Work Plan

#table(
  columns: (5em, 1fr),
  stroke: none,
  table.vline(x: 1),
  ..([ End Date ], [ Description ]),
  table.hline(),
)

#set heading(numbering: none)

= References

#bibliography("main.bib", style: "ieee", title: none)