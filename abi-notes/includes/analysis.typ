#import "template.typ": *

== Analysis

=== Trassierungsaufgaben
Das Ziel von Trassierungsaufgaben ist es anhand von bestimmten Angaben
eine Funktion aufzustellen.
Deshalb ist das Verstehen der Aufgabenstellung der schwierigste Teil der Aufgabe.

Das ist eine mögliche Aufgabenstellung: \
_Eine quadratische Funktion hat im Punkt_ $P(0|0)$ _eine Nullstelle und im Punkt_
$Q(2|5)$ _ein Maximum. Stelle die Funktionsgleichung auf!_ \
+ Die ersten drei Wörter des Satzes: *_Eine quadratische Funktion_*
  sagen uns um welchen Typ Funktion es sich handelt.
  Es ist eine quadratische Funktion. Die allgemeine quadratische Funktion sieht so aus:
  $ f(x)=a x^2+b x+c $
  Unsere Funktion $f$ hat also drei unbekannte, $a$, $b$ und $c$.
+ Außerdem ist für uns wichtig, dass die Funktion
  *_im Punkt_* $P(0|0)$ *_eine Nullstelle_* hat.
  Das bedeutet, dass $f(0)=0$ sein muss.
  Unsere erste Bedingung ist also:
  $ f(0)=0 $
+ Als letztes hat unsere Funktion *_im Punkt_* $Q(2|5)$ *_ein Maximum_*. \
  Um die Extrempunkte von einer Funktion (hier: $g$) zu finden,
  muss man die erste Ableitung dieser Funktion gleich $0$ setzen.
  $ g'(x)=0 $
  Im Idealfall bekommt man eine oder mehr Lösungen heraus, wir nennen die Lösung $x_1$.
  Um herauszufinden um welche Art von Extrempunkt es sich handelt setzen
  wir $x_1$ in die zweite Ableitung von $g$ ein.
  Jetzt können wir drei weitere Bedingungen für unsere Aufgabe aufstellen.
  Unsere Funktion soll ein Maximum in $Q(2|5)$ haben,
  deshalb müssen diese Bedingungen erfüllt sein:
  $
    f(2)=5 \
    f'(2)=0 \
    f''(2) < 0
  $
+ Jetzt müssen wir aus unseren vier Bedingungen eine Funktion bilden,
  dafür bilden wir erstmal die ersten beiden Ableitungen.
  $
      f(x) & =a x^2+b x+c \
     f'(x) & =2a x+b \
    f''(x) & =2a \
      f(0) & =0 \
      f(2) & =5 \
     f'(2) & =0 \
    f''(2) & < 0
  $
  Nun müssen wir einsetzen, Ungleichungen ($f''(2) < 0$) dürfen nicht eingesetzt werden.
  $
         0^2a+0b+c & =0 \
                 c & =0 \
    a dot 2^2+2b+c & = 5 \
           4a+2b+c & = 5 \
             4a+2b & = 5 \
        2a dot 2+b & =0 \
              4a+b & = 0
  $
  Eine von den drei unbekannten ist gelöst ($c=0$).
  Jetzt muss $4a+2b=5$ in $4a+b=0$ eingesetzt werden.
  $
           4a+2b & =5 \
            4a+b & = 0 \
    4a+2b-(4a+b) & = 5 \
               b & = 5 \
            4a+5 & = 0 \
               a & = frac(-5, 4)
  $
  Alle unbekannten Variablen sind gelöst, $a=frac(-5, 4)$, $b=5$, $c=0$.
  Also ist das unsere Funktion:
  $ f(x)=frac(-5, 4) x^2+5x $

#figure({
  let x = lq.linspace(-1, 5)

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: bottom, tip: tiptoe.tikz),
    yaxis: (position: left, tip: tiptoe.tikz),
    lq.plot(x, x.map(x => (-5 / 4) * calc.pow(x, 2) + 5 * x), mark: none, color: red, label: [$f(x)$]),
  )
})

== Extremwertaufgaben
Bei Extemwertaufgaben geht es darum die maximal/minimal möglichen Flächeninhalte
herauszufinden.
Dabei kann es oft auch um das maximale/minimale Volumen eines Körpers gehen.
Jedoch maximiert/minimiert sich das Volumen eines Körpers wenn der Flächeninhalt
des Mantels maximal/minimal wird.
Die Aufgabenstellungen zu diesem Aufgabentyp sind meistens sehr spezifisch und
brauchen eine Skizze.

In diesem Beispiel soll der maximale Flächeninhalt eines Dreiecks gefunden werden.
Das Dreieck ist unterhalb der Funktion $f$.
Die drei Ecken des Dreiecks sind die Punkte $P(u|v)$, $Q(0|0)$ und $R(u|0)$.
$
  f(x)=x^3-6x^2+9x
$

#figure({
  let x = lq.linspace(-1, 5)
  let f(x) = calc.pow(x, 3) - 6 * calc.pow(x, 2) + 9 * x
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 2pt,
    outset: 2pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-1, 5),
    ylim: (-5, 7),
    lq.plot(x, x.map(x => f(x)), mark: none, color: red, label: [$f(x)$]),
    lq.path((0, 0), (1.5, 0), (1.5, f(1.5)), fill: red.lighten(70%)),
    lq.scatter((0, 1.5, 1.5), (0, 0, f(1.5)), color: black, size: 6pt),
    lq.place(-0.25, 0.7)[$Q$],
    lq.place(1.7, -0.7)[$R$],
    lq.place(1.7, f(1.5) + 0.7)[$P$],
  )
})

Um die Fläche $A$ eines Dreiecks auszurechnen nutzt man diese Formel,
$g$ steht für die Grundseite und $h$ für die Höhe:
$
  A=frac(g h, 2)
$
In unserem Beispiel ist $g=u$ und $h=v$, dazu ist $v=f(u)$.
Wenn wir diese Werte in $A$ einsetzen bildet sich diese Funktion:
$
  A(u) & =frac(u dot f(u), 2) \
  A(u) & =frac(u (u^3-6u^2+9u), 2) \
  A(u) & =frac(u^4-6u^3+9u^2, 2) \
  A(u) & =frac(u^4, 2)-3u^3+frac(9, 2)u^3
$
Unsere neue Funktion $A(u)$ kann jetzt den Flächeninhalt für jeden
Wert von $u$ berechnen.
Wir brauchen den maximalen Flächeninhalt, also soll die Funktion
für den Flächeninhalt ($A(u)$) maximal werden.
Um ein maximum zu berechnen bilden wir die ersten zwei Ableitungen unserer Funktion.
$
    A(u) & =frac(u^4, 2)-3u^3+frac(9, 2)u^3 \
   A'(u) & = 2u^3-9u^2+9u \
  A''(u) & = 6u^2-18u+9
$
Jetzt finden wir die Nullstelle der ersten Ableitung.
$
                A'(u) & =0 \
  <=> u_1=0, quad u_2 & =frac(3, 2), quad u_3=3
$
Danach prüfen wir, in welcher Stelle ein Maximum liegt.
$
                     A''(0) = 9 & > 0 => "Minimum" \
  A''(frac(3, 2)) = frac(-9, 2) & < 0 => "Maximum" \
                     A''(3) = 9 & > 0 => "Minimum" \
                  A(frac(3, 2)) & = frac(81, 32) \
                v=f(frac(3, 2)) & = frac(27, 8)
$
Der größte Flächeninhalt ist $frac(81, 32)$,
um diesen zu erreichen muss $u=frac(3, 2)$ und $v=frac(27, 8)$ sein.

#figure({
  let x = lq.linspace(-1, 5)
  let f(x) = calc.pow(x, 3) - 6 * calc.pow(x, 2) + 9 * x
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 2pt,
    outset: 2pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-1, 5),
    ylim: (-5, 7),
    lq.plot(x, x.map(x => f(x)), mark: none, color: red, label: [$f(x)$]),
    lq.path((0, 0), (1.5, 0), (1.5, f(1.5)), fill: red.lighten(70%)),
    lq.path((0, 0), (1.5, 0), stroke: black + 0.75pt),
    lq.path((1.5, 0), (1.5, f(1.5)), stroke: black + 0.75pt),
    lq.place(0.5, -0.7)[$frac(3, 2)$],
    lq.place(1.7, 1.7)[$frac(27, 8)$],
  )
})

== Integralrechnung
=== Stammfunktionen
Stammfunktionen sind Funktionen, die eine Funktion $f$ ergeben, wenn man sie ableitet.
Also gilt: $F'(x)=f(x)$.

Allgemein gilt die folgende Regel.
$
  f(x) & =x^n \
  F(x) & =frac(x^(n+1), n+1)+C, n in RR - {-1}
$
Wenn eine Funktion abgeleitet wird fällt jede Konstante weg,
daher gibt es unendlich viele Stammfunktionen, die Konstante wird mit $C$ dargestellt.

=== Bestimmte Integrale
Bei bestimmten Integralen ist immer klar, welches Intervall gesucht ist.
Also gilt für ein Integral in dem Intervall $[a;b]$ diese Formel:
$
  integral_a^b f(x) d x = [F(x)]_a^b
$
Außerdem ist die Integralrechnung keine Flächenberechnung,
daher werden oft Absolutbeträge genutzt.
Damit wird das Ergebnis eines Integrals immer positiv.
Die Definition des Absolutbetrags sieht so aus:
$
  abs(x) :=
  cases(
    x "wenn" x gt.eq 0,
    -x "andernfalls"
  )
$
Es wird schnell deutlich, dass die Integralrechnung keine Flächenberechnung ist.
Haben wir beispielsweise die Funktion $f(x)=-x^2+4$ gegeben und wollen diese von
$-2$ bis $2$ integrieren, sieht die Fläche, die wir berechnen wollen, so aus:

#figure({
  let f(x1, x2) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => -calc.pow(x, 2) + 4)
    return (x, y)
  }
  let plt = f(-3, 3)
  let fill = f(-2, 2)
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    ylim: (-2, 5),
    lq.fill-between(fill.at(0), fill.at(1), fill: red.lighten(70%)),
    lq.plot(plt.at(0), plt.at(1), mark: none, color: red, label: [$f(x)$]),
  )
})


Jetzt bilden wir das Integral und lösen es auf.
$
    & integral_(-2)^(2) -x^2+4 d x \
  = & [frac(-x^3, 3)+4x]_(-2)^(2) \
  = & [frac(-2^3, 3)+4 dot 2-(frac(-(-2)^3, 3)+4(-2))] \
  = & frac(32, 3)
$
Es gibt keine Probleme.
Möchten wir jetzt jedoch von $2$ bis $4$ integrieren, stellen wir etwas komisches fest.

#figure({
  let f(x1, x2) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => -calc.pow(x, 2) + 4)
    return (x, y)
  }
  let plt = f(0, 4)
  let fill = f(2, 4)
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (0, 6),
    ylim: (-4, 5),
    lq.fill-between(fill.at(0), fill.at(1), fill: red.lighten(70%)),
    lq.plot(plt.at(0), plt.at(1), mark: none, color: red, label: [$f(x)$]),
  )
})

Erstmal das Integral bilden.
$
    & integral_(2)^(4) -x^2+4 d x \
  = & [frac(-x^3, 3)+4x]_(2)^(4) \
  = & [frac(-4^3, 3)+4 dot 4-(frac(-2^3, 3)+4*2)] \
  = & frac(-32, 3)
$
Das Ergebnis ist negativ, obwohl ein negativer Flächeninhalt nicht möglich ist.
Deshalb nutzen wir, wenn das Ergebnis des Integrals negativ ist -- was vorher geprüft werden sollte -- den Betrag des Ergebnisses.
$
    & abs(integral_(2)^(4) -x^2+4 d x) \
  = & abs(frac(-32, 3)) \
  = & frac(32, 3)
$

=== Flächen zwischen zwei Funktionen
Um die Fläche zwischen den beiden Funktionen $f$ und $g$ ($f gt.eq g$) im Intervall $[a;b]$ zu berechnen nutzt man diese Formel:
$
  integral_(a)^(b) [f(x)-g(x)] d x
$
Beispiel: $f(x)=-x^2+4, g(x)=2$

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(-2, 2, x => -calc.pow(x, 2) + 4)
  let fng = f(-4, 4, x => 2)
  let fnf_fill = f(-calc.sqrt(2), calc.sqrt(2), x => -calc.pow(x, 2) + 4)
  let fng_fill = f(-calc.sqrt(2), calc.sqrt(2), x => 2)
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-4, 4),
    ylim: (0, 5),
    lq.fill-between(fnf_fill.at(0), fnf_fill.at(1), y2: fng_fill.at(1), fill: red.lighten(70%)),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)$]),
    lq.plot(fng.at(0), fng.at(1), mark: none, color: blue, label: [$g(x)$]),
  )
})

Um die Fläche zwischen $f$ und $g$ zu bestimmen muss zunächst klar werden,
welche Funktion in dem gezeigten Bereich größer ist.
Hier ist $f > g, [x_1;x_2]$, $x_1$ und $x_2$ stellen hier die Schnittpunkte
der beiden Funktionen dar.
Jetzt darf einfach in die Formel eingesetzt werden,
$x_1$ und $x_2$ müssen dafür natürlich erst bestimmt werden,
das werden wir in diesem Beispiel jedoch nicht machen.
$
  integral_(x_1)^(x_2) [f(x)-g(x)] d x
$

=== Mittelwerte von Funktionen
*diskrete Mittelwerte*: \
Es wird ein Mittelwert aus einer Menge von Zahlen gebildet. \
$
              {1,3 & ,5,4} \
  frac(1+3+5+4, 4) & =frac(13, 4)=3.25
$
*kontinuierliche Mittelwerte*: \
Der Mittelwert wird aus Werten einer Funktion bestimmt. \
$
  overline(m)=frac(1, b-a) integral_(a)^(b) f(x) d x
$
Beispiel: $f(x)=-x^2+4$

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(-2, 2, x => -calc.pow(x, 2) + 4)
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-4, 4),
    ylim: (0, 5),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)$]),
  )
})

Wir wollen den Mittelwert $overline(m)$ von $f$ in dem Interval
$[-2;2]$ bestimmen.
Dafür setzen wir einfach in die Formel ein.
$
  overline(m) & =frac(1, b-a) integral_(a)^(b) f(x) d x \
  overline(m) & =frac(1, 2-(-2)) integral_(-2)^(2) -x^2+4 d x \
  overline(m) & =frac(1, 4) integral_(-2)^(2) -x^2+4 d x \
  overline(m) & =frac(1, 4) [frac(-x^3, 3)+4x]_(-2)^(2) \
  overline(m) & =frac(1, 4) [frac(-2^3, 3)+4 dot 2-(frac(-(-2)^3, 3)+4(-2))] \
  overline(m) & =frac(1, 4) dot frac(32, 3) \
  overline(m) & =frac(8, 3)
$
Der Mittelwert der Funktion $f$ im Interval $[-2;2]$ ist also $frac(8, 3)$.

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(-2, 2, x => -calc.pow(x, 2) + 4)
  let m = f(-4, 4, x => 8 / 3)
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-4, 4),
    ylim: (0, 5),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)$]),
    lq.plot(m.at(0), m.at(1), mark: none, color: blue, label: [$overline(m)$]),
  )
})


=== Rotationskörper
Rotationskörper, sind Objekte, die sich bilden wenn eine Funktion um eine Achse rotiert.
Die Rotationsachse wird auch die Figurenachse genannt.
Um allgemein das Volumen eines Rotationskörpers,
der durch die Funktion $f$ beschrieben wird zu bestimmen nutzt man diese Formel:
$
  V=pi integral_(a)^(b)[f(x)]^2 d x
$
Beispiel: $f(x)=x^2$, im Interval $[0;2]$

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(-1, 3, x => calc.pow(x, 2))
  let fnf_fill = f(0, 2, x => calc.pow(x, 2))
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (-1, 4),
    ylim: (0, 5),
    lq.fill-between(fnf_fill.at(0), fnf_fill.at(1), fill: red.lighten(70%)),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)$]),
  )
})

Uns interessiert das Volumen $V$ dieses Körpers.
Dazu setzen wir unsere Werte in die Formel ein.
$
  V & =pi integral_(0)^(2)[x^2]^2 d x \
  V & =pi integral_(0)^(2) x^4 d x \
  V & =pi [frac(x^5, 5)]_(0)^(2) \
  V & =pi [frac(2^5, 5)-(frac(0^5, 5))] \
  V & =pi frac(32, 5) \
  V & =frac(32 pi, 5)
$
Nun wissen wir, dass das Volumen $V$ unseres Rotationskörpers $frac(32 pi, 5)$ beträgt.

=== Uneigentliche Integrale
Uneigentliche Integrale sind bestimmte Integrale mit komplizierteren
Integrationsgrenzen.
Oft wird $-infinity$ oder $+infinity$ in die Integrationsgrenzen eingebaut,
es können jedoch auch Integrale mit richtigen Zahlen uneigentlich sein.

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(0.3, 5, x => 1 / calc.pow(x, 2))
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (0, 5),
    ylim: (0, 5),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)=frac(1, x^2)$]),
  )
})

Hier sieht man den Plot von $f(x)=frac(1, x^2)$.
Es lässt sich relativ gut erkennen, dass der Wert der Funktion immer größer wird,
umso näher man der Y-Achse kommt.
Entfernt man sich also von der Y-Achse, wird der Wert immer kleiner.
Mathematisch lässt sich das so ausdrücken:
$
          lim_(x arrow.r 0) f(x) & = infinity \
   lim_(x arrow.r infinity) f(x) & = 0 \
  lim_(x arrow.r -infinity) f(x) & = 0
$
Diese Grenzen muss man beachten, wenn man uneigentliche Integrale,
wie beispielsweise dieses Integral ausrechnen möchte.
$
  & integral_(1)^(infinity) f(x) d x
$
Mit diesem Integral würde man die folgende Fläche berechnen:

#figure({
  let f(x1, x2, fn) = {
    let x = lq.linspace(x1, x2)
    let y = x.map(x => fn(x))
    return (x, y)
  }
  let fnf = f(0.3, 5, x => 1 / calc.pow(x, 2))
  let fnf_fill = f(1, 5, x => 1 / calc.pow(x, 2))
  let filter(value, distance) = value != 0 and distance >= 5pt

  show: lq.set-tick(
    inset: 0pt,
    outset: 3pt,
    shorten-sub: 100%,
  )
  lq.diagram(
    grid: none,
    legend: (position: top + right),
    xaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    yaxis: (position: 0, tip: tiptoe.tikz, filter: filter),
    xlim: (0, 5),
    ylim: (0, 5),
    lq.fill-between(fnf_fill.at(0), fnf_fill.at(1), fill: red.lighten(70%)),
    lq.plot(fnf.at(0), fnf.at(1), mark: none, color: red, label: [$f(x)$]),
  )
})

Wenn man versucht dieses Integral zu berechnen fällt eine Besonderheit auf.
$
  & integral_(1)^(infinity) f(x) d x \
  & integral_(1)^(infinity) frac(1, x^2) d x \
  & integral_(1)^(infinity) x^(-2) d x \
  & [frac(x^(-1), -1)]_(1)^(infinity) \
  & [frac(-1, x)]_(1)^(infinity)
$
Als obere Grenze kann nicht einfach $infinity$ eingesetzt werden,
deshalb suchen wir einen Weg um uns an $infinity$ anzunähern.
$
  & lim_(b \to infinity) [ frac(-1, x)]_(1)^(b)
$
Jetzt ist es möglich anstatt $infinity$ einfach unsere Variable $b$
einzusetzen und erstmal so weit wie möglich aufzulösen.
$
  & lim_(b \to infinity) [ frac(-1, b) - (frac(-1, 1))] \
  & lim_(b \to infinity) ( frac(-1, b) + 1)
$
Nachdem wir so weit wie möglich vereinfacht haben,
gucken wir uns jetzt jeden Bestandteil des Ergebnisses an.
Da unsere Variable $b$ ist, interessieren uns erstmal nur die Terme,
in denen $b$ vorkommt.
$+1$ ist für den Limes irrelevant, da es kein $b$ enthält,
$frac(-1, b)$ ist jedoch relevant,
deshalb müssen wir uns $frac(-1, b)$ genauer angucken. \newline
Dazu müssen wir uns fragen, was passiert, wenn $b$ einen sehr großen Wert annimmt.
Anhand von ein paar Beispielen kann man das verhalten von $frac(-1, b)$
relativ gut verinnerlichen.
Man kann zur Veranschaulichung einfach ein paar Werte für $b$ einsetzen.
$
               & frac(-1, b) \
   frac(-1, 2) & = -0.5 \
   frac(-1, 4) & = -0.25 \
   frac(-1, 8) & = -0.125 \
  frac(-1, 16) & = -0.0625
$
Wie man relativ gut erkennen kann, geht $frac(-1, b)$ immer weiter gegen $0$,
desto größer der Wert für $b$ ist.
Das bedeutet für unsere ursprüngliche Frage, dass dieser Term wegfällt.
$
              lim_(b \to infinity) & ( frac(-1, b) + 1) \
                                   & =1 \
  integral_(1)^(infinity) f(x) d x & = 1
$
Nach ein wenig Rechnerei wissen wir also, dass unser uneigentliches Integral,
welches eine obere Grenze von $infinity$ hat, nicht den Wert von $infinity$,
sondern einen Wert von $1$ hat.
