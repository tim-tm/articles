#import "includes/template.typ": *

#align(center + horizon, text(17pt)[
  *Abitur-Notizen*
])
#align(center + horizon, text(14pt)[
  #datetime.today().display("[day].[month].[year]")
])
#grid(
  columns: 1fr,
  align(center)[
    Tim Teichmann \
    #link("mailto:teichmanntim@outlook.de")
  ]
)

#pagebreak()
#set text(lang: "de")

#outline()
#pagebreak()
#set page(numbering: "1", columns: 2)
#set heading(numbering: "1.")

= Mathematik
#include("includes/analysis.typ")
#include("includes/stochastik.typ")
#include("includes/analytische_geometrie.typ")

= Informatik
