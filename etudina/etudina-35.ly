\version "2.24.4"
\language "english"

\include "../assets/ly/lib/spontini/jssvg.ly"
\include "../assets/ly/lib/spontini/misc.ly"
\include "../assets/ly/lib/spontini/oso-padding.ly"
\include "../assets/ly/lib/spontini/tabular-functions.ly"
\include "../assets/ly/lib/utils.ily"

\include "../assets/ly/template/henle.ily"

#(define showEditorStuff "false")

\header {
  title = "Etudina"
  subtitle = "No.35 in a Minor"
  subsubtitle = "Komponiert 2020 & 2023"
  composer = "F. X. P."
  tagline = ##f
}

upper = {
  
%\override Score.SpacingSpanner.strict-grace-spacing = ##t
\override TupletBracket.bracket-visibility = #'if-no-beam
\override Beam.breakable = ##t

\time 2/4
\tempo \markup { 
  "Allegretto" \hspace #0.4 \rhythm { c4 } = 112 
}
  
\repeat volta 2 {
\relative {
  | a'8(-. c-. e4~) | 16 f( e ds e d c b) | gs8-.( b-. e4~) | 16 d( c b c8) a |
  | f8(-. a-. d4~) | 16 c( b a gs f e d | c8-.) e-. a4~ | 16 c b a fs'( e fs ds) |
  | e8-.( g-. b4~) | 16 c( b as  b a g fs | d8-.) fs-. b4~ | 16 a( gs fs gs) f e d |
  | c8-. e-. a4~ | 16 c( a es fs) c d fs, | g8 8 fs8.\trill e32 fs | g2 |
}

} %end repeat

\relative {
  | cs''8(-.\segno e-. a4~) | 16 g( f e f8-.) d-. | b8(-. d-. g4~) | 16 f( e d e8) c |
  | a8([ c f e] | d8[ c) b-. a-.] | gs8(-. b-. e4~) | 16 d( cs b cs8-.) a-. |
}

<<
\relative { 
  | \stemNeutral cs''8(-. e-. a4~) | \stemUp 16 g( f e f8-.) d-. |
  | \stemNeutral b8-. d-. g4~ | \stemUp 16 f( e d e8-.) c-. | 
}
\\ \relative { | s2 | r16 a'( b cs d8-.) c-. | s2 | r16 g( a b c8-.) bf-. | }
>>

\relative {
  | a'16( c f e) d b( as b | gs16) b e d  cs e cs a |
  | cs( e bf' a) g e( ds e^\markup { to \coda } | cs16) e( a g fs)\exprMark"accel." ef'( d c |
  | bf16) d( c b a g fs ef | d16) f ef d c bf a g |
  | \repeat percent 2 { fs c'( bf) d, ef f ef d | }
}

\bar "||"
\tempo "A tempo"

\relative {
  | df'16 ef df c bf e g bf | \stemUp a16 bf a g a8^. f8~-- \stemNeutral |
  | 8 af16 gf f ef f df | ef16 d ef c df8-.[ \stemUp \lowerStaff af8~--] |
  | 8\jsOnceOffset "2" "positions" #'(0.597 . 0) [ bf16 \upperStaff cf] df\jsOnceOffset "3" "positions" #'(-0.566 . 0.91) [ c df \lowerStaff bf] | af8\jsOnceOffset "4" "positions" #'(0.823 . 0) [ bf16 \upperStaff cf] \lowerStaff bf8^. gf^. \upperStaff \stemNeutral |
}

<<
\relative {
  | gs'8 cs16 b a b a gs | a16 gs fs es fs e d cs |
  | fs8 b16 a gs a gs fs | gs8 a16 fs gs4 |
  | bf8 f' \stemDown bf4~ | 16 a g f ef df c bf \stemNeutral |
}
\\ \relative {
  | es'8 r cs4~ | 4 d8 as | ds8 r b4~ | 16 b cs ds e8 gs, |
  | df'16 c ef \showStaffSwitch df \stemUp \lowerStaff bf8 \hideStaffSwitch f8^~ |
  | 16 a c bf gf8 e16 f\rest \upperStaff \stemNeutral |
}
>>

\relative {  
  | a'16 f' a c f4~ | 16 ef( df c df8-.) bf-. |
  | bf16 d( f ef d) cf( bf af | gf16) bf( ef df cf) bf( af gf |
  | f16) a( c bf a) g( f e | d16) f( a g f) e f d |
  | bf16 d( f ef) d( c b af) | \stemUp g16 b^( d c) b^( af g f) \stemNeutral |
  | e16 g df'( c bf af g f | e16) g^( bf af g) f g c, |
  | cs'16 e( g f e) bf( a g | f16) a( d cs b) a( gs fs |
  | e16) gs( b a gs) fs gs b, | \stemUp d16[ c \lowerStaff b gs] a c b a |
  | fs g fs e d a' g fs | \upperStaff \stemNeutral c' e d c \lowerStaff \stemUp b c b a |
  | r16 gs(\jsOnceOffset "6" "positions" #'(0.716 . -0.652) [ \upperStaff e' gs] b) f e d | \lowerStaff \stemUp c b a gs a8^. \upperStaff e'-.\noBeam \stemNeutral |
}

\bar "||"

\relative {
  << 
    { 
      | \stemNeutral cs''16 a cs e <a bf,>4~ | \stemUp a16 g( f e f8)-. d-. | 
      | \stemNeutral b16 g b d <g b,>4~ | \stemUp g16 f( e d e8)-. c-. |
      \new Voice <<
      \stemUp
      { | a16 s c s f s e s | d s c s b s a s | }
      { | \repeat unfold 8 { s16 a' } | }
      >>
    } 
    \\ { 
      | s4 \hideNotes bf,4~ \unHideNotes | 16 a b cs d c b a | 
      | s4 \hideNotes b4~ \unHideNotes | 16 g a b c b a g |
      | a8[ c f e] | d[ c b a] |
    } 
  >>
  | b'16^\exprMark"legato" a gs f e4~ | 16 f e d c b a gs |
  \ottava 1
  <<
    {
      | \stemNeutral cs'16 a cs e <a a,>4~ | \stemUp a16 g( f e f8)^. d^. | 
      | \stemNeutral b16 g b d <g g,>4~ | \stemUp g16 f( e d e8)^. c^. |
    }
    \\ {
      | s4 \hideNotes a4~ \unHideNotes | 16 a b cs d c b a | 
      | s4 \hideNotes g4~ \unHideNotes | 16 g a b c b a g |
    }
  >>
  \ottava 0
  | a,16( c f e) d b( a b | gs) b( e f cs) e cs a |
  | cs( e bf' a) g e( ds e | cs) e( a g fs) ef' d c |
  | bf d( c bf a) g( f ef | e) g( c bf a) g( f e |
  | d) f( bf a g) e ds e | cs e( a g fs) d'( c b |
  | af g f ef d c b as) | b d( f ef d) bf'( a g |
  | fs ef d c bf a g fs) | ef d( e fs g) b d e |
  | f e g bf bf a g e | cs e g a( f d a f) |
  | b d gs( f e d c b) | a f' e gs a( e c a) |
  | fs' d c'( a f d c a) | d, c'( b as b) g d b |
  | ds fs( c' b as) e'( ds c | b) b'( cs ds e) b gs e |
}

\repeat volta 2 {

<<
\relative {
  | b'16 d c b c8 a~ | 8 b16 e c8 a | cs16 a' g fs g8 e~ | 8 fs16 b g8 e~ |
  | \stemNeutral 16 c' b a gs8 e~ | \stemUp 16 d' c b c8 a |
}
\\ \relative {
  | f'4 e | ds e | cs' c | as16 cs ds8 r16 ds c b |
  | s2 | r16 e,( fs gs a g fs e) |
}
>>

\relative { | b''( a g fs e ds cs b) | }

\alternative {
  \volta 1 {
    \relative {
     as'16( b cs ds 
     \tupletSpan 8
     \tuplet 3/2 { e16 fs \rBeam 1 g \lBeam 1 as b) b, }
     \tupletSpan \default
    }
  }%end volta 1
  \volta 2 {
    \key cs \minor
    \relative {
      | as'16 b( a fs gs) fss gs e |
    }
  } %end volta 2
} %end alternative

} %end repeat

\repeat volta 2 {

\relative { 
  | cs'16 e( a gs fs) ds( css ds | bs) ds gs fs dss( es b' as) |
  | fss as( e' ds cs) as( gss as | fss) as ds cs bs ds bs gs |
  | bs ds( a' gs fs) ds( css ds | bs) ds( gs fs e) gs e cs |
}

\alternative {
  \volta 1 {
    \relative {
      | d''16 fs( b a gs e cs) as | b ds( gs fs es d b) es, |
    }
  }
  \volta 2 {
    \relative {
      | d''16 fs b a d(_\exprMark"accel." b a fs) |
    }
  }
} %end alternative
} %end repeat

\relative {
  \ottava 1
  | e'''16( cs as g) fs'( ds b a) |
  <<
  { | gs4 a | gs a | } \\
  { | gs16^( b e gs) a,^( b ds fs) | gs,16^( b e gs) a,^( c ds fs) | }
  >>
  | <e gs,>8->\noBeam
}

\relative {
  \key a \minor \ottava 0
  e'16 16 8-> 16 16 | 8-> 8 r 
}

\section 
\sectionLabel "Trio"
\tempo \markup { 
  "Più mosso" \hspace #0.4 
  \rhythm { c4 } = 126 
}

a''16  b''

<<
\relative {
  | <c''' e,>8. b16_( a8) <d f,> | <b g e d>8-. <g e b>-. <e b g>4-- |
  | <a c,>8. g16_( f8) <a ds,> | <g e b>8-. <e b g>-. <c a e>4-- |
  | <f a,>8. e16_( d8) <f as,> |  <e b gs>8-. <c g d>-. <a e c>4-- |
  | \lowerStaff gs,16^(\jsOnceOffset "17" "positions" #'(0.428 . -1.039) [ b \upperStaff e gs] a\jsOnceOffset "18" "positions" #'(-0.55 . 0.977) [ fs ds \lowerStaff b)] | \upperStaff e4 r8
}
\\ \relative {
  | a'4 r8 c | s2 | f,4 r8 f | s2 | d4 r8 c | s2 |
}
>>

<<
\relative {
  e''8( | f8. ef16 d8 f | ef)[ c g] ef'( | df8. c16 bf8 df | c8)[ af d,] 
  c'( | cf8. bf16 af8) cf(\noBeam | bf8. af16 gf4) |
}
\\ \relative {
  g'8 | af4. fs8 | \showStaffSwitch g4. \lowerStaff \stemUp g,8 |
  | \upperStaff \stemDown ef'4 \hideStaffSwitch df8 g |
  | af c, b4 | r4 d8 f\noBeam | gf d ef4 |
}
>>

\relative { | c'8[ d ef af] | }

\easyCrossStaff
  \relative { <f' df>8^.[ <ef cf>^.] df4^- }
  \relative { af8 gf <g ef>4 }
  #'(U - -)

\key g \major

\relative {
  | <c'' fs, e>4. <d a f>8-. | <b fs ds>8-. <a g e c>-. <g d b>4-- |
}

\bar "||"

<<
\relative {
  | \stemDown g''4 e | \stemUp r8 fs[ gs e] | a8\noBeam fs16( es fs8) d\noBeam | b[ f' e d] |
  | <cs g>4 a | gs8[ c b a] | g[ e c fs]^. | g-. fs-. g4 |
  | <b g>4_( <c gs> | <cs a> <d b>) | <e c>8([ <d b> <c a> <b gs>] | a2) | 
  | \stemNeutral <c bf>4( <cs a> | <ds gs,> <g e c g>) | \ottava 1 \stemUp <fs' d>8[ <e c> <d b> <c a>] | <b g>[ a g] \ottava 0
}
\\ \relative {
  | s2 | c''4 b8 gs | c4. c8 | b8 gs4 f8 |
  | e8[ es fs g] | d8 e d4 | cs4 \stemDown c8\jsOnceOffset "16" "positions" #'(0.8 . -0.8) [ \stemUp \lowerStaff as]^. | b^. a^. g4 \stemDown \upperStaff |
  | s2 | s2 | fs'2 | fs8[ es fs c] |
  | s2 | s2 | fs'8[ g gs a] |
}
>>

\relative {
  a''8( | b16) c( e d c) b( a g | fs) a( d c b) as b g |
  | e g( c b a) fs es fs | d fs( b a g) b g e |
  | c e( a g fs) e( ds c | b) ds( g fs e) d( cs b |
  | a) cs( fs e d) b( as g | fs) as( cs b as) g( fs e | 
  | ds) fs( b a gs) fs( e d | cs) e( a g fs) e( d cs |
  | b) d( g fs e) d( cs b | as) cs( fs e ds) cs ds b |
}

\easyCrossStaff
  \relative { 
    | <e' cs>4 r8 <es d>^. | <fs cs>[^. <e cs>]^. ds4^- | 
    | d8[^- e16 d] \key gs \minor cs8\noBeam css[^. | ds8^. <fs cs>]^. <b fs ds>4^- |
  }
  \relative { 
    | g4 s8 gs | as g <a fs>4 | 
    | <b gs>8 s16 s es,8 <bs' gs e> | <as fs>8 <as e> b4 |
  }
  #'(| U - - | - - - | - - - - - | - - - |)

\relative {
  | <b'' gs e>8. as16( gs8-.) <cs gs es>-.[ | <as fs cs>-. <fs css as gs>-.] <ds b fs>4-- |
  | <gs es b>8. fs16( e8) <gs es bs>-.[ | <fs cs as>-. <ds as fs>-.] <b gs e>4-- |
  | <e as, fss>8. ds16( cs8) <e as, fss>-. | \key g \major <ef c gf>8. df16( c8) <ef a, f c>(-.[ |
  | <d bf af ef bf>--)] d16([ ef f8)] f16([ g | af8)] af16([ bf c8)] <d, af ff>8(-.[ |
  | <ef bf g ef>8--]) r \ottava 1 bf''16( af  g f | ef d cs bf a) bf a cs |
  | d b cs ds e( d cs b | \ottava 0 a g fs e ds) e d fs |
  | g4 d'16( c b a | g fs e d c) d c ds | e( c bf gs) a gs a b a fs d c \lowerStaff a\jsOnceOffset "13" "positions" #'(1.57 . 0.4) [ \upperStaff c d fs] |
  | \repeat percent 2 { g4-- \lowerStaff \stemUp a,16\jsOnceOffset "14" "positions" #'(1.57 . 0.4)[ \upperStaff c d fs] | } \stemNeutral
  | g8 16 16 8 16 16 | 8[ 8 8 8] | <b g>8 16 16 8 16 16 | 8[ 8 8 8] |
  | <d b f>8 16 16 8 16 16 | <d gs, e>8 8 <ds b f>8 8 |
  | <e b gs e>4 << { fs,16( a b ds | e4)---> } \\ { <fs, ds>4 | <gs e> } >> r8 \bar "||" \key a \minor r8 |
}

<<
\relative {
  | \stemNeutral <c''' a e>8.-- b16( a8)\noBeam \stemUp <d f, c>[^. | <b g e d>^. <g e b>]^. <e b g>4^- |
  | \stemNeutral <a f c>8.-- g16( f8)\noBeam \stemUp <a ds, cs>[^. | <g e b>^. <e b g>]^. <c a e>4-- |
  | \stemNeutral <f d a>8.-- e16( d8) <f as, f>-.[ | <e b gs>-. <c gs d>-.] <a e c>4-- |
}
\\ \relative {
  | s4. f'8[_. | g_. e]_. b4_- | s4. f'8[_. e]_.
}
>>

\relative {
  | ds'16( fs b ds e cs as fs) | b4 r8 
}

<<
\relative {
  b'8( | cs8. b16 a8) c | b[ gs es] b'( | c8. b16 a8) c | b e g4 |
  | fs8. e16 ds8 fs-.\noBeam | g8. fs16 f8 a-.(\noBeam | b4.) a8( | gs4)
}
\\ \relative {
  s8 | ds'2 \showStaffSwitch | \lowerStaff \stemUp e,8. fss16 gs4 | \stemDown \upperStaff e'4. \hideStaffSwitch es8 | fs4 as | c4. as8 | cs2 |
  | \stemUp \lowerStaff gs,16\jsOnceOffset "14" "positions" #'(-1.2 . 1.2) [ b \stemDown \upperStaff d fs] gs b d e |
  | <es b es,>4
}
>>

\relative { <b' gs d b>4^^\fermata }

\section

\relative {
  | a'8(-. c-. e4~) | 16 f( e ds e d c b) | gs8-.( b-. e4~) | 16 d( c b c8) a |
  | f8(-. a-. d4~) | 16 c( b a gs f e d | c8-.) e-. a4~ | 16 <e' c> <d b> <c a> <gs' b,>( <fs a,> <gs b,> <e gs,>) |
}

<<
\relative {
  | a''8(-. c-. e4~) | 16 f( e ds e d c b | g8)-. b-. e4~ | 16 d cs b cs bf a g |
  | f8 a d4~ | 16 f( d as b) f g b, |
}
\\ \relative {
  | c''8-. r a'4~ | 4 fs | b,8-. r g'4~ | 4 f | a,8 r f'4~ | 4 d |
}
>>

\relative {
  | c''8 8 b8.\trill a32 b | c2^"D.S. al coda" |
}

\bar "||"

\relative {
  | cs''16\coda e a g fs a fs d |
  | \key a \major gs b( f' e d) c( b a | gs) b( e d cs) b( a gs |
  | fs) a( d cs b) a( gs fs | es) gs( cs b as) cs as fs |
  | \ottava 1 as cs( g' fs e) d( cs b | as) cs( fs e ds) cs b as \ottava 0 |
}

<<
\new Voice <<
\stemUp
\relative { | gs''8 s fs s | es s e s | css s cs s | c s bf s | }
\relative { | s8 e''' s  ds | s cs s cs | s b s as | s bf s a | }
>>
\\ \relative {
  | gs''16 b e cs fs, a ds b | es, gs cs as e fss cs' as |
  | css, es b' gs cs, e as fs | \key a \minor c e bf' g bf, e a g |
}
>>

\relative {
  | a'( c a' f) gs,( d' gs e) | gs,( b f' d) d,( f d' b) |
}

\new Voice <<
\relative { | a'8-.[ c-. e-. gs-.] | a-.[ c-. \ottava 1-. e-. gs-.] | a([ c) s b] | a4( a'8-.) \ottava 0 r |  }
\relative { | c'8 e a b | c e a b | c e gs, d' | c4 s8 s | }
>>

\fine

} %end upper

lower = {

\time 2/4
\clef "bass"

\new Voice <<
\stemDown
\relative {
    | a,8-.[ s] e-.[ s] | a,-. s e'-. s | d-. s e-. s | d-. s f-. s |
    | f-. s a,-. s | a-. s b-. s | a-. s e'-. s | a-. s d,-. s |
    | e-. s b-. s | e,-. s fs'-. s | b,-. s fs-. s | f'-. s b,-. s |
    | a'-. s e-. s | fs-. s d-. s |
}
\relative {
    | s8-. <c' a e>-. s8-. 8-. | s8-. 8-. s8-. 8-. | s8-. <d gs, f>-. s <d gs,>-. | s8-. <d gs, f>-. s <d f,>-. |
    | s <d a f>-. s8-. 8-. | s8-. <c fs, d>-. s <c gs e>-. | s <c a e>-. s <c e,>-. | s <e a,>-. s <ds c fs,>-. |
    | s <e b>-. s <g b,>-. | s <c, as e>-. s <e a, fs>-. | s <d b fs>-. s8-. 8-. | s <f b, gs f>-. s <d gs, e>-. |
    | s <e c a>-. s <e a,>-. | s <a, d, c>-. s <d c fs,>-. |
}
>>

\relative {
  \override TupletBracket.stencil = ##f
  | \stemNeutral b,8([ \tuplet 3/2 { d16 e d] } c8\trill b16 a) | g8-. <b' d>-. g,,-. r |
  \revert TupletBracket.stencil
}

\new Voice <<
\relative {
  | a,,8-. s a'-. s | bf-. s d,-. s | a-. s g'-. s | b-. s  g-. s |
  | f-. s d-. s | e-. s d-. s | e,-. s e'-. s | gs-. s  a,-. s |
}
\relative {
  | s8-. <cs' g e>-. s <a' g cs,>-. | s <e bf gs>-. s <d b f>-. |
  | s <b g f>-. s <g' f b,>-. | s <g d b>-. s < ef c g>-. |
  | s <a, f>-. s <f' a,>-. | s <f, d>-. s <f' d b>-. |
  | s <b, gs e d>-. s <ds c a fs>-. | s <e d gs,>-. s <cs a e>-. |
}
>>

\relative {
  | e'16(_\exprMark"legato" d e cs bf) cs e gs,( | a bf) g e f( cs' d) g |
  | b, a b( g f) d'( b g) | a g( a b c) d e c |
}

\new Voice <<
\relative {
  | s8 d,([ a' f')] | s e,, s a | bf-. s a-. s | a'-. s fs-. s |
}
\relative {
  | <d' a f>8 s s s | <b gs f>( s) <cs e,>( s) |
  | s <e cs bf e,>-. s <e bf gs>-. | s <e cs>-. s <ef a, fs>-. | 
}
>>

\relative {
  | \clef "treble" g'16 bf a g fs c' bf c, | \clef "bass" bf a g d' c d fs bf, |
  | <fs c a>8 r \ottava -1 d,,4~ | 4 4 \ottava 0 |
}

\bar "||"

\relative {
  | R2 | \upperStaff \stemDown e'8 f16 e f\jsOnceOffset "1" "positions" #'(-0.971 . 0.637) [ \lowerStaff b, c8] |
  | \stemNeutral df,,8 af16 r df' ef f8 | \stemDown gf16 f gf ef f df af8 |
  | f'16 e f df gf,8 df16 r | af8 f'16 r gf' f gf df \stemNeutral |
}

\relative {
  | es,8(-.^\exprMark"sotto voce" gs-. cs4~) | 16 b( a gs a8)-. fs-. |
  | ds8(-. fs-. b4~) | 16 a( gs fs gs8)-. e-. |
  | bf8 f' \stemDown df'4_~ | 16 c e gf c,8 gf16 f\rest \stemNeutral |
}

\clef "treble"
\new Voice <<
\relative { | f8 s ef' s | gf, s f' s | }
\relative { | s8 <c'' a f>-. s <ef c a gf>-. | s <c e,>-. s <f df>8~-- | 8 }
>>

\relative {
  \clef "bass" cf'8[ bf af] | gf[ ef af \clef "treble" af'] | <a f c> f[ e d~] | 8 \clef "bass" f, a16 g a f |
}

<<
\relative { | bf8 r b16 g d' b~ | \stemDown 8\jsOnceOffset "5" "positions" #'(0 . -0.75) [ \upperStaff d f ef] \lowerStaff | }
\\ \relative { | r8 af,8~ 4 | }
>>

\relative {
  | <df' g, e>8 e,, c'4 | r16 b'\jsShape "12" "cpts" #'((0 . 0) (0.303 . -0.404) (-0.782 . -0.715) (0.037 . -0.498)) _( c af \upperStaff \stemDown e')\jsOnceOffset "7" "positions" #'(-1.651 . 0) [ d e \lowerStaff e,] \stemNeutral |
  | cs4( a8-.) r | r16 a( b cs d8-.) c-. |  b4( e,8-.) r8 | \stemDown r16 e_( fs gs a8-.) g-. |
  | fs4_( d8_.) r | \stemNeutral r16 d( e fs \stemDown g8-.) f-. |
  | e4( \stemNeutral cs8-.) r | \stemDown r8 <e' d gs,>[_. <e c a>]_. \stemNeutral cs,-. |
}

\new Voice <<
\relative {
  | a,,8-. s a'-. s | bf-. s d,-. s | a-. s g'-. s | b-. s  g-. s |
  | f-. s d-. s | e-. s d-. s |
}
\relative {
  | s8-. <cs' g e>-. s <a' g cs,>-. | s <e bf gs>-. s <d b f>-. |
  | s <b g f>-. s <g' f b,>-. | s <g d b>-. s < ef c g>-. |
  | s <a, f>-. s <f' a,>-. | s <f, d>-. s <f' d b>-. |
}
>>

<<
\relative { | gs8 b gs'4~ | 16 d c b c8 e, | }
\\ \relative { | b,8[ b'8 8 8] | 8[ e, fs gs,] | }
>>

\clef "treble"
\relative {
  | cs'16 bf' g bf e, bf' g bf | ef, cs' g cs d, b' g b |
  | g, g' b, g' cs, g' ef g | d g f g e g c g |
}

\clef "bass"
\relative {
  | <e, a,>2:16 | <g cs, bf>:16 | <a cs,>:16 | <a d,>4:16 d,:16 |
  | g4( e8-.) r | r16 c( d e f8-.) ef-. | e4( c8-.) r | r16 f,( fs a d8-.) af'-. |
  | b4( g8-.) r | r16 g( a b c8-.) bf-. | a4( d,8-.) r | r16 c'( bf a g8-.) g,-. |
  | cs4( a8-.) r | r16 a( b cs d8-.) a'-. | d4( e,8-.) r | r16 d( c b c8-.) a-. |
  | d'4( d,8-.) r | r16 d( e fs g8-.) b,-. | c4( a8-.) r | r16 a'( gs fs gs8-.) b,-. |
}

\repeat volta 2 {

\new Voice <<
\relative {
  | <gs b,>8[ s <a c,> s] | <gs e cs>[ s <a c,> s] |
  | \stemDown <ds a g>\jsOnceOffset "8" "positions" #'(-0.063 . 0.462) [ \stemUp s] \stemDown <e g,>\jsOnceOffset "9" "positions" #'(-0.088 . 1.049) [ \stemUp s] |
  | \stemDown <ds b a>\jsOnceOffset "10" "positions" #'(-0.442 . 1.248) [ \stemUp s] \stemDown <e g,>\jsOnceOffset "11" "positions" #'(-0.359 . 1.542) [ \stemUp s] |
  | \stemNeutral <e c fs, e>[ s <d gs, e> s] |
}
\relative {
  | s8 e, s c | s e s c | s e s b | s e s b | s a' s b |
}
>>

\relative {
  | <c' a e>4 r | fs,,4( ds'8-.) fs~ |
}

\alternative {
  \volta 1 {
    \relative { | <fs a,> b,, e, r | }
  }
  
  \volta 2 {
    \key cs \minor
    \relative { | r16 b,( cs ds e8-.) e,-. | }
  }
} %end alternative
} %end repeat

\repeat volta 2 {
\relative {
  | <cs cs,>4( <ds ds,>8)-. r | r16 gs,( as bs cs8-.) cs,-. |
  | <css' css,>4( <as' as,>8-.) r | r16 fss,( gs bs ds8-.) gs,-. |
  | <a a,>4( <gs gs,>8-.) r | r16 gs( e d cs8-.) a-. |
}

\alternative {
  \volta 1 {
    <<
    \relative { \ottava -1 | r8 d,,_([ b' d)] | r \ottava 0 d_([ gs d')] | }
    \\ \relative { | <gs, gs,>2 | <ds ds,> | }
    >>
  }
  \volta 2 {
    \relative { | e,,8[ a' \clef "treble" <c'' a e d> a,] | }
  }
}
} %end repeat

\relative {
  | <b' g e>8[ as, <a' ds,> \clef "bass" fs,] |
}

<<
\relative { 
  | s8 \clef "treble" <b' gs e> s \clef "treble" <b a ds,> |
  | s \clef "treble" <b gs e> s \clef "treble" <c a ds,> | 
}
\\ \relative { | e8-- s \clef "bass" b-- s | \clef "bass" d-- s \clef "bass" c-- s | }
>>

| <b' e'>8 \key a \minor r ds'4 | d'4 \clef "bass" << { e'8[ \section 8] } \\ { <gs e>4 } >> |

\relative {
  | r8 a16( b \stemDown c b) f'8 | \upperStaff g8_. e_. \lowerStaff << { b4^- } \\ { b8 \upperStaff \smallNotes { e } \lowerStaff } >> |
  | r8 f,16( g a g) f8 | g8_. b_. << { a8 \smallNotes { c } } \\ { a4_- } >> |
  | r8 d,16( e f e) d8 | d'8 gs, e4 |
}

\new Voice <<
\relative { | \stemDown b,,8_- s^. \stemNeutral fs_- s_. | e-- s-. s-. r | }
\relative { | s8 <e b gs> s <a ds, b> | s <gs e b>8[ 8] r | }
>>

\relative {
  \stemNeutral
  | r8 \clef "treble" d'16( ef f ef d8)\noBeam | c\noBeam \clef "bass" ef,16_( f g f ef8)\noBeam |
}

<<
\relative { | bf,8([ c df bf] | c4) r8 ff~ | 8\noBeam f16( gf af gf f8)\noBeam | gf8 f ef \stemDown bff'\noBeam }
\\ \relative { | s2 | r8 c,16^( cs d4) | bf'4. af8 | ef4 }
>>

\relative {
  | af4. gf8 | \stemDown df8[ ef bf] \stemNeutral a'16( b |
}

\key g \major

\relative {
  | c'16 b a b c8) d-.\noBeam | fs,8-. e-. << { d4-- } \\ { d8 \smallNotes { b } } >> |
}

\relative {
  | r8 b4 c8~ | 8 cs4.~ | 4. c8~ | 4 b8 bf |
  | a4. as8 | b2 | r8 \stemDown e,,[ e'] cs_. | d[_. as_. b g] \stemNeutral |
  | \clef "treble" r8 e''4 ds8~ | 8 fs4 g8 | d2~ | 2 |
  | r8 e4 es8~ | 8 fs4 cs'8 | << { r8 c[ cs d] | e[ d b] } \\ { e,4. fs8 | g[ a b] } >>
}

<<
\relative {
  fs'8_( | g16) a_( c b a) g_( fs e | d) fs^( b a g) fs g b |
  | e, ds_( e d c) a gs a | c cs d ds e g e d |
  | c g' e d \clef "bass" \stemNeutral c b a gs |
}
\\ \relative {
  s8 | s2 | s8 cs'[ d ds] | s2 | s8 f,[ g gs] | a4
}
>>

\relative {
  | f8 b,,([ ds d')] | cs g,([ fs' as)] | e' ds,([ as' fs')] |
}

\relative {
  | ds8.\exprMark"sotto voce" cs16 b8 e-. | cs-. a-. << { fs4-- } \\ { fs8 \smallNotes { cs } } >> |
  | b'8. a16 g8 cs-. | as-. fs-. << { ds4-- } \\ { ds8 \smallNotes { b } } >> |
  | \stemDown e16 ds e es fs gs a as | b as b cs ds css ds b |
  | gs16 gss as b \key gs \minor cs8\noBeam gs[_. | e_. cs_. b_-] \stemNeutral
}

\relative {
  es16( fss | gs as b as gs8) es-.[ | fs-. css-. ds]-- cs16( ds |
  | e fs gs fs e8) as[-. | fs-. b,-. gs]-- es16( fs |
  | fss16 gs as gs fss8)\noBeam cs'-. | \key g \major a16( bf c bf a8) bf([-. |
  | f--)] d'16([ ef f8)] f16([ g | af8)] af16([ bf c8)] <af af,>-.[( | <ef ef,>--]) 
}

\new Voice <<
\relative {
  \clef "treble" g8[ s bf] | s[ g s a] | fs[ as s as] | s[ a s \clef "bass" d,] |
  | g,[ g' \clef "treble" s \clef "bass" g] | s[ d s ds] | s[ d s d] |
}
\relative {
  s8 <ef'' bf g> s | <cs g ef> s <cs a e> s | s s <cs as fs> s | <a g cs,> s <fs c> s |
  | s s <b g d> s | <g d b> s <ds c gs> s | <c fs,> s <c a> s |
}
>>

\relative {
  | \stemDown fs,8[ d' fs d] | \repeat percent 2 { <g d b>-. 8-. <ef c fs,>8_. 8_. | } \stemNeutral
  | << { b'2 } \\ { <g d g,>2 } >> | 
}

\relative { 
  | \upperStaff \stemDown f'2 | d | \lowerStaff \stemNeutral cs |
  | f,8. e16 d8 g-. | e-. b-. f g16 f | e8 e,-. 
}

\relative { <a fs b,>8-.[ 8-. | <gs e b>8]---> }
\relative { b,,16[ gs' e'8] \bar "||" }

\key a \minor

\relative {
  a16( b | c b a b c8)\noBeam a | r4 r8 
  f16( g | a g f g a8) r | g[_. b_. a]-- 
  d,16( e | f e d e f8) as-.[ | d-. gs,-.] e4-- |
}

\new Voice <<
\relative {
  | fs,8_- s cs_- s | b_- s[ s]
}
\relative {
  | s8 <b fs ds>-. s <e as, fs>-. | s <ds b fs>8-. 8-.
}
>>

\relative {
  r8 | r fs16 gs a8 b, | \stemDown gs[ es css b] \stemNeutral |
  | << { a'4 fss } \\ { s4 fss8 \smallNotes { b, } } >> |
  | << { r8 cs'16([ ds] e8) as16\jsOnceOffset "15" "positions" #'(-0.6 . 0.6) [ \stemDown \upperStaff e'] } \\ { gs,,2 } >> |
  | \clef "treble" << { ds''4. fs8 } \\ { r4 b, } >> |
  | \clef "bass" g8[ e cs as] | \stemDown b4 e8 d | \stemNeutral cs4
}

\relative { << { <e, e'>4^^ } \\ { e8 \smallNotes { e, } } >> }

\section

\new Voice <<
\stemDown
\relative {
    | a,8-.[ s] e-.[ s] | a,-. s e'-. s | d-. s e-. s | d-. s f-. s |
    | f-. s a,-. s | a-. s b-. s | a-. s e'-. s | a-. s e-. s |
    | a-. s e-. s | a,-. s b'-. s | e,-. s b-. s | bf-. s e-. s |
    | d'-. s a-. s | b,-. s g-. s | 
}
\relative {
    | s8-. <c' a e>-. s8-. 8-. | s8-. 8-. s8-. 8-. | s8-. <d gs, f>-. s <d gs,>-. | s8-. <d gs, f>-. s <d fs,>-. |
    | s <d a f>-. s8-. 8-. | s8-. <c fs, d>-. s <c gs e>-. | s <c a e>-. s <c e,>-. | s <e a,>-. s <f b, gs>-. |
    | s <a e c>-. s8-. 8-. | s <f ds a>-. s <a d, b>-. | s <g e b>-. s <e bf g>-. | s <e cs bf fs>-. s <g cs, a>-. |
    | s <a f d>-. s <f d a>-. | s <d g, f>-. s <f b, g>-. | 
}
>>

\stemNeutral
\relative {
  | e8( \tuplet 3/2 { g16 a g } f8\trill e16 d) |
}

| c8-. <e' c' g>-. c,-. r |

\bar "||"

\new Voice <<
\relative { | a,8-. s fs-. s | }
\relative { | s8-. <e' cs>-. s <fs ef a,>-. | }
>>

\key a \major

\relative {
  | << { <b gs d>4( gs,8-.) } \\ { d'8 \smallNotes { b } } >> r8 |
  | r16 e,( fs gs a8)-. g-. |
  | << { <b' gs d>4( es,,8) } \\ { d'8 \smallNotes { gs, } } >> r8 |
  | r16 e( es gs c8-.) g-. |
  | fs'4( as,8)-. r | r16 fs( gs as b8-.) gs-. |
}

\new Voice <<
\relative { 
  | e8-- \clef "treble" s \clef "bass" cs-- s |
  | css-- s as-- s | es-- s e-- s | \key a \minor g-- s c,-- s |
}
\relative {
  | s8 <cs'' b gs e> s <as ds, b> | s <as fss cs> s <as e cs> |
  | s <gs es b> s <gs e as,> | s <e bf g> s <e c bf> |
}
>>

\relative {
  | <f' a, c,>4\arpeggio <e gs, b,>\arpeggio |
  | <d gs, b,>\arpeggio <b e, gs,>\arpeggio |
}

\new Voice <<
\relative { | a,,8 s  gs s | a' s gs s | }
\relative { | s8 <a e c> s <gs f b,> | s8 <a' e c> s <gs f b,> | }
>>

\relative { | \clef "treble" <c'' a e>4 \clef "bass" <e, b gs> | }

| <c' a e>4( a,,8-.) r |

\fine

} %end lower

\include "../assets/ly/lib/spontini/piano-template.ly"
