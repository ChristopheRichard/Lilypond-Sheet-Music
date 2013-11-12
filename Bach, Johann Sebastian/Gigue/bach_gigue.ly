\version "2.12.3"
\include "deutsch.ly"

#(set-global-staff-size 17)

\header {
  title = "Gigue"
  subtitle = "aus der dritten Orchestersuite"
  composer = "Johann Sebastian Bach (1685-1750)"
  arranger = "arr.: David Schorr"
  enteredby = "cellist (2011-02-18)"
}

voiceconsts = {
 \key c \major
 \time 6/8
% \clef "treble"
 \clef "bass"
% \numericTimeSignature
 \compressFullBarRests
 \tempo "Gigue " 4=112
}

%midilow = "harpsichord"
%midilow = "clarinet"
%midilow = "accordion"
midilow = "bassoon"

dim = \markup \italic \bold "dim."

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"

\book {
  \score {
    \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 1"
	\transpose c c, { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 2"
	\transpose c c, { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 3"
	\transpose c c, { \vc }
      }

      \new Staff {
	\set Staff.midiInstrument = \midilow
	\set Staff.instrumentName = #"Vc 4"
	\transpose c c, { \vd }
      }
    >>

    \layout {}

    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 112 4)
      }
    }
  }
}
