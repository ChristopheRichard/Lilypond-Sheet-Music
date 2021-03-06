\version "2.18.2"


#(set-global-staff-size 18)

\header {
  title = "Air in F"
  composer = "Georg Philipp Telemann"
  arranger = "(1681-1767)"
  enteredby = "chris (2015-03-24)"
}

voiceconsts = {
 \key f \major
 %\numericTimeSignature
 \compressFullBarRests
 \time 3/4
 \tempo "Allegretto"
 \set Timing.beamExceptions = #'()
}

\include "v1.ily"
\include "v2.ily"

\book {

  \score {
  \new StaffGroup
    <<
      \new Staff <<
	\set Staff.instrumentName = "Viola1 "
	 {\voiceconsts \va }
      >>
      \new Staff <<
	\set Staff.instrumentName = "Viola2 "
	{\voiceconsts \vb}
      >>
    >>

    \layout {}

    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
}