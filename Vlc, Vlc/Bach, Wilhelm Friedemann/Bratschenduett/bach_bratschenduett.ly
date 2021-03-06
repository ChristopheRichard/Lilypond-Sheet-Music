\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 18)

\header {
  title = "Duett für zwei Bratschen"
  subtitle = "Falck Nr. 61 (1784)"
  composer = "Wilhelm Friedemann Bach (1710-1784)"
  arranger = "arr.: Martin Grayson"
  enteredby = "cellist (2012-10-08)"
}

voiceconsts = {
 \key g \major
 \clef "bass"
% \numericTimeSignature
 \compressFullBarRests
}

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

alla = \markup \bold \italic "allargando"
dolc = \markup \bold \italic "dolce"
legg = \markup \bold \italic "leggiero"

introa = { \tempo "1. Allegro " 4=66 \time 4/4 }
introb = { \pageBreak \tempo "2. Lamento " 4=104 \time 3/4 \key a \minor }
introc = { \break \tempo "3. Presto " 4.=104 \time 6/8 \key g \major }

\include "v1.ily"
\include "v2.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Cello I"
	\transpose g c, { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Cello II"
	\transpose g c, { \vb }
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
