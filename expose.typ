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
  Master Informatik, 2247131 \
  #link("mailto:niklas.sirch1@tha.de")
]
#v(10pt)

#set heading(numbering: "1.1")
#show heading.where(level: 1): it => text(it, size: 14pt)
#show heading: set block(below: 1.2em)

= Motivation

- Rust Compiler adopted TrustZone
  - https://github.com/rust-lang/rfcs/pull/3884
  - entry https://github.com/rust-lang/rust/issues/75835
  - call https://github.com/rust-lang/rust/issues/81391

  - How does this look like? rustc outputs two binaries?

- https://csis.gmu.edu/ksun/publications/ACSAC20_RusTEE_2020.pdf
  RusTEE (now Apache Teaclave) paper motivates Rust with
  #quote[
    Though TrustZone technology can assure isolation between TEE and REE, dozens of
    software-based vulnerabilities have been reported to compromise the entire TEE
    system [13, 22, 51]. Among the reported vulnerabilities, most of them are caused
    by memory corruption of the memory-unsafe TAs [9].
  ]

- TockOS does not yet utilize TrustZone-M.
  - Current approach: Compiler enforces no unsafe code in TockOS kernel
    #quote[
      Tock drivers (and capsules in general!) cannot make use of unsafe constructs, so
      any capabilities given to them must come from the board definition where they
      can be more carefully audited. This makes following expected access control
      policy a prerequisite for the kernel to compile.
    ]

#image("GP-TEE.png", width: 50%)

- To do
  - Make Concept
  - Make a PoC implementation

  - Do I need to implement a TEE-OS?
  - Zephyr uses TrustedFirmware-M
    https://docs.zephyrproject.org/latest/services/tfm/overview.html#architecture-overview

  - topics like footprint and app isolation and other security implications.

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