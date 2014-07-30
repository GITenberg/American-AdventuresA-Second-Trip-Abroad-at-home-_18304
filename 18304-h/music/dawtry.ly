\version "2.6.5"
\include "english.ly"

melody = \relative c' {
\key g \major
\autoBeamOff
d2 d2 | g4 b4 a4 fs8 fs8 | g4 b4 a4. r8 | d8. d16 e4 b2 | d4 g,4 b4 d,4 | g1\fermata | e1~ | e1 \bar "||"
}

\addlyrics {
An' a Daw -- try Daw! an' a swimp -- y raw! an' a Daw -- try Daw -- try Daw -- try Raw Swimp.
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 180 }
  \layout {
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
  }
}
