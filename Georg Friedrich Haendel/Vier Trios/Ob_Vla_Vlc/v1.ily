va = \relative c'' {
  \voiceconsts
  \clef "treble"

  \tempo "1. Gavotte " 4=120
  \repeat volta 2 {
    b8 a b c b4 f
    d'8 c d es d4 c
    b f' es d
    c b c2
  }
  \repeat volta 2 {
    f4 es8 d g2
    es4 d8 c f2

    d4 c8 b es4 d
    c b a f
    b8 a b c f,2
    es'8 d es f d c d es
    c4 f b,8 a b c
    c2 b
  }

  \break \tempo "2. Marsch " 4=120
  \repeat volta 2 {
    \partial 4 f4
    b4 b8 b b4 c
    d4. es8 f4 f,
    b b8 b b4 b
    b a8 g f4 b
    g8 f g a g c b c
    a g a b a d c d

    b4 es8 d c4 f8 es
    d4 c8 b f'4 f
    f2 f,4 f
    f8 g a b c a b c
    d c b a g4. f8
    f2.
  }
  \repeat volta 2 {
    \partial 4 c'4
    f f,8 f f4 g
    a4. b8 c4 b8 a
    d4 d,8 d d4 es
    f4. g8 a4 g8 f
    b4 b,8 b b4 c

    d4. es8 f4 g
    a b c d8 es
    c2. f4
    g,8. a16 g8. a16 a4. g16 a
    b2 r8 f g[ a]
    b8. c16 b8. c16 c4. b16 c

    d2 r8 a b[ c]
    d8. es16 d8 es es4. d16 es
    f4 es8 d c b a g
    f es' d c c4. b8
    b2.
  }

  \break \tempo "3. Sarabande, Grave " 2=70 \key d \minor \time 3/2

  \repeat volta 2 {
    \mark \markup \box "A"
    \partial 1. f2 f r4 g
    e2 e r
    a a r4 b
    g2 g r4 a
    b2 b r4 a

    a2 a r4 a
    d2 d r4 e
    cis2 cis r
    f, f r4 g
    e2 e r

    a a r4 b
    g2 g r4 a
    b2 b r4 c
    a2. a4 d cis
    d e f2 e4 d
    d2 d r
  }

  \repeat volta 2 {
    \mark \markup \box "B"
    f,2. a4 g f
    e2 cis r
    a'2. c?4 b a
    g2 e r4 a
    b2. d4 c b

    a2 r r4 a
    d2. f4 e d
    cis e a, cis e, g
    f2. a4 g f
    e2 cis r

    a'2. c?4 b a
    g2 e r4 a
    b2. d4 c b
    a2. a4 d2
    d4 e f2 e
    d1 r2
  }

  \repeat volta 2 {
    \mark \markup \box "C"
    f,2 f1
    e2 e1
    a2 a1
    g2 g1
    b2 b1

    a2 a1
    d2 e2. d4
    cis1.
    f,2 f1
    e2 e1

    a2 a1
    g2 g1
    b2 b1
    a2. a4 d cis
    d e f2 e
    d1 r2
  }

  \break \tempo "4. Bourrée, Presto " 2=90
  \repeat volta 2 {
    \partial 4 a'4_\ftop
    b g a f
    g8 f e g f4 a,
    b8 c d c b4 a
    g2. a8 b

    c4 a d g
    e d8 c f4 b
    g a b8 a g a
    f4 e8 d c4 b

    a f' g f8 e
    f2.
  }

  \repeat volta 2 {
    \partial 4 a,8_\ftop g
    f4 b8 a g4 c8 b
    a4 d c d8 e

    f4 e d8 e f4
    e2. f8 e
    f4 g8 fis g4 b8 a
    b4 a8 g a4 g8 f?

    g f e g f4 g
    e a, a' f8 e
    d4 g8 f e4 a8 g
    f e f g a4 b

    a g8 f g f e f
    d2 r4 a
    b h c cis
    d8 cis d e f g a b
    g4 g8 f e4. d8
    d2.
  }
}