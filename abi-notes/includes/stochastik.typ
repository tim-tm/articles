== Stochastik

=== Binomialverteilungen
Eine Binomialverteilung ist eine diskrete Wahrscheinlichkeitsverteilung.
Das bedeutet, dass eine Binomialverteilung auf einer kleineren Menge definiert ist.
Oft ist diese Menge endlich (${0,1,2,dots,n}$), sie kann aber auch abzählbar unendlich
(bspw. die Menge der natürlichen Zahlen) sein. Außerdem kennt eine Binomialverteilung
nur zwei Versuchsausgänge, Erfolg oder Misserfolg. Solche Experimente werden Bernoulli
Experimente genannt.

==== Aufgabentypen
Für alle hier beschriebenen Aufgabentypen gilt $n$ als die Anzahl aller
Versuchsausgänge, $k$ als die beschränkte Anzahl von Versuchsausgängen und
$p$ als Erfolgswahrscheinlichkeit. \
_Beispiel: Ein Würfel wird 100 mal geworfen, wie hoch ist die Wahrscheinlichkeit,
  dass 5 Sechsen geworfen werden?_ \

Hier gilt:
$
  n=100,k=5,p=frac(1, 6)
$

+ *Bestimmung von P* \
  Der häufigste und einfachste Aufgabentyp ist die Bestimmung von $P$.
  Hierbei verlässt man sich auf eine treue Formel.
  $
    P(X=k)=binom(n, k) dot p^k dot (1-p)^(n-k)
  $
  Kumulierte Wahrscheinlichkeiten berechnet man mit der selben Formel,
  diese benötigen jedoch mehr Aufwand.
  $
    P(X lt.eq 2)=P(X=0) + P(X=1)+P(X=2)
  $
  Mathematica bietet den `CDF` Befehl um diese Art der kumulierten
  Wahrscheinlichkeit auszurechnen. Somit lässt sich jeder beliebige
  Ausdruck in solch einen Ausdruck umformen und mit Mathematica berechnen.
  $
                          P(X>k) & = 1-P(X lt.eq k) \
                    P(X gt.eq k) & = 1-P(X lt.eq k-1) \
                         P(X <k) & = P(X lt.eq k-1) \
    P(k_(1) lt.eq X lt.eq k_(2)) & = P(X lt.eq k_(2))-P(X lt.eq k_(1)-1)
  $

+ *Bestimmung von n* \
  In manchen Aufgaben sind nur $p$ und $k$ gegeben, $n$ muss bestimmt werden.
  Aus der Aufgabenstellung geht dann eine ähnliche Ungleichung hervor
  (hier: $p=0.6$ und $k=n$):
  $
      P(X=n) &lt.eq 0.01 \
      binom(n, n) dot 0.6^n dot 0.4^0 &lt.eq 0.01 \
      0.6^n &lt.eq 0.01 \
      ln(0.6^n) &lt.eq ln(0.01) \
      n ln(0.6) &lt.eq ln(0.01) \
      n &gt.eq frac(ln(0.01), ln(0.6)) approx 9.01 \
      gt.eq &", da" ln(0.6)<0
  $
  Hier ist also, wie so oft in der Stochastik,
  die einzige Kunst das Entschlüsseln der Aufgabenstellung.

+ *Erwartungswert und Standardabweichung* \
  Der Erwartungswert $mu$ und die Standardabweichung $sigma$ sind wichtige
  Bestandteile der Stochastik. Glücklicherweise ist es bei Binomialverteilungen
  relativ einfach $mu$ und $sigma$ zu bestimmen.
  $
      mu &= n dot p \
      sigma &= sqrt(n dot p dot (1-p))
  $
  Der Erwartungswert ist der Wert, der im Schnitt erwartet wird,
  wenn ein Experiment oft ausgeführt wird. Die Standardabweichung
  ist die mögliche Abweichung vom Erwartungswert.
  Dieses Interval beschreibt diese Abweichung:
  $
      [mu-sigma;mu+sigma]
  $
