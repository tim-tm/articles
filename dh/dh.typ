#import "@preview/lilaq:0.4.0" as lq
#import "@preview/tiptoe:0.3.1"

#align(center + horizon, text(17pt)[
  *Das Diffie-Hellman Verfahren*
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
#set page(numbering: "1", columns: 2)

= Funktionsweise
Alice und Bob möchten sicher miteinander kommunizieren.
Das funktioniert indem sie einen gemeinsamen Schlüssel bestimmen,
mit dem sie ihre Nachrichten verschlüsseln können. Dieser gemeinsame
Schlüssel sollte nur den beiden bekannt sein.

Um sicher einen gemeinsamen Schlüssel zu bestimmen, können Alice und Bob
zwei Zahlen $p in PP,g in NN, g<p$ wählen.

Alice und Bob wählen außerdem jeweils einen privaten Schlüssel $a,b in NN$.
Außerdem berechnen beiden einen öffentlichen Schlüssel $A,B$, den sie miteinander teilen.
$
  A & =g^a mod p \
  B & =g^b mod p
$

Nun bestimmen beide jeweils einen gemeinsamen Schlüssel $K_1$ und $K_2$.
$
  K_1 & =B^a mod p \
  K_2 & =A^b mod p
$

Sind die Parameter richtig gewählt, so gilt $K_1=K_2$:
$
  K_1 & =B^a mod p \
      & =(g^b mod p)^a mod p \
      & =g^(b a) mod p \
  K_2 & =A^b mod p \
      & =(g^a mod p)^b mod p \
      & =g^(a b) mod p \
      & =g^(b a) mod p \
      & =K_1
$

Alice kann Bob Nachrichten schicken, die mit dem Schlüssel $K_1$ verschlüsselt wurden.
Bob kann diese mit seinem Schlüssel $K_2$ entschlüsseln.

= Sicherheit
Eine dritte (Celine) kann die Kommunikation zwischen Alice und Bob abfangen.
Celine sind also die Werte von $p,g,A$ und $B$ bekannt.

Um den Wert von einer der geheimen Variablen $a$ oder $b$ zu bestimmen,
muss Celine eine der folgenden Gleichungen lösen:
$
  A & =g^a mod p \
  B & =g^b mod p
$

In diesem Beispiel gehen wir davon aus, dass $p=13,g=2,A=8$ und $B=4$ ist.
Die geheimen Werte sind $a=3,b=2$ und $K=12$, diese kennt Celine jedoch nicht.

Celine wählt in diesem Beispiel die erste Gleichung.
Sie bemerkt schnell, dass es sehr viel leichter wäre den
Wert von $a$ zu bestimmen, wenn der öffentliche Schlüssel durch
die Gleichung $A=g^a$ berechnet würde.
In diesem Fall könnte man nämlich eine Umkehroperation der Exponentiation,
den Logarithmus, verwenden:
$
                       A & =g^a \
               <=> ln(A) & =ln(g^a) \
               <=> ln(A) & =a ln(g) \
  <=> frac(ln(A), ln(g)) & =a \
                   <=> a & =frac(ln(A), ln(g))
$

Die Berechnung von $A=g^a mod p$ ist die diskrete Exponentiation.
Die Umkehroperation ist der diskrete Logarithmus.

Während man den normalen Logarithmus effizient berechnen kann, existiert
bis heute kein Algorithmus mit dem man den diskreten Logarithmus effizient
berechnen kann.

Der Modulo ist dafür verantwortlich, dass dieses Problem des diskreten
Logarithmus nicht effizient gelöst werden kann.
Im Gegensatz zu $g^a$ (in unserem Fall $2^a$) wiederholen sich die Werte
der Gleichung mit Modulo immer wieder:

#show: lq.set-tick(
  inset: 0pt,
  outset: 3pt,
  shorten-sub: 100%,
)
#align(center)[
  #{
    let p1_x = lq.linspace(0, 4)
    let p2_x = lq.arange(0, 30)
    lq.diagram(
      grid: none,
      legend: (position: top + right),
      xaxis: (position: bottom, tip: tiptoe.tikz),
      yaxis: (position: left, tip: tiptoe.tikz),
      lq.plot(p1_x, p1_x.map(x => calc.pow(2, x)), mark: none, color: red, label: [$2^x$]),
      lq.plot(p2_x, p2_x.map(x => calc.rem(calc.pow(2, x), 13)), mark: none, color: blue, label: [$2^x mod 13$]),
    )
  }]

Celines Ziel ist also einen Schnittpunkt zwischen
den Funktionen $f(x)=8$ (da $A=8$)
und $g(x)=2^x mod 13$ (da $g=2$ und $p=13$) zu finden.

Die Funktion $h(x)=2^x$ hat nur einen Schnittpunkt mit $f(x)$.

Wie man relativ gut an der folgenden Grafik erkennen kann,
gibt es unendlich viele Schnittpunkte zwischen diesen beiden
Funktionen. Es existieren also unendlich viele geheime Schlüssel $a$,
die zum richtigen gemeinsamen Schlüssel $K=12$ führen.

#align(center)[
  #{
    let x = lq.arange(0, 30)
    lq.diagram(
      grid: none,
      legend: (position: top + right),
      xaxis: (ticks: (3, 15, 27), position: bottom, tip: tiptoe.tikz),
      yaxis: (position: left, tip: tiptoe.tikz),
      lq.plot(x, x.map(x => 8), mark: none, color: red, label: [$8$]),
      lq.plot(x, x.map(x => calc.rem(calc.pow(2, x), 13)), mark: none, color: blue, label: [$2^x mod 13$]),
    )
  }]

Grundsätzlich sind nur ganze Schlüssel relevant.
Anhand von der Grafik lässt sich erkennen, dass
$a_1=3,a_2=15$ und $a_3=27$ ganze Schlüssel sind,
die zum richtigen Ergebnis führen.

Für $p=13,g=2$ und $A=8$ sind also alle
$ a=3+12n, n in NN_0 $
geheime Schlüssel von Alice.

Bevor sich $g(x)$ das erste mal wiederholt, müssten alle ganzen Zahlen
ausprobiert werden, für die $h(x)\leq p$ ist.

In echten Anwendungen ist $p$ normalerweise mindestens
2048-bit lang.
Eine 2048-Bit lange Primzahl $p$ hat in etwa 617 Dezimalstellen, da
ein Bit die Werte 0 oder 1 annehmen kann, während eine Dezimalzahl
einen Wert zwischen 0 und 9 annehmen kann:
$
                      2^(2048) & = 10^n \
              <=> ln(2^(2048)) & = ln(10^n) \
                <=> 2048 ln(2) & = n ln(10) \
  <=> frac(2048 ln(2), ln(10)) & = n \
                         <=> n & approx 616.51 approx 617
$

Die kleinste ganze Zahl mit 617 Dezimalstellen ist $10^(616)$.
Diese Zahl ist bei weitem zu groß um in die Integer-Datentypen
gängiger Programmiersprachen zu passen.
Der größte Integer-Datentyp der Programmiersprache C (_unsigned long long_ bzw.
_unsigned long long int_) ist beispielsweise
mindestens 64-Bit groß.
#footnote[
  Quelle: #link("https://en.wikipedia.org/wiki/C_data_types"),
  Abrufdatum: #datetime(day: 11, month: 1, year: 2024).display("[day].[month].[year]")
]

Die Rede ist von mindestens 64-Bit,
da die echte größe der Datentypen stark abhängig von der
Platform ist, für die ein C Programm kompiliert wird.
Da viele C-Kompiler existieren gibt es einen offenen C-Standard,
der -- unter anderem -- diese Mindestgrößen definiert.

Die größen für die Datentypen _unsigned long long_ und
_unsigned long long int_ wurden im Standard C99 definiert.
#footnote[
  Quelle: #link("https://en.wikipedia.org/wiki/C99"),
  Abrufdatum: #datetime(day: 11, month: 1, year: 2024).display("[day].[month].[year]")
]
