\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 24)

\header {
  title = "Larghetto"
  composer = "Georg Friedrich Händel"
  arranger = "(1685-1759)"
  enteredby = "cellist (2012-01-05)"
}

voiceconsts = {
  \key b \major
  \time 3/4
% \numericTimeSignature
  \compressFullBarRests
  \tempo 4=70
}

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

fine = \markup \bold \italic "Fine"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vl"
	\transpose b c' { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vla"
	\transpose b c' { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Vlc"
	\transpose b c' { \vc }
      }
>>

\book {
  \score {
    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}
