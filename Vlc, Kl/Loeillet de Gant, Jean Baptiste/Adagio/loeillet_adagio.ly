\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 18.25)

\header {
  title     = \markup \bold \italic "Adagio"
  subtitle  = "- aus den \"Zwölf Sonaten für Recorder\" -"
  composer  = "Jean-Baptiste Loeillet de Gant (1688-1720)"
  arranger  = "arr.: Helmut Kickton"
  enteredby = "cellist (2014-09-26)"
  piece     = "op. 1 Nr. 1 (ca. 1710)"
}

voiceconsts = {
  \key e \minor
  \time 4/4
  \tempo "Adagio " 4=40
  \numericTimeSignature
  \compressFullBarRests
  % \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

miba = "drawbar organ"
mikl = "acoustic grand"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"

music = <<
      \new Staff {
        \set Staff.midiInstrument = \miba
        \set Staff.instrumentName = \markup \center-column { "Violon-" "cello" }
        \transpose e e { \va }
      }

      \new PianoStaff <<
        \set PianoStaff.midiInstrument = \mikl
        \set PianoStaff.instrumentName = \markup \center-column { "Klavier" }
        <<
          \new Staff {
            \transpose e e { << \vb \\ \vc >> }
          }
%          \new Dynamics \vdy
          \new Staff {
            \transpose e e { \vd }
          }
        >>
     >>
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
