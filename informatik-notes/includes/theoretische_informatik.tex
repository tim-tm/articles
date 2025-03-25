\chapter{Theoretische Informatik}
\section{Formale Sprachen}
\begin{flushleft}
Formale Sprachen sind nicht auf die Kommunikation ausgelegt,
sie sind jedoch nützlich um formale Systeme zu definieren und anzuwenden.
Zum Beispiel können formale Sprachen genutzt werden um den Umgang mit
Zeichenketten präzise zu beschreiben.
Darauf liegt auch der Fokus im Abitur.

Eine formale Sprache besteht aus einem Alphabet, welches verschiedene Zeichen
enthalten kann. Mehrere Zeichen bilden ein Wort.
\end{flushleft}

\begin{flushleft}
Die formale Sprache
\begin{align}
    L=\left\{a^n|n\in\mathbb{N}^{>0}\right\}
\end{align}

über dem Alphabet $\Sigma=\{a\}$ enthält also alle Worte,
die mindestens einen Buchstaben enthalten und dessen Buchstaben
nur $a$ enthalten.
\begin{align}
    w_0&=a,\quad w_0\in L \\
    w_1&=aaaa,\quad w_1\in L
\end{align}
\end{flushleft}

\section{Automatentheorie}
\subsection{Endliche Automaten}
\begin{flushleft}
Endliche Automaten können genutzt werden um formale Sprachen darzustellen.
\end{flushleft}

\subsubsection{Definition}
\begin{flushleft}
Ein endlicher Automat $A$ wird durch einen 5er-Tupel definiert:
\begin{align}
    A=(\Sigma,Q,\delta,q_0,F)
\end{align}

\begin{enumerate}
    \item {
        Das Alphabet $\Sigma$ ist die Menge der erlaubten Eingabesymbole des Automaten.
        Bei endlichen Automaten muss diese Menge $\Sigma$ endlich sein.
    }
    \item {
        Die zweite Menge $Q$ des Automaten ist die Menge aller Zustände dieses
        Automaten.
        Die Anzahl der Zustände des Automaten muss endlich sein.
        Außerdem gilt $q_0 \in Q$, da $q_0$ der Startzustand des Automaten ist.
    }
    \item {
        Da der Automat endlich ist gibt es auch eine Menge $F$ von Endzuständen.
        $Q$ enthält alle Zustände, deshalb gilt $F \subseteq Q$.
    }
    \item {
        Übrig bleibt die Zustandsübergangsfunktion
        $\delta: Q \times \Sigma \rightarrow Q$.
        Diese Übergangsfunktion bestimmt welcher Zustand
        bei welcher bestimmten Eingabe folgt.
    }
\end{enumerate}

Endliche Automaten werden in Bezug auf Determinismus unterschieden.
Ein Automat ist nicht deterministisch, wenn dieser von einem Zustand ausgehend,
mehrere Übergänge für gleiche Zeichen definiert.
\end{flushleft}

\subsubsection{Beispiel}
\label{sec:Beispiel}
\begin{flushleft}
Als Beispiel für einen deterministischen endlichen Automaten ist hier
der Übergangsgraph eines Automaten, der nur die Zahl 42 akzeptiert:
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (R) {$q_0$};
    \node[state] (S) [right of=R] {$q_1$};
    \node[state,accepting] (T) [right of=S] {$q_2$};
    \path (R) edge node [below] {4} (S)
            (S) edge node [below] {2} (T);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Formal ist dieser Automat wie folgt definiert:
\begin{align}
    A &= (\Sigma,Q,\delta,q_0,F) \\
    \Sigma &= \{4,2\} \\
    Q &= \{q_0,q_1,q_2\} \\
    \delta &= \{\langle \langle q_0, 4 \rangle, q_1 \rangle, \langle \langle q_1, 2 \rangle, q_2 \rangle \} \\
    F &= \{q_2\}
\end{align}

Die Zustände dieses Automaten lassen sich auch etwas anschaulicher in einer Übergangstabelle darstellen:
\end{flushleft}

\begin{center}
\begin{tabular}{|c|c|c|}
    \hline
    $\delta$ & 4 & 2 \\
    \hline
    $q_0$ & $q_1$ & $q_0$ \\
    \hline
    $q_1$ & $q_1$ & $q_2$ \\
    \hline
    $q_2$ & $q_2$ & $q_2$ \\
    \hline
\end{tabular}
\end{center}

\subsubsection{Potenzmengenkonstruktion}
\begin{flushleft}
Die Funktionsweise von deterministischen endlichen Automaten
lässt sich relativ einfach erkennen. Bei nicht-deterministischen
endlichen Automaten ist das aber nicht so. Um einen beliebigen
nicht-deterministischen endlichen Automaten (NEA) in einen
deterministischen endlichen Automaten (DEA) umzuwandeln kann
eine Potenzmengenkonstruktion durchgeführt werden.
\end{flushleft}

\begin{flushleft}
\textbf{Beispiel \cite{potenzmengenkonstruktion}}
Der folgende NEA soll jetzt beispielhaft in einen DEA umgewandelt werden:
\end{flushleft}
    
\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (R) {$q_0$};
    \node[state,accepting] (S) [right of=R] {$q_1$};
    \path (R) edge [loop below,below] node {a} (R)
            (R) edge [below] node {a} (S)
            (S) edge [loop below,below] node {b} (S);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Der erste Schritt liegt hierbei in der Bestimmung der Zustandsmenge $Q$.
In diesem Beispiel gilt:
\begin{align}
    Q=\{q_0,q_1\}
\end{align}

Um nun einen DEA aus diesem NEA zu machen muss die Potenzmenge
dieser Zustandsmenge bestimmt werden. Dieser Prozess könnte
bereits aus der Mengenlehre bekannt sein, $Q'$ ist hier die
Potenzmenge von $Q$:
\begin{align}
    Q &=\{q_0,q_1\} \\
    Q' &=\{\emptyset,\{q_0\},\{q_1\},\{q_0,q_1\}\}
\end{align}

Das Symbol $\emptyset$ steht für die leere Menge $\{\}$.
Diese Potenzmenge $Q'$ ist die Zustandsmenge des neuen DEA.
Um später einen schöneren Übergangsgraph zeichnen zu können
wird diese Menge $Q'$ vereinfacht:
\begin{align}
    Q'' =\{\emptyset,q_0,q_1,q_{01}\}
\end{align}

Es ist wichtig zu beachten, dass $q_1 \neq q_{01}$,
da $q_1=\{q_1\}$ und $q_{01}=\{q_0,q_1\}$ ist.
Mit der Menge $Q''$ als Zustandsmenge unseres DEA,
sieht der erste Entwurf des Übergangsgraphen etwa so aus:
\end{flushleft}
    
\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[state] (0) {$q_0$};
    \node[state] (1) [above right=0.65cm and 1.5cm of 0] {$q_1$};
    \node[state] (2) [below right=0.65cm and 1.5cm of 0] {$q_{01}$};
    \node[state] (E) [right=3.75cm of 0] {$\emptyset$};
\end{tikzpicture}
\end{center}

\begin{flushleft}
Wir beginnen damit die Start- und Endzustände zu bestimmen.
Den Startzustand (hier $q_0$) können wir einfach übernehmen.
Bei den Endzuständen ist das Vorgehen etwas anders.
Jeder Zustand, dessen Menge einen Endzustand des NEA enthält
ist ein Endzustand des DEA.
In diesem Beispiel sind also $q_1$ und $q_{01}$ Endzustände:
\end{flushleft}
    
\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (0) {$q_0$};
    \node[accepting,state] (1) [above right=0.65cm and 1.5cm of 0] {$q_1$};
    \node[accepting,state] (2) [below right=0.65cm and 1.5cm of 0] {$q_{01}$};
    \node[state] (E) [right=3.75cm of 0] {$\emptyset$};
\end{tikzpicture}
\end{center}

\begin{flushleft}
Um die Übergänge des DEA zu bestimmen, zeichnen wir zuerst
die Übergangstabelle des NEA:
\end{flushleft}
    
\begin{center}
\begin{tabular}{|c|c|c|}
    \hline
    $\delta$ & a & b \\
    \hline
    $q_0$ & $\{q_0,q_1\}$ & $\emptyset$ \\
    \hline
    $q_1$ & $\emptyset$ & $q_1$ \\
    \hline
    $\emptyset$ & $\emptyset$ & $\emptyset$ \\
    \hline
\end{tabular}
\end{center}

\begin{flushleft}
Hier ist relativ leicht zu erkennen, dass $\{q_0,q_1\}$ der Grund für den fehlenden 
Determinismus des NEA ist. Genau dieser Ausdruck sollte uns jedoch
aus der vereinfachten Potenzmenge $Q''$ bekannt vorkommen,
$\{q_0,q_1\}=q_{01}$. Um einen DEA aus dem NEA zu machen muss man hier also bloß 
$\{q_0,q_1\}$ durch den neuen Zustand $q_{01}$ austauschen:
\end{flushleft}

\begin{center}
\begin{tabular}{|c|c|c|}
    \hline
    $\delta$ & a & b \\
    \hline
    $q_0$ & $q_{01}$ & $\emptyset$ \\
    \hline
    $q_1$ & $\emptyset$ & $q_1$ \\
    \hline
    $q_{01}$ & ? & ? \\
    \hline
    $\emptyset$ & $\emptyset$ & $\emptyset$ \\
    \hline
\end{tabular}
\end{center}

\begin{flushleft}
Um einen kompletten DEA zu konstruieren muss jedoch noch definiert werden,
wie sich der DEA bei $q_{01}$ verhält. Dieses Verhalten muss aus dem NEA
genommen werden. Da $q_{01}$ die Menge von $q_0$ und $q_1$ ist,
kombiniert $q_{01}$ das Verhalten dieser beiden Zustände.
Bei einem $a$ bleibt der DEA also im Zustand $q_{01}$ und bei einem $b$ wandert 
der DEA in den Zustand $q_1$:
\end{flushleft}

\begin{center}
\begin{tabular}{|c|c|c|}
    \hline
    $\delta$ & a & b \\
    \hline
    $q_0$ & $q_{01}$ & $\emptyset$ \\
    \hline
    $q_1$ & $\emptyset$ & $q_1$ \\
    \hline
    $q_{01}$ & $q_{01}$ & $q_1$ \\
    \hline
    $\emptyset$ & $\emptyset$ & $\emptyset$ \\
    \hline
\end{tabular}
\end{center}

\begin{flushleft}
Basierend auf dieser Übergangstabelle kann man diesen Übergangsgraphen zeichnen:
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (0) {$q_0$};
    \node[accepting,state] (1) [above right=0.65cm and 1.5cm of 0] {$q_1$};
    \node[accepting,state] (2) [below right=0.65cm and 1.5cm of 0] {$q_{01}$};
    \node[state] (E) [right=3.75cm of 0] {$\emptyset$};
    \path (0) edge [below] node {a} (2)
            (0) edge [above] node {b} (E)
            (1) edge [above] node {a} (E)
            (1) edge [loop left] node {b} (1)
            (2) edge [loop below] node {a} (2)
            (2) edge [below left] node {b} (1)
            (E) edge [loop below] node {a,b} (E);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Um diesen unordentlichen Graphen zu bereinigen kann man hier
den sogenannten Papierkorbzustand $\emptyset$ entfernen.
Die Übergangstabelle würde dann so aussehen:
\end{flushleft}

\begin{center}
\begin{tabular}{|c|c|c|}
    \hline
    $\delta$ & a & b \\
    \hline
    $q_0$ & $q_{01}$ & $q_0$ \\
    \hline
    $q_1$ & $q_1$ & $q_1$ \\
    \hline
    $q_{01}$ & $q_{01}$ & $q_1$ \\
    \hline
\end{tabular}
\end{center}

\begin{flushleft}   
Hier der übersichtliche Übergangsgraph:
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (0) {$q_0$};
    \node[accepting,state] (2) [right of=0] {$q_{01}$};
    \node[accepting,state] (1) [right of=2] {$q_1$};
    \path (0) edge [below] node {a} (2)
        (0) edge [loop below] node {b} (0)
        (1) edge [loop below] node {a,b} (1)
        (2) edge [loop below] node {a} (2)
        (2) edge [below] node {b} (1);
\end{tikzpicture}
\end{center}

\subsubsection{Programmierung von DEA's}
\begin{flushleft}
Es gibt natürlich verschiedene Wege DEA's zu programmieren,
hier gehe ich jedoch nur auf einen Weg ein, der grundlegend
für jeden DEA funktioniert.
Dieser Weg erfordert jedoch auch abhängig von der Komplexität des DEA's
ein komplexeres Programm.
\end{flushleft}

\begin{flushleft}
Bei der Simulation eines DEA's ist es eigentlich am
wichtigsten zu wissen, ob ein bestimmtes Wort von dem DEA akzeptiert oder
abgelehnt wird.
Man fragt sich also ob der Zustand, der am Ende eines Wortes erreicht
wird ein Endzustand ist.
Um diese Frage zu beantworten braucht man zunächst einen Weg den jetzigen
Zustand zu speichern.
Dafür kann man einen einfachen Integer nutzen, ein bestimmter Wert des Integers
steht dann also für einen bestimmten Zustand des Automaten.
\end{flushleft}

\begin{flushleft}
Ab hier sollte weiter anhand von einem Beispiel erklärt werden.
Daher nutze ich das obige \nameref{sec:Beispiel} eines DEA,
der nur das Wort $w_0=42$ akzeptiert.
Hier noch einmal der Übergangsgraph dieses DEA:
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (R) {$q_0$};
    \node[state] (S) [right of=R] {$q_1$};
    \node[state,accepting] (T) [right of=S] {$q_2$};
    \path (R) edge node [below] {4} (S)
            (S) edge node [below] {2} (T);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Hier seine formale Definition:
\begin{align}
    A &= (\Sigma,Q,\delta,q_0,F) \\
    \Sigma &= \{4,2\} \\
    Q &= \{q_0,q_1,q_2\} \\
    \delta &= \{\langle \langle q_0, 4 \rangle, q_1 \rangle, \langle \langle q_1, 2 \rangle, q_2 \rangle \} \\
    F &= \{q_2\}
\end{align}

Für dieses Beispiel sollte unser Integer im Programmcode
drei verschiedene Werte annehmen können,
die Menge $I$ enthält diese Werte:
\begin{align}
    I=\{0,1,2\}
\end{align}

Ein Wert steht immer für einen Zustand, $0$ steht hier also für $q_0$.
Zunächst erstellen wir die Klasse \textit{Automat},
die das Verhalten des DEA simulieren soll.
Die Methode \textit{isValid(word)} gibt \textit{true}
zurück, wenn der Automat den String
\textit{word} akzeptiert, andernfalls \textit{false}:
\end{flushleft}

\begin{center}  
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // TODO
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Ein Automat verarbeitet jedes Zeichen eines Wortes nacheinander,
das sollte unser Programm auch so machen.
Es gibt natürlich verschiedene Wege dies in Java umzusetzen,
ich persönlich nutze jedoch gerne foreach-Schleifen,
deshalb wird der String \textit{word} erst in ein char-Array umgewandelt:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            // ...
        }
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Jetzt geht es darum das Verhalten des Automaten zu simulieren,
also erstellen wir ein switch-case Statement mit einem case für
jeden bekannten Wert des Integers:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    // verhalten im ersten Zustand
                    break;
                }
                case 1: {
                    // verhalten im zweiten Zustand
                    break;
                }
                case 2: {
                    // verhalten im dritten Zustand
                    break;
                }
            }
        }
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Jetzt kopieren wir das Verhalten jedes Zustands:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    if (c == '4') {
                        zustand = 1;
                    }
                    break;
                }
                case 1: {
                    if (c == '2') {
                        zustand = 2;
                    }
                    break;
                }
                // case 2 entfernt, da der Zustand q2 keinen Uebergang hat
            }
        }
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Die Zustandsvariable wird verändert, \textit{isValid}
gibt aber noch nicht aus, ob der Automat akzeptiert oder nicht.
Dafür kann man einfach abfragen ob die Zustandsvariable den Wert 2 hat,
da $q_2$ ein Endzustand ist:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    if (c == '4') {
                        zustand = 1;
                    }
                    break;
                }
                case 1: {
                    if (c == '2') {
                        zustand = 2;
                    }
                    break;
                }
                // case 2 entfernt, da der Zustand q2 keinen Uebergang hat
            }
        }

        if (zustand == 2) {
            return true;
        } else {
            return false;
        }
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Hier kann die if-Abfrage vereinfacht werden: 
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    if (c == '4') {
                        zustand = 1;
                    }
                    break;
                }
                case 1: {
                    if (c == '2') {
                        zustand = 2;
                    }
                    break;
                }
                // case 2 entfernt, da der Zustand q2 keinen Uebergang hat
            }
        }

        return zustand == 2;
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Was passiert aber nun, wenn isValid mehrmals aufgerufen wird?
Die Zustandsvariable muss beim zweiten Aufruf nicht unbedingt
0 (Startzustand $q_0$) sein, deshalb stellen wir sicher, dass
die Variable beim Aufruf von \textit{isValid} immer auf 0 gesetzt wird:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // sicherstellen, dass isValid im Startzustand startet
        zustand = 0;

        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    if (c == '4') {
                        zustand = 1;
                    }
                    break;
                }
                case 1: {
                    if (c == '2') {
                        zustand = 2;
                    }
                    break;
                }
                // case 2 entfernt, da der Zustand q2 keinen Uebergang hat
            }
        }

        return zustand == 2;
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Wenn man möchte kann man auch noch eine Methode schreiben,
die den jetzigen Zustand zurück gibt:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public class Automat {
    // der jetzige Zustand
    private int zustand;

    // Gibt zurueck ob der String "word" akzeptiert wird.
    public boolean isValid(String word) {
        // sicherstellen, dass isValid im Startzustand startet
        zustand = 0;

        // String --> char[]
        char[] arr = word.toCharArray();

        // jeden char in "word" bearbeiten
        for (char c : arr) {
            switch (zustand) {
                case 0: {
                    if (c == '4') {
                        zustand = 1;
                    }
                    break;
                }
                case 1: {
                    if (c == '2') {
                        zustand = 2;
                    }
                    break;
                }
                // case 2 entfernt, da der Zustand q2 keinen Uebergang hat
            }
        }

        return zustand == 2;
    }

    // gibt den jetzigen Zustand zurueck
    public int getZustand() {
        return zustand;
    }
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\begin{flushleft}
Außerdem kann man einen kleinen Test für die \textit{isValid} Methode schreiben:
\end{flushleft}

\begin{center}
\begin{lstlisting}
public static void main(String[] args) {
    // erstelle ein Automat Objekt
    Automat a = new Automat();
    // sollte "true" ausgeben
    System.out.println(a.isValid("42"));
    // sollte "false" ausgeben
    System.out.println(a.isValid("43"));
}
\end{lstlisting}
\href{https://raw.githubusercontent.com/tim-tm/articles/refs/heads/main/informatik-notes/code/Automat.java}{\textit{Unkommentierter Code}} \\
\end{center}

\subsection{Mealy-Automaten}
\subsubsection{Definition}
\begin{flushleft}
Mealy-Automaten können im Gegensatz zu normalen endlichen Automaten
auch Ausgaben produzieren. Ein normaler endlicher Automat (Akzeptor)
kann nur Eingaben akzeptieren oder ablehnen. Deshalb sind
Mealy-Automaten etwas komplizierter als Akzeptoren.
Sie werden in der Regel durch einen 7er-Tupel definiert:
\begin{align}
    A=(\Sigma,\Omega,Q,\delta,\lambda,q_0,F)
\end{align}

Neu sind hier bloß $\Omega$,
die Menge der Ausgabesymbole und
$\lambda: Q \times \Sigma \rightarrow \Omega$, die Ausgabefunktion.
\end{flushleft}

\subsubsection{Beispiel}
\begin{flushleft}
Der Mealy-Automat $A$ bildet die bitweise NICHT-Operation ab.
\begin{align}
    A&=(\Sigma,\Omega,Q,\delta,\lambda,q_0,F) \\
    \Sigma &=\left\{0,1\right\}=\Omega \\
    Q&=\left\{q_0\right\} \\
    F&=\left\{q_0\right\}
\end{align}
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state,accepting] (R) {$q_0$};
    \path (R) edge [loop above] node {$0/1$} (R)
          (R) edge [loop below] node {$1/0$} (R);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Das Wort $w_0=001101$ erzeugt das neue Wort
$w_1=110010$.
Alle Bits der Binärzahl $w_0$ wurden umgekehrt.
\end{flushleft}

\subsection{Kellerautomaten}
\subsubsection{Definition}
\begin{flushleft}
Kellerautomaten verfügen im Gegensatz zu endlichen Automaten über
einen Kellerspeicher.
Sie können auch durch einen 7er-Tupel definiert werden:
\begin{align}
    A=(Q,\Sigma,\Gamma,\delta,q_0,\#,F)
\end{align}

Hier steht $\Gamma$ für das Kelleralphabet und $\#\in\Gamma$ für
das Anfangssymbol im Keller.
Die Zustandsübergangsfunktion $\delta$ wird definiert als
$\delta\colon Q\times\left(\Sigma\cup\left\{\epsilon\right\}\right)\times\Gamma\rightarrow\mathcal{P}\left(Q\times{\Gamma}^*\right)$.

Ein Kellerautomat ist deterministisch, wenn es
für eine Eingabe immer nur höchstens eine
Zustandsübergangsabfolge gibt.

Formal lässt sich diese Erkenntnis wie folgt ausdrücken:
\begin{align}
    \forall q\in Q,\quad\forall a\in\Sigma,\quad\forall g\in\Gamma \\
    \left|\delta\left(q,a,g\right)\right|+
    \left|\delta\left(q,\epsilon,g\right)\right|\leq 1
\end{align}
\end{flushleft}

\subsubsection{Beispiel}
\begin{flushleft}
Der Kellerautomat $A$ ist deterministisch und akzeptiert die Sprache
$L=\left\{a^n b^n\middle| n>0\right\}$.
\begin{align}
    A&=\left(Q,\Sigma,\Gamma,\delta,q_0,\#,F\right) \\
    Q&=\left\{q_0,q_1,q_2\right\} \\
    \Sigma &=\left\{a,b\right\} \\
    \Gamma &=\left\{\#,a\right\} \\
    F&=\left\{q_2\right\}
\end{align}
\end{flushleft}

\begin{center}
\begin{tikzpicture}[->,
    shorten >=5pt,
    node distance=2.5cm,
    semithick]
    \node[initial,state] (R) {$q_0$};
    \node[state] (S) [right of=R] {$q_1$};
    \node[state,accepting] (T) [right of=S] {$q_2$};
    \path (R) edge [loop above] node {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
          (R) edge [loop below] node {\scriptsize $\left(a,a\right)\colon aa$} (R)
          (R) edge node [above] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
          (S) edge [loop above] node {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
          (S) edge node [above] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
\end{tikzpicture}
\end{center}

\begin{flushleft}
Wird das Wort $w_0=aabb$ akzeptiert?
\end{flushleft}

\begin{center}   
\begin{tabular}{c|c|c}
Symbol & Zustand & Kellerinhalt \\
\hline
$a$ &
\scalebox{0.8}{
    \begin{tikzpicture}[->,
        shorten >=5pt,
        node distance=2.5cm,
        semithick]
        \node[initial,state] (R) [fill=cyan!25] {$q_0$};
        \node[state] (S) [right of=R] {$q_1$};
        \node[state,accepting] (T) [right of=S] {$q_2$};
        \path (R) edge [loop above] node [fill=magenta!25] {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
            (R) edge [loop below] node {\scriptsize $\left(a,a\right)\colon aa$} (R)
            (R) edge node [above] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge [loop above] node {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge node [above] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
    \end{tikzpicture}
} &
\begin{tikzpicture}[minimum width=1cm, minimum height=0.5cm]
    \matrix [matrix of nodes,
                nodes={draw},
                nodes in empty cells] {
        $a$ \\ $\#$ \\
    };
\end{tikzpicture} \\
\hline
$a$ &
\scalebox{0.8}{
    \begin{tikzpicture}[->,
        shorten >=5pt,
        node distance=2.5cm,
        semithick]
        \node[initial,state] (R) [fill=cyan!25] {$q_0$};
        \node[state] (S) [right of=R] {$q_1$};
        \node[state,accepting] (T) [right of=S] {$q_2$};
        \path (R) edge [loop above] node {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
            (R) edge [loop below] node [fill=magenta!25] {\scriptsize $\left(a,a\right)\colon aa$} (R)
            (R) edge node [above] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge [loop above] node {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge node [above] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
    \end{tikzpicture}
} &
\begin{tikzpicture}[minimum width=1cm, minimum height=0.5cm]
    \matrix [matrix of nodes,
                nodes={draw},
                nodes in empty cells] {
        $a$ \\ $a$ \\ $\#$ \\
    };
\end{tikzpicture} \\
\hline
$b$ &
\scalebox{0.8}{
    \begin{tikzpicture}[->,
        shorten >=5pt,
        node distance=2.5cm,
        semithick]
        \node[initial,state] (R) {$q_0$};
        \node[state] (S) [right of=R,fill=cyan!25] {$q_1$};
        \node[state,accepting] (T) [right of=S] {$q_2$};
        \path (R) edge [loop above] node {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
            (R) edge [loop below] node {\scriptsize $\left(a,a\right)\colon aa$} (R)
            (R) edge node [above,fill=magenta!25] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge [loop above] node {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge node [above] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
    \end{tikzpicture}
} &
\begin{tikzpicture}[minimum width=1cm, minimum height=0.5cm]
    \matrix [matrix of nodes,
                nodes={draw},
                nodes in empty cells] {
        $a$ \\ $\#$ \\
    };
\end{tikzpicture} \\
\hline
$b$ &
\scalebox{0.8}{
    \begin{tikzpicture}[->,
        shorten >=5pt,
        node distance=2.5cm,
        semithick]
        \node[initial,state] (R) {$q_0$};
        \node[state] (S) [right of=R,fill=cyan!25] {$q_1$};
        \node[state,accepting] (T) [right of=S] {$q_2$};
        \path (R) edge [loop above] node {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
            (R) edge [loop below] node {\scriptsize $\left(a,a\right)\colon aa$} (R)
            (R) edge node [above] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge [loop above] node [fill=magenta!25] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge node [above] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
    \end{tikzpicture}
} &
\begin{tikzpicture}[minimum width=1cm, minimum height=0.5cm]
    \matrix [matrix of nodes,
                nodes={draw},
                nodes in empty cells] {
        $\#$ \\
    };
\end{tikzpicture} \\
\hline
$\epsilon$ &
\scalebox{0.8}{
    \begin{tikzpicture}[->,
        shorten >=5pt,
        node distance=2.5cm,
        semithick]
        \node[initial,state] (R) {$q_0$};
        \node[state] (S) [right of=R] {$q_1$};
        \node[state,accepting] (T) [right of=S,fill=cyan!25] {$q_2$};
        \path (R) edge [loop above] node {\scriptsize $\left(\#,a\right)\colon a\#$} (R)
            (R) edge [loop below] node {\scriptsize $\left(a,a\right)\colon aa$} (R)
            (R) edge node [above] {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge [loop above] node {\scriptsize $\left(a,b\right)\colon\epsilon$} (S)
            (S) edge node [above,fill=magenta!25] {\scriptsize $\left(\#,\epsilon\right)\colon\epsilon$} (T);
    \end{tikzpicture}
} &
\begin{tikzpicture}[minimum width=1cm, minimum height=0.5cm]
    \matrix [matrix of nodes,
                nodes={draw},
                nodes in empty cells] {
        \\
    };
\end{tikzpicture}
\end{tabular}
\end{center}

\section{Grammatiken}
\begin{flushleft}
Neben der Darstellung durch Automaten, können Sprachen auch durch Grammatiken
beschrieben werden.
\end{flushleft}

\subsection{Definition}
\begin{flushleft}
Eine Grammatik $G$ wird durch ein 4er-Tupel definiert:
\begin{align}
    G=\left(N,T,P,s\right)
\end{align}

\begin{enumerate}
    \item {
        Hier steht $N$ für die Menge der Nichtterminalsymbole.
        In den Wörtern, die durch die Grammatik $G$ erzeugt werden
        können, treten keine Nichtterminalsymbole auf.
    }
    \item {
        Die Menge $T$ der Terminalsymbole umfasst alle Symbole, die
        in den von der Grammatik $G$ produzierten Wörtern vorkommen können.
    }
    \item {
        Die Menge $P$ enthält alle Produktionsregeln der Grammatik $G$.
    }
    \item {
        Das Symbol $s$ ist das Startsymbol der Grammatik $G$.
    }
\end{enumerate}
\end{flushleft}

\subsection{Chomsky-Hierarchie}
\begin{center}
\begin{tikzpicture}
    \draw[thick,black] (0,1.5) ellipse (1.5 and 0.5) node (3) {regulär};
    \draw[thick,black] (0,1) ellipse (2 and 1) node[below=0.5 of 3] {kontextfrei};
    \draw[thick,black] (0,0.5) ellipse (2.5 and 1.5) node[below=1.5 of 3] {kontextsensitiv};
    \draw[thick,black] (0,0) ellipse (3 and 2) node[below=2.5 of 3] {rekursiv aufzählbar};
\end{tikzpicture}
\end{center}

\begin{center}
\begin{tabular}{c|c|p{4cm}}
    \textbf{Grammatik} & \textbf{Sprachen} & \textbf{Regeln} \\
    \hline
    Typ-3 & rechts-regulär &
    {\begin{align}
        A&\rightarrow a \\
        A&\rightarrow aB
    \end{align}} \\
    \hline
    Typ-3 & links-regulär &
    {\begin{align}
        A&\rightarrow a \\
        A&\rightarrow Ba
    \end{align}} \\
    \hline
    Typ-2 & kontextfrei &
    {\begin{align}
        A&\rightarrow \alpha \\
        \alpha&\in N^*,T^*
    \end{align}} \\
    \hline
    Typ-1 & kontextsensitiv &
    {\begin{align}
        \alpha A\beta&\rightarrow\alpha\beta\gamma \\
        \alpha,\beta,\gamma&\in N^*,T^*
    \end{align}} \\
    \hline
    Typ-0 & rekursiv aufzählbar &
    {\begin{align}
        \gamma&\rightarrow\alpha \\
        \alpha&\in N^*,T^* \\
        \gamma&\in N^*,T^*, \gamma\neq\epsilon
    \end{align}} \\
\end{tabular}
\end{center}

\subsection{Beispiel}
\begin{flushleft}
Die Grammatik $G$ ist rechtslinear:
\begin{align}
    G=(&\{A,B\},\\
    &\{0,1\},\\
    &\{A\rightarrow 0B|\epsilon,B\rightarrow 1A|\epsilon\},\\
    &A)
\end{align}

Diese Grammatik kann die folgenden Wörter erzeugen:
\begin{align}
    w_0&=0 \\
    w_1&=01 \\
    w_2&=010 \\
    w_3&=0101
\end{align}
\end{flushleft}
