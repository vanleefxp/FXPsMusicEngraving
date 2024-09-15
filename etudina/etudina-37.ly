\version "2.24.4"
\language "english"

\include "../assets/ly/lib/spontini/jssvg.ly"
\include "../assets/ly/lib/spontini/misc.ly"
\include "../assets/ly/lib/spontini/oso-padding.ly"
\include "../assets/ly/lib/spontini/tabular-functions.ly"
\include "../assets/ly/lib/utils.ily"
\include "../assets/ly/template/henle-early.ily"

#(define showEditorStuff "false")

\header {
  title = "E T U D I N A"
  subtitle = \markup {
    "№37 in" \super{\flat}"B Major"
  }
  subsubtitle = \markup {
    \italic { "The Horn is Blowing" }
  }
  tagline = ##f
}

upper = {
\accidentalStyle Score.piano
\set Score.proportionalNotationDuration = #(ly:make-moment 1)

\time 4/4
\clef "treble"
\key bf \major
\tempo "Adagio" 4 = 63
\sectionLabel "Introduzione"
  
%% mm1

\relative {
  bf'16(\mf f' ef d32 c d16 bf c a) \allowBreak
  bf16( f' ef d32 c d16 bf c a)
}
  
%% mm2
  
<<
\relative { <bf' f'>1 }
\\ \relative {
  bf16^( f' ef d32 c d16 bf c a) \allowBreak
  bf16^( f' ef d32 c d16 bf c <a f'>)
}
>>
  
%% mm3
  
\time 3/4
  
\relative { bf'16 f' ef d32 bf }
<<
\relative { d''32 ef f8.~ \stemNeutral 16 ef32 d c16 bf }
\\ \relative { <f' bf>4 }
>>

%% mm4

\relative {
  c''8( f, g ef)
  \"32thBeam" { r32 bf( c d ef f g af) }
}

%% mm5 - 6

<<
\relative {
  ef'16 bf' af g32 f g af bf8.~ 
  \"32thBeam" { 16 c32_( bf af bf c d }
  ef8) a, d4~\fermata \"32thBeam" { 32 c_( bf a g f ef d) }
}
\\ {
  \easyCrossStaff 
    { g'4 <df' e'>8 s <ef' f'> s } 
    { <ef bf>4 g8[ bf,] af[ bf] } 
    #'(D - - - -)
  \relative { g'8 fs f4~ 8 }
}
>>

%% mm7

\time 4/4

\relative {
  c'16 f d bf c f e g \allowBreak f4
}
r32
\easyCrossStaff
  \relative { s32[ s \rBeam 1 s \lBeam 1 s c' d ef] }
  \relative { f32 g a bf s s s }
  #'(U - - - - - -)

%% mm8 - 12

\time 2/4

\relative {
  d'16. bf32( f'16.) d32( bf'8) 
}
<<
\relative { 
  d''[( c16]) r32 \stemNeutral c,_( a'16.) fs32( ef'8) 
} 
\\ {
  \easyCrossStaff
    \relative { f'8 <ef fs> }
    \relative { bf8[_( a]) }
    #'(D -)
}
>>
\relative { a'[(
  bf16]) r32 f d'16. bf32( af'8) bf,[(
  b16]) r32 fs( ds'16.) b32 b'8 b,[(
  c16]) r32 a(\< ef'16.) c32( a'16.)_\exprMark "accel." f32( c'16.) a32\!
}

%% mm13

\time 2/2
\set baseMoment = #(ly:make-moment 1/4)
\set beatStructure = 1,1,1,1

\tempo \markup { 
  Doppio movimento
  ← \rhythm { c4 } = \rhythm { c2 } →
}

<<
\relative { <fs'' ef'>4\f }
\\ \relative { <ef' fs c'>4 }
>>
r4
<<
\relative { <fs'' bf e>4 }
\\ {
  \easyCrossStaff
    \relative { <e' c'>4 }
    \relative { bf4 }
    #'( D )
}
>>
r4

%% mm14

\ottava 1

\relative {
  <f'' a c f>4 
  e'16( f g f ef d c bf a g f e)
}

%% mm15

\time 1/2

\relative {
  \tuplet 6/4 { f''16( g a bf c d } ef16 f g a)
}

%% mm16

\time 2/2

\relative {
  bf'''4~ 16 a gf f ef( d c d ef f g a)
}

%% mm17

\relative {
  \tuplet 6/4 { bf'''16( a gf f ef d) }
  \tuplet 6/4 { c16( d ef f g a) }
  <d, bf'>8([_\exprMark"rit." <c a'> <b g'> <bf gf'>)]
}

%% mm18

\relative { <a'' f'>2 \ottava 0 r2 }

%% mm19 - 21

R1
<<
{ s1 g''\fermata^\startTrillSpan \caesura }
\\ { ef''1~^\startTrillSpan 1 }
>>

%% mm22

\cadenzaOn
\set Score.proportionalNotationDuration = #(ly:make-moment 1/36)
<>^\exprMark"ad lib."
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 9/8 {s32 s s g'' af bf df( cf)] r}
  \smallNotes \relative \hiddenTuplet 9/8 { b'32[ d f s s s s s s }
  #'(C - - - - - - - -)
\allowBreak
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 9/8 { s32 s s bff'' b c f( ef]) r }
  \smallNotes \relative \hiddenTuplet 9/8 { c''32[ gf' af s s s s s s }
  #'(C - - - - - - - -)
\allowBreak
\set Score.proportionalNotationDuration = #(ly:make-moment 1/40)
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 10/8 { s32 s s \ottava 1 c''' d ef f af( gf]) \ottava 0 r }
  \smallNotes \relative \hiddenTuplet 10/8 { df''32[ a' bf s s s s s s s }
  #'(C - - - - - - - - -)
\allowBreak
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 10/8 { s32 s s \ottava 1 c''' ef f fs bf( a]) \ottava 0 r }
  \smallNotes \relative \hiddenTuplet 10/8 { d''32[ fs a s s s s s s s }
  #'(C - - - - - - - - -)
\allowBreak

%% mm23

\cadenzaMeasure
\set Score.proportionalNotationDuration = #(ly:make-moment 1/28)
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 7/8 { r32 \ottava 1 cf''''[( bf) af f \ottava 0 s s }
  \smallNotes \relative \hiddenTuplet 7/8 { s32 s s s s d''' c] }
  #'(C - - - - - -)
\allowBreak
\set Score.proportionalNotationDuration = #(ly:make-moment 1/48)
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 6/4 { \ottava 1 g'''32[( f) d b \ottava 0 s s }
  \smallNotes \relative \hiddenTuplet 6/4 { s32 s s s af'' f] }
  #'(C - - - - -)
\allowBreak
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 6/4 { ef'''32[( df) bf g s s }
  \smallNotes \relative \hiddenTuplet 6/4 { s32 s s s ff'' df] }
  #'(C - - - - -)
\allowBreak
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 6/4 { d'''32[( c) a fs s s }
  \smallNotes \relative \hiddenTuplet 6/4 { s32 s s s d'' c] }
  #'(C - - - - -)
\allowBreak

%% mm24

\cadenzaMeasure
\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
\easyCrossStaff
  \smallNotes \relative { 
    \ottava 1 f'''32[ e ef c \ottava 0 s s s s \allowBreak
    f, e ef c s s s s \allowBreak
    f, e ef c s s s s \allowBreak
    \clef "bass" f, e ef c s s s s
    f, e ef c \hiddenTuplet 3/4 { s s s }
  }
  \smallNotes \relative {
    s32 s s s a'' af g gf
    s s s s a, af g gf
    s s s s \clef "bass" a, af g gf
    s s s s a, af g gf
    s s s s \hiddenTuplet 3/4 { a, g gf] }
  }
  #'(C - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -)
\clef "treble"
\cadenzaEndMeasure
\set Score.proportionalNotationDuration = #(ly:make-moment 1)

%% mm25

r2\ff

<<
\relative { <ef'' a c f>2^^\laissezVibrer^\fermata }
\\ {
  \easyCrossStaff
  \relative { <c' ef a>2\laissezVibrer }
  { f2\laissezVibrer_^_\fermata }
  #'(D)
}
>>

%% mm26

\cadenzaOn
\easyCrossStaff
  \smallNotes \relative {
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/28)
    \hiddenTuplet 7/8  { e'''32[ f ef c g gs a }
    \allowBreak
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
    d32 c a f s s s s
  }
  \smallNotes \relative { 
    \hiddenTuplet 7/8 { s32 s s s s s s } 
    s32 s s s \clef "treble" ef'' c a gf]
  }
  #'(C - - - - - - - - - - - - - -)
\allowBreak
\set Score.proportionalNotationDuration = #(ly:make-moment 1/40)
<<
\smallNotes \relative \hiddenTuplet 20/16 {
  f'32[_\p s gf s g s af s a s bf s b s c_\exprMark"smorz." s df s d]\fermata s
}
\\ \smallNotes \relative \hiddenTuplet 20/16 {
  s e'32[ s f s fs s g s gs s a s bf s b s c s c]\fermata
}
>>
\cadenzaEndMeasure

%% mm27 - 42

\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
\unset baseMoment
\unset beatStructure

\section
\sectionLabel "Tema"
\tempo  "Allegro" 2 = 80
\relative {
  | bf'4(\mf f' ef d8 c | d4 bf c f | ef4 d c bf | c2.) f,4( |
  | bf4 f' ef d8 c | d4 bf c f | g4 f8 ef d4 bf | c2.) a4( |
  | ef'4 d c f | ef4 d8 c d4 bf) | c2.( ef4 | ef4 d c bf) |
  | f'2( bf4 bf | bf4 a8 g a4 f)| g2( e | f1) | \bar "||"
}

%% mm43 - 58

<<
\relative {
  | \stemNeutral bf'4( f' ef d8 c | d4 bf c) f-.( | ef4 d c-. bf-. | \stemUp c2.) f,4-.( |
  | \stemNeutral bf4 f' ef d8 c | d4 bf c) f-.( | \stemUp g4 f8 ef d4 bf | c2.) a4( |
  | ef'4 d c f | ef4 d8 c d4 bf) | c2.( ef4-. | ef4 d8 c d4 bf) |
  | f'4( e bf' bf | <e, bf'>4 a8 g a4 f)| g2( e | f1) | \bar "||"
}
\\ \relative {
  | s1 | s1 | s1 | ef'4 a8^( g a4) f |
  | s1 | s1 | a2. bf4 | f4 f8( ef f4) a |
  | a4 bf c8 bf a4 | bf2. bf4 | f4 gf8^( f gf4) a-. | af2 f4 <d a'> |
  | b'2 c8 d ef4 | d8 c bf2 df4 | c4 d bf c | a4 a8^( gs8 a4) f-. |
}
>>

%% mm59 - 74

<<
\relative {
  | \stemNeutral bf'2( f' | ef2 d | \stemUp c2.) ef4 | ef4 d c bf |
  | \stemNeutral bf2( f' | \stemUp g1 | c,2) a | bf2. d4 |
  | af'1( | g2.) g4 | bf1( | a2.) a4 |
  | c2( b) | d4( c2 bf4) | bf2( a | bf1) |
}
\\ \relative {
  | s1 | s1 | r2 a'4 f | bf1 |
  | s1 | ef2 d | ef,2. f4 | d2 ef4 f |
  | bf4( c d bf) | ef4( d df bf) | e4( d e c) | f4( e f ef) |
  | ef4( d ef g) | ef4( e g e) | f2. ef4 | d4 d16^( ef f8 ef d c bf)~ |
}
>>

%% mm75 - 79

<<
\relative {
  | f''4( ef d bf | g'2.) g4( | a4 g fs e | fs2.) fs4 |
  | <g bf>4 a g fs |
}
\\ \relative {
  | bf'2. bf4 | c4 d ef a, | cs2 a4 cs | d4 cs d c |
  | bf2 b |
}
>>

%% mm80 - 84

\relative {
  | g''4 ef c a | bf4( d c a | bf2.) d4 |
  | <af f'>4( 4 4 4) | <a gf'>4..(\fermata <gf ef'>16) <ef c'>4 <c a'> |
}

\bar "||"

%% mm85 - 98

<<
\relative {
  | \stemNeutral bf'1( | f' | ef | d2) bf | c1(~ | c2 ef | \stemUp ef d | c bf) |
  | \stemNeutral bf2( f' | ef2 d4 c | d2 bf | c2.) f4 | \stemUp ef4( c) d( bf) | c4( a g f) |
}
\\ \relative {
  | s1 | s1 | s1 | s1 | s1 | s1 | f'1( | ef2 d) |
  | s1 | s1 | s1 | s1 | g2 f4( ef8 d) | c4 f ef a, |
}
>>

%% mm99 - 100

\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)

\relative {
  | <d' bf'>2 \stemUp f'8 g af f | g8( ef c a) a'( f ef c) |
} \stemNeutral
\break

%% mm101 - 116

\tempo "Poco più lento" 2 = 72
\section
\sectionLabel "Var. I"

\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
<<
\relative {
  | \stemNeutral bf'4 f' ef \stemUp d8 c | d4 bf c f | ef4 d c bf | <c ef,>1 |
  | bf4 f' ef d8 c | d4 bf c f | g4 f8 ef d4 bf | c2. a4 |
  | ef'4 d c f | ef4 d8 c d4 bf | c2. ef4 | ef4 d8 c d4 bf | 
  | f'2 bf4 bf | bf4 a8 g a4 f | <g bf,>2 <e a,> | <f a,>2 ef8 b c a |
}
\\ \relative {
  | s2. d'8 ef | f4 d ef r8 a | bf8 gs a af g f ef d | r4 a'8( g a4) f |
  | bf,8 c d bf c4 d8 ef | f8 a e fs g f e d | c8 d ef f gf ef d df | f8 g a ef c d ef f |
  | a8 gs bf b c bf a f | g8 a bf4~ 8 g f e | f8 af gf f gf4 a | af8 g f e f ef d4 |
  | f'8 e d c ef d c cs | d8 c bf g c bf a f | e8 c d e a g f e | f8 d ef f g f ef c |
}
>>

\bar "||"

%% mm117 - 118

\relative { | bf'4( d f2) | d8( ef d) bf c2 | }

%% mm119 - 120

<<
\relative { | f''8( g f) d ef( f ef) c | df8( ef df) bf c2 | }
\\ \relative { | af'4. g8 a4. fs8 | f4 gf8 g a4( f) | }
>>

%% mm121 - 124

\relative { 
  | bf'4( d f2) | d8( ef d) bf c2 | ef8( f ef) c d( ef d) bf | c8( d c) a bf2 | 
}

\bar "||"

%% mm125

<<
\relative { f''8 g af f g4. gf8 }
\\ \relative { d''8 bf c d ef d df c }
>>

%% mm126

\relative { r8 a'( fs' ef c a gf f) }

%% mm127 - 128

<<
\relative { | bf''2 a | c,8 d ef c bf c d bf | }
\\ \relative { | ef''8 f gf ef f e f d | a2 g | }
>>

%% mm129

\relative { <c'' a>8( <d bf> c) a bf2 }

\bar "||"

%% mm130 - 133

<<
\relative {
  | c''8( bf a fs) <fs d'>4. d''8 | d8 c4 bf8 bf af4 g8 | g8 gf4 f8 f e4 ef8 |
}
\\ \relative {
  | s2 r8 <a' c>[^( <g bf>]) f' | ef8 e g f cs d f ef | bf8 a cf4 af8 g a g |
}
>>

\relative {
  | <d'' f,>8 <bf d,>4 <c ef,>8 bf r f' f |
  | e8[ f r f] gf( ef c a | \stemUp gf8 ef c \lowerStaff a g4) \upperStaff \stemNeutral <a' b ef f a>-^
}

%% mm134 - 

\set baseMoment = #(ly:make-moment 1/4)
\set beatStructure = 1,1,1,1

\relative { 
  | <bf' f' bf>4-^ \ottava 1 << { f''4 } \\ { bf16 c d8 } >> \allowBreak bf16( a g f ef  d c  bf |
  | \ottava 0 a16 g f e ef d c bf \allowBreak a g f e ef d c bf | \lowerStaff a16 g f e) \upperStaff
}

s2. | \time 1/2 s2 |

\time 2/2

<<
\relative { s4 a'8. bf16 c4 e }
\\ \relative { r4 fs'8. ef16 \lowerStaff c4 bf \upperStaff }
>>

\set Score.proportionalNotationDuration = #(ly:make-moment 1/2)

\relative {
  | \stemNeutral f''2 \afterGrace g\trill { fs16 g a g } | f2 g, | a2 bf | b1 | c1 |
}

%% mm146 - 

\section
\sectionLabel "Var. II"
\time 4/4
\tempo "Allegretto" 4 = 108

\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)

\relative {
  | bf'4( f'-.) ef8 d16 c d8 bf-. |
  | c4( ef-.) \appoggiatura { ef16 } d8 c16 bf \appoggiatura { d16 } c8 bf16 a |
  | bf4( f'-.) ef8 d16 c d8 bf-. |
  | c8 ef-. \appoggiatura { ef16 } d8 c16 bf \appoggiatura { d16 } c8 bf16 a <bf d,>4-> |
}

<<
\relative {
  | <a' c ef>1 | <e af b d>1 | <g bf df>1 | <g cf ef>2 <fs as>2 |
  | <b, b'>4 4 4 <cs cs'> | <ds ds'>4 <e e'> <f f'>8 8 <g g'> <a a'> |
  | <as as'>4
}
\\ \relative {
  | f'16 16 16 16 4:16 2:16 | d2:16 2:16 | ef2:16 2:16 | f2:16 e2:16 |
  \smallNotes {
    | r16 <ds fs>16 16 16 r16 <e fss>16 16 16 r16 <e gs>16 16 16 r16 <ds a'>16 16 16 |
    | r16 <as' b>16 16 16 r16 <a bs>16 16 16 f16[ <bf d> f \rBeam 1 <bf d> \lBeam 1 g <c ef> a <ef' f>] |
    | r16 <ds fs>16 16 16
  }
}
>>

\smallNotes \relative { <cs'' e>16 <ds fs> <e g> <ds fs> }

<<
\relative { e'''4^\exprMark"accel." ef | d4 cs bs b | bf4 bf bf a | }
\\ {
  \easyCrossStaff
    \smallNotes \relative { 
      e'''16[ <fs, as> s16 <fs as>] ef'[ <f, a> s <f a>] |
      | d'16[ <e, gs> s <e gs>] cs'[ <e, a> s <e a>] bs'[ <e, fs> s <e fs>] b'[ <e, fs> s <e fs>] |
      | bf'16[ <e, g> s <e g>] bf'[ <ef, g> s <ef g>] bf'[ <ef, f> s <ef f>] a[ <ef f> s <ef f>] |
    }
    \smallNotes \relative { 
      s16  s e'' s s s ef s | s16 s d s  s s cs s  s s bs s  s s b s | s16 s c s  s s c s  s s c s  s s <a b> s |
    }
    #'(C - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -)
}
>>

\tempo "A tempo"
\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)

<< { | bf''1 | } \\ \relative { | \stemNeutral bf2( f' | ef2 d) | } >>

\relative { 
  | c'2( ef | d2 bf) | d4-. d-. ef-. c-. | f2 d4 bf | c4( d c a) |
}

\set PianoStaff.connectArpeggios = ##t
\relative {
  | \lowerStaff \stemUp <cs e bf'>2\arpeggio \upperStaff \stemNeutral <g'' cs e bf'>2\arpeggio |
  | <f c' ef a>2\arpeggio\laissezVibrer r4 r8 \allowBreak 
}
\unset PianoStaff.connectArpeggios

\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
\repeat volta 2 {

\relative { f'8-. | d'8-. d-. ef-. c-. f8.[( d16 bf8-.]) <bf d,>-. | }
\easyCrossStaff
  \relative { <c'' ef,>8.[( <a c,>16 f8^.]) f^. }
  \relative { s8. s16 a8 a }
  #'(U - - -)
\relative { 
  <f'' bf,>8.[( <d f,>16 <bf d,>8-.]) 8-. |
  | <d f,>8-. 8-. <ef g,>-. <c ef,>-. <f bf,>8.[( <d f,>16 <bf d,>8-.])
}
<<
\relative {
  <fs'' bf,>8-. | <g a,>8.([ <ef a,>16 <c ef,>8-.)] <a' ef>8-. <bf d,>4 r8
}
\\ {
  \easyCrossStaff
    \relative { d'8 | c8 d ef s d8. ef16 f8 }
    \relative { ef8 | ef8[ d c] f-. f8.[ g16 a8] }
    #'(D - - - N D - -)
}
>>

}% end repeat

\relative {
  fs'8 | g8.[ ef16 c8] d16 e f8.[ d16 \lowerStaff bf8] \upperStaff
}

<<
\relative {
  bf'8 | ef8 d c bf bf8 a4. | c8-. 8-. d-. b-. c8. d16 <ef c>8--
}
\\ \relative {
  g'8~ | 8 fs~ 16 f g f e8 fs4. | ef8-. 8-. e-. f-. gf8. f16 ef8--
}
>>

\ottava 1
\relative {
  <ef'''' c>8-. | \time 2/4 <d bf>-.[ <bf d,>-. f-. <c' fs, c>-.] |
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  | \time 2/2 <bf f d bf>4-. \ottava 0
}

\relative {
  <g'~ ef>4\fermata g16 f ef d c \lowerStaff bf a g |
  | \time 1/2 \tuplet 6/4 { f16( g a bf \upperStaff c d } ef16 f g a) |
  | \time 2/2 bf4~ 16 a gf f ef( d c d ef f g a) | \time 1/2 \tuplet 6/4 { bf16( a gf f e d) } \tuplet 6/4 { c16( d ef f g a) } |
  | \time 2/2 <bf d,>4 <a cs,> << { af4 g } \\ { d2 } >> |
}

\set Score.proportionalNotationDuration = #(ly:make-moment 1)
| R1 | R1 | << { | s1 | ef''1^\startTrillSpan \caesura | } \\ { | c''1~^\startTrillSpan | 1 | } >>

\cadenzaOn
\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
<<
{
  
  \smallNotes \relative {
    \ottava 1 ef''''32[\stopTrillSpan^\exprMark"ad lib." d c bf a g f e] \ottava 0 
    \allowBreak
    ef[ d c bf a g f e]
    \allowBreak
    ef[ d c bf a g f e]
    \allowBreak
  }
  \easyCrossStaff 
    \smallNotes \relative { ef'32[ d c s s s s s] }
    \smallNotes \relative { s32 s s bf a g f e }
    #'(U - - - - - - -)
}
\\ {
  \smallNotes \relative {
    g'''32[\stopTrillSpan f ef d c bf a af]
    g[ f ef d c b a af]
  }
  \easyCrossStaff
    \smallNotes \relative { g'32 f ef d s s s s }
    \smallNotes \relative { s32[ s s s c' bf a af] }
    #'(D - - - - - - -)
}
>>
\cadenzaMeasure
\smallNotes \relative {
  \easyCrossStaff
    \smallNotes \relative { s32[ s s s c' ef g gf] }
    \smallNotes \relative { ef32 e f a s s s s }
    #'(U - - - - - - -)
  \allowBreak
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/24)
  \hiddenTuplet 6/8 { f'32[ a c ef g gf] }
  \allowBreak
  \ottava 1
  \hiddenTuplet 6/8 { f32[ a c ef g gf] }
  \allowBreak
  \hiddenTuplet 6/8 { f32[ a c ef g gf] }
}
\cadenzaMeasure
\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
\smallNotes \relative {
  f''''32[ e ef d\glissando^\exprMark"gliss." \ottava 0 s4 a,32 af g gf]
}
\cadenzaMeasure
\easyCrossStaff 
  \smallNotes \relative { 
    f''32[ e ef c s s s s
    \allowBreak
    f, e ef c s s s s 
    \allowBreak
    \clef "bass" f, e ef c s s s s 
    \allowBreak
    f, e ef c s s s s 
  }
  \smallNotes \relative {
    s32 s s s \clef "treble" a' af g gf
    s s s s \clef "bass" a, af g gf
    s s s s a, af g gf
    s s s s a, af g gf]
  }
  #'(C - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -)
\clef "treble"
\cadenzaEndMeasure

\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
\relative { | r2\ff <f' c' ef a>2-^\fermata | }

\section 
\sectionLabel "Var. III Menuetto"
\time 3/4
\tempo "Vivace" 2. = 72

\relative {
  | <bf' f d>2 <f' b, f>4-. | <ef c g>2 <d bf f>4-. | <c f, ef>2 <a ef b>4-. | <bf f d>2 <b g d>4-. |
  | <c g ef>2 <cs g f>4-. | <d a fs ef>2 <c g d>4-. | << { bf( ef) a,-. } \\ { <fs c>2 <ef c>4-. } >> | <g d bf>2.\fermata |
  | <a c,>4( <f d a>) <fs d a>-. | <g d bf>2 <f d b>4-. | <e c bf>2 <c g>4-. | <f b a>2 <ef c>4-. |
  | <e cs bf>2 <e c a>4-. | <f d a>2 <bf e, c>4-. | <b g f>2 \acciaccatura { ef8 } <d bf fs>4-. | <c g ef>2 <cs gs e>4-. |
  | <d a f>2 <ds a f>4-. | <e c g>2 <c g e>4-. | <f c a>2 \acciaccatura { a8 } <g c, bf>4-. | <f c a>2\fermata
}
\allowBreak

\key bf \minor r4
<<
\relative {
  | <gf''' df bf gf>2 <f c a f>4-. | <e b gs e>4( <f c a f>) <c g e c>-. |
  | <ef bf g ef>2 <d a fs d>4-. | <cs bf g ef>4( <d a fs d>) <a ef cs a>-. |
  | <c bf e, c>2 <b g f b,>4-. | <a e cs a>4( <b f d b>) <g d b g>-. |
  | <bf ef, c>2 <af d, b>4-. | <g df bf>2 <f b, a>4-. |
}
\\ {
  \easyCrossStaff
    \relative {
      | <bf' df,>2 a4 | e4 f e |
      | <g ef>2 <fs d>4 | s4 d s |
      | e2 f4 | e4 d s |
      | fs2 f4 | df2 d4 |
    }
    \relative {
      | gf2 <f c'>4_. | <gs b>4_( <a c>) <g c>_. |
      | <ef bf'>2 <d a'>4_. | <g bf cs>4_( <fs a>) <ef a cs>_. |
      | <e g bf>2 <d g b>4_. | <cs e a>4_( <d f b>) <b g' b>_. |
      | <ef af c>2 <d g b>4_. | <e fs bf>2 <d af'>4_.
    }
    #'(| D - | - - - | - - | N D N | D - | - - - | - - | - - |)
}
>>

\relative {
  | <f'' df bf f>2 <ef cf gf ef>4-. | <d bf f d>4( <ef cf gf ef>) <bf g df bf>-. |
  | <ef bf g ff>2 <df af f eff>4-. | <cf gf ef dff>4 <df af f eff> <af ef c bff> |
  | <bf f df cf>2 <af gf df cf>4 | 
}

\easyCrossStaff
  \relative { f'2 }
  \relative { <f a c>2 }
  #'( U )

\relative {
  <c' c'>4-> | <ef ef'>2->
}

<<
\relative {
  <c''' af fs ef>4-.-^ | <d a fs d>2.-^ |
}
\\ {
  \easyCrossStaff
    \relative { fs'4 | 2. | }
    \relative { <ef af c>4_._^ | <d fs c'>2._^ | }
    #'( D | - | )
}
>>

\relative {
  | g'2.\pp | a | << { | b2. | df | } \\ { | f,2. | gf | } >>
  | \clef "bass" <b, d,>2\mp <b f>4-. | <c gf ef>2 <c af ef>4-. |
  | <d bf d,>2 <e bf g>4 | <f c a>2. |
  | \clef "treble" bf'2\pp 4 | g4( f ef) | a2 4 | fs4( e d) |
  | \key bf \major <af' d,>2\mf <af bf,>4 | <g ef bf>4 <f d a> <ef bf g> | <d a ef>2 <c a ef>4^\exprMark"accel." |
  | <a ef c>2\p\< <bf fs e bf>4-. | r4 <b f ef b>4.( <d d,>8) |
  | <c a ef c>2 <d a fs d>4-. | r4 <ef a, g ef>4.( <e e,>8) | \tempo "A tempo" <f c a f>2.\!\ff | R2. |
}

\relative {
  | bf'2(\mp f'4 | ef2) a4( | d2 c4 | bf2) <b af b,>4-.\f |
  | <c g ef c>2. | << { \afterGrace a2.\trill { g16 a } } \\ { <ef c a>2. } >>
}

\section 
\sectionLabel "Var. IV"
\time 2/2
\unset baseMoment
\unset beatStructure
\tempo "Allegro" 4 = 144
\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)

\relative {
  | R1 | r8 f''( d'8-.) 8-. 8 bf f e | ef2 r | r8 f( ef'8-.) 8-. 8 c a f |
  | d8 bf( bf'8-.) 8-. 8 g e df | f,8 a( f'8-.) 8-. 8 c a f |
  | e8 g( cs8-.) 8-. c bf g ef | f8[ e16( f] ef[ g e gs] f[ a g bf] af[ b a c)] |
  | <d bf>2 4. <ef c>8 | << { d8 c b d c2 } \\ { bf8 a gs f e4 g } >> |
  | <c af>2 <c a>4. <d f,>8 | <c ef,>8 <bf d,> <a c,> <c ef,> <bf d,>4 af' |
  | b4 4 4 4 | c8( a8-.) 8( fs8-.) 8( ef8-.) 8( c-.) |
  | bf2 \afterGrace c\trill { bf16 c } | bf2 r2 |
}

\tempo "Più mosso" 4 = 168

\relative {
  | d''16(\p ef f8) 8-. 8-. 8-. 8-. 8-. 8-. | <fs as,>2 r2 |
  | ds16( e fs8) 8-. 8-. 8-. 8-. 8-. 8-. | g2 r2 | 
  | f16( gf af8) 8-. 8-. 8-. 8-. 8-. 8-. | a( fs8-.) 8( ef8-.) 8( c8-.) 8( a-.) |
  | <bf f d>2. <c ef,>4 | <bf f d>4( <a ef c> <bf d, bf>2) |
}

\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
\set baseMoment = #(ly:make-moment 1/16)
\set beatStructure = 4,4,4,4

\relative {
  | bf'16^\exprMark"grandioso" f d' bf f' d bf' f \allowBreak f' d bf d f, bf d, fs |
  | g16 e bf' g cs bf g bf \allowBreak e, g cs, e bf cs g bf |
  | c16 a ef' c a' fs c' a \allowBreak \ottava 1 ef' c fs ef c ef a, c |
  | b16 af d b f' d af' f b af d b af bf f af |
  | <gf bf, gf>2. \ottava 0 <ef ef,>8. <bf bf,>16 | <gf bf,>4 4 4 4 |
  | <f cf af>2 \allowBreak <f c g> | <ef bf g>2 \allowBreak r4 <ef bf g> |
  | <ef g,>4 <d b f> \allowBreak <c ef,> <b d,> | <c g ef>2. <b af ef>4 |
  | <c a ef>4 4 \allowBreak <cs bf ef,>4 4 | <d a fs>2.e4 |
  | <f d f,>2 \allowBreak <bf f d>4.. fs16 | << { fs4 4 \allowBreak <g c,>4 <ef a,> } \\ { <c a>2 f, } >> |
  | <d' bf f>2 <c ef,> | <bf d,>2 r4 r8
}

\unset baseMoment
\unset beatStructure

\relative {
  <b' f b,>8 | <f' d af>8-. \repeat unfold 7 { 8-. } |
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  | r8_\exprMark"accel." <gf c, a>4 <ef a, gf>^\< <c gf ef> <a ef c>8~ |
  | 8 <gf c>4 \clef "bass" <ef a,> <c gf> <a ef>8\! |
}

\set Score.proportionalNotationDuration = #(ly:make-moment 1/16)
\smallNotes \relative { e16[\ff f a c] }
\easyCrossStaff
  \smallNotes \relative { 
    s16 a c ef] s c ef fs] \clef "treble" s ef f a] | \bar "!"
    | s16 fs a c] s a c ef] s b ef a] s d, fs bf] | \bar "!"
    | s16 e, a c] s fs, a d] s a c e] s \ottava 1  b ef a] \ottava 0 | \bar "!"
  }
  \smallNotes \relative { 
    gs16[ s s s b[ s s s \clef "treble" d[ s s s |
    | f16[ s s s gs[ s s s bf[ s s s cs[ s s s |
    | ef16[ s s s f[ s s s gs[ s s s bf[ s s s |
  }
  #'(C - - - - - - - - - - - | - - - - - - - - - - - - - - - - | - - - - - - - - - - - - - - - - |)

\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
\cadenzaOn s1
\set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
\smallNotes \relative { \ottava 0 \allowBreak ef''32[(^\exprMark"ad lib."_\mp d c bf]) }
\cadenzaMeasure
\easyCrossStaff
  \smallNotes \relative { ef''32[ d c bf a g f e \allowBreak ef d c s s s s s }
  \smallNotes \relative { s32 s s s s s s s s s s bf a g f e] }
  #'(C - - - - - - - - - - - - - - -)
\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
\lowerStaff \stemUp \smallNotes { ef2\fermata } \upperStaff \stemNeutral
\cadenzaMeasure
\easyCrossStaff
  \smallNotes \relative {
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
    s32 s df' ef e fs a g32~] 
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
    \stemDown 4\fermata \allowBreak
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
    s32 s d e f g bf af32~] 
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
    \stemDown 4\fermata \allowBreak
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/36)
    \hiddenTuplet 9/8 { s32 s c, d f fs gs b a32~] } 
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
    \stemDown 4\fermata
  }
  \smallNotes \relative { 
    g32[ bf s s s s s s s4 
    af32[ bf s s s s s s s4
    \hiddenTuplet 9/8 { a32[ b s s s s s s s32~ } s4
  }
  #'(C - - - - - - - N C - - - - - - - N C - - - - - - - - N)
\cadenzaMeasure
\set Score.proportionalNotationDuration = #(ly:make-moment 1/48)
<<
\smallNotes \relative {
  s16 \relative \hiddenTuplet 3/2 { f''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { fs''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { g''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { gf''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { f''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { fs''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { g''32[ a ef'] }
  s16 \relative \hiddenTuplet 3/2 { gs''32[ b ef] }
}
\\ \smallNotes {
  \relative \hiddenTuplet 3/2 { f'32[^\pp\sustainOn a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { fs'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { g'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { gf'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { f'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { fs'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { g'32[ a ef'] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { gs'32[ b ef] } s16
}
>>
\cadenzaMeasure
<<
\smallNotes \relative {
  s16 \relative \hiddenTuplet 3/2 { a''32[ b ef] }
  s16 \relative \hiddenTuplet 3/2 { bf''32[ b ef] }
  s16 \relative \hiddenTuplet 3/2 { c'''32[ f a] }
  s16 \relative \hiddenTuplet 3/2 { cs'''32[ f a] }
  s16 \relative \hiddenTuplet 3/2 { d'''32[ fs a] }
  s16 \relative \hiddenTuplet 3/2 { ef'''32[ fs a] }
  s16 \relative \hiddenTuplet 3/2 { e'''32[ gs c] }
  s16 \relative \hiddenTuplet 3/2 { f'''32[ bf d] }
  s16 \relative \hiddenTuplet 3/2 { fs'''32[ bf d] }
  s16 \relative \hiddenTuplet 3/2 { g'''32[ b ef] }
}
\\ \smallNotes {
  \relative \hiddenTuplet 3/2 { a'32[ b ef] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { bf'32[ b ef] } s16 \allowBreak
  \ottava 1
  \relative \hiddenTuplet 3/2 { c''32[ f a] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { cs''32[ f a] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { d''32[ fs a] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { ef''32[ fs a] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { e''32[ gs c] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { f''32[ bf d] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { fs''32[ bf d] } s16 \allowBreak
  \relative \hiddenTuplet 3/2 { g''32[ b ef] } s16 \allowBreak
}
>>
\cadenzaMeasure
\smallNotes \relative {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/36)
  \hiddenTuplet 9/8 { e''''32[\sustainOn f ef c a f fs a g] } \allowBreak
  \ottava 0
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/44)
  \hiddenTuplet 11/8 { e32[ f ef c a f fs a g gf f] } \allowBreak
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/40)
  \hiddenTuplet 5/4 { e32[ f ef c a] }
}
\allowBreak
\set Score.proportionalNotationDuration = #(ly:make-moment 1/48)
\easyCrossStaff
  \smallNotes \relative \hiddenTuplet 6/4 { ef'32[ g f ef c s] }
  \smallNotes \relative \hiddenTuplet 6/4 { s32 s s s s a }
  #'(U - - - - -)
\allowBreak
\lowerStaff
\smallNotes \relative {
  \stemUp \hiddenTuplet 6/4 { e32[ g f ef c a]\sustainOff } \allowBreak
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/32)
  \stemNeutral f32[ ef c a]
}
\cadenzaEndMeasure
\upperStaff

\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
\cadenzaOn
\relative {  
  r2\ff <c''' ef, a,>2^^\fermata
  \stemUp \smallNotes \hiddenTuplet 5/4 { a16[(\mp f ef c a)] }
  \stemNeutral
}
\cadenzaEndMeasure

\section
\sectionLabel "Coda"
\time 4/4
\tempo "Adagio" 4 = 63

\relative {
  bf'16(\mf f' ef d32 c d16 bf c a) \allowBreak
  bf16( f' ef d32 c d16 bf c a)
}
  
<<
\relative { <bf' f'>1 }
\\ \relative {
  bf16^( f' ef d32 c d16 bf c a) \allowBreak
  bf16^( f' ef d32 c d16 bf c <a f'>)
}
>>

\time 3/4
<<
\relative {
  \stemNeutral bf'16 f' ef d32 c \stemUp d ef f8.~ \"32thBeam" { 16 g32 f  ef f g a }
}
\\ {
  s4 <bf' f'>
  \easyCrossStaff
    \relative { s8 <b' f ef> }
    \relative { <c' bf g ef>8[ s] }
    #'(D -)
}
>>

\time 2/2
\tempo \markup { 
  Doppio movimento
  ← \rhythm { c4 } = \rhythm { c2 } →
}
\set baseMoment = #(ly:make-moment 1/4)
\set beatStructure = 1,1,1,1

\relative {
  | bf''4~ 16 a gf f ef( d c d ef f g a) |
  | \time 1/2 \tuplet 6/4 { bf16( a gf f e d) } \tuplet 6/4 { c16( d ef f g a) } |
  | <bf f d bf>4-.\mp <g~ ef b>-^\fermata g16( f ef d c bf a g |
  | f16 ef d c \lowerStaff \stemUp bf a g f) ef( d c d ef f g a) |
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  | \upperStaff \stemNeutral s1 | \time 3/2 s1. |
}

\set Score.proportionalNotationDuration = #(ly:make-moment 1/2)
\relative { | \time 2/2 <bf'' f d bf>2-^ r2 | }
\relative { 
  | \acciaccatura { \lowerStaff \stemDown ef,,4 \stemUp ef' g bf c \stemDown ef g bf \upperStaff c ef g bf } \stemNeutral <g' ef bf g>2-^ r2 |
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
  | \ottava 1 <bf' f d bf>2^^ \ottava 0 \clef "bass" <d,,, f, d>8^^ 16 16 8-. 8-. | 2---^ r2 |
}

\fine

} %end upper

lower = {
\clef "bass"
\key bf \major

%% mm1 - 2

| R1 | r4 r8 \relative { ef8 d4. f8 } |

%% mm 3

\time 3/4
\relative { <f bf d>2 }
<<\relative { <g b ef>4 } \\ \relative { g8 c, }>>

%% mm 4

\relative { bf8[( a g a]) d, r }

%% mm5

s2.

%% mm6

\relative { c'8 b <bf d,>4\fermata ~8 r8 }

%% mm7

\time 4/4
\relative { a8[ f e c] a[ f] bf, r8 }
  
%% mm8 - 12

\time 2/4
r4 r8 s
s8 r8 r \relative { <b ef>8([ 
<bf d>)] } r8 r \relative { <f d'>8([ 
<fs ds'>)] } r8 r \relative { <g df'>8([
<gf ef'>)] } r8 r4

%% mm13

\time 2/2
s2 \acciaccatura { c8 } \hideNotes bf4 s4 \unHideNotes

%% mm14

\acciaccatura { b,8 } <f, f>4 r4 r2

%% mm15

\time 1/2
R2

%% mm16

\clef "treble"
\time 2/2
\relative { <bf d f>2 <a c gf'> }

%% mm17

\relative { <bf d f>4 <c ef gf> <f, d' f>2 }

%% mm 18-21

<<
{a1 a'1~^\startTrillSpan 1~ 1 }
\\ { f'1~^\startTrillSpan_\< 1~ 1~ 1\!\ff }
>>

%% mm 22-24

\cadenzaOn
\smallNotes \relative { \stemDown b'4\sustainOn c df d }
\cadenzaMeasure
\smallNotes { d'''4\sustainOn } s4 s8
\cadenzaMeasure
s4\sustainOn s s s s\sustainOff
\cadenzaEndMeasure

%% mm 25

\stemNeutral f,,2^^_\exprMark "pesante" s2

%% mm26

\cadenzaOn
s2 s2
\cadenzaEndMeasure

%% mm27 - 42

%\stopStaff
\section
s1*16
%\startStaff

%% mm43 - 58

\clef "bass"
<<
\relative {
  | s1 | r2 d' | c4 d ef-. d-. | c4 c8_( bf c4) a-. |
  | s1 | r2 ef' | c4 ef2 e4 | \parenthesize f1 |
  | s1 \clef "treble" | g4 f8 ef f4 g \clef "bass" | c,4 a8_( gs a4) gf | s1 |
  | g'2 ef4 c | g'4 e f2 | e2 g8 f e4 | c4 c8_( b c4) a-. |
}
\\ \relative {
  | d'2 c | bf2. a4-. | g2. gf4-. | f1 |
  | d'2 c | bf2. a4-. | r2 fs4 g-. | a4 a8( g a4) f-. |
  | c'2 ef4 a, | bf2. df4-. | ef,2. gf4 | f4 g af bf |
  | b4 c a2 | e2 a4 af | g2 bf | f1 |
}
>>

%% mm59 - 74

<<
\relative {
  | \stemNeutral d'1( | c2 d | \stemUp ef1) | d2 ef4 d |
  | d1 | c4 cs d bf | a2 c | s1 |
  \clef "treble"
  | d4( e f af) | g4( bf g e) | g4( b bf e,) | a4( bf a fs) |
  | g4( b) f( b) | r2. c4( | a4 b c a | f4) f16_( g a8 g f ef d)~ |
} 
\\ \relative {
  | s1 | s1 | a1 | f1 |
  | f4 ef d bf | ef4 e f d | c4 f2 a4 | f4 d c bf |
  | f'1 | bf2 df | c2. e4 | f2. fs4 |
  | g2 f | g2. ef4 | c2 ef |
}
>>

%% mm75 - 81

<<
\relative {
  | d'4 a( bf c | ef4) d cs2 | e2( d | c2.) ef4 |
  | r4 fs g a | bf2 gf4 f | d2 ef4 c |
}
\\ \relative {
  | s1 | s1 | s1 | s2. \hideNotes ef'4( \unHideNotes |
  | d2. c4 | cs2) c | bf2 a |
}
>>

%% mm82

\clef "bass"
\relative { <bf d>4( d, f,) <cf'' f> }

%% mm83 - 84

\relative {
  | <d bf'>4( 4 4 4) |
  | \ottava -1 \acciaccatura { \stemDown ef,,16 ef' } \stemNeutral \ottava 0 
  <ef' c'>4..(\fermata <c a'>16) <a f'>4 <f ef'> |
}

%% mm85 - 98

\relative {
  \override Glissando.style = #'dashed-line
  | \stemDown bf2_(\glissando \upperStaff f'2 | ef2 d4\glissando \lowerStaff c |
  \revert Glissando.style
  | \stemNeutral bf2 c | f,1) | a2.( bf4 | c2 bf) | bf1~ | 1 |
  | f4( c' bf a8 g | a4 f g) ef | f4( d) ef( c) | d( ef f) bf | a1 | gf2 f |
}

%% mm99 - 100

\relative {
  \override Glissando.style = #'dashed-line
  | \stemDown <bf, f'>4 d 
  \once\set glissandoMap = #'((2 . 0)) <f af d>\glissando
  \once\set glissandoMap = #'((0 . 2))
  \upperStaff af'\glissando |
  | \once\set glissandoMap = #'((2 . 0)) \lowerStaff <ef, f a>4\glissando 
  \once\set glissandoMap = #'((0 . 2)) \upperStaff ef'\glissando 
  \once\set glissandoMap = #'((2 . 0)) \lowerStaff <ef, a c>\glissando 
  \upperStaff f' \lowerStaff |
  \revert Glissando.style
} \stemNeutral

%% mm101 - 116

\section

<<
\relative {
  | s1 | s2. c'4 | g2. gf4 | a8 bf c bf c gs a c |
  | s1 | s1 | s1 | s2. f,4 | c'1 | f,1 | ef2. ef4 | d'2 d8 c4 bf8 |
  | \clef "treble"  g'8 c b a g a bf f | bf8 fs g ef f d c af | s1 | f1 |
}
\\ \relative {
  | d'2 c | bf2. a4 | r4 c8 d ef d c bf | f8 g a g f2 |
  | d8 a' bf f a f bf a | bf2 ef8 d c b | a8 bf c a8~ 8 c f, bf | a ef' f g, a bf c d |
  | ef8 e f e ef d c a | bf8 c d ef f ef d df | c8 e a, gs a fs c' b | f4 g af fs |
  | b2 c4 ef | e4 c a2 | \clef "bass" g8 e f g c bf a g | a8 bf c d ef d c ef, |
}
>>

%% mm117 - 119

<<
\relative { 
  | \stemNeutral d4( f bf \clef "treble" d | \stemUp f8) g f e ef f ef c |
  | \clef "bass" d8( cs d4) c8( b c4) | 
}
\\ \relative { | s1 | bf2 c8 d c a | b2 fs2 | }
>>

%% mm120

\relative { bf4 a8 g a( bf a) f }

%% mm121 - 124

<<
\relative { 
  | \stemNeutral d4( f bf \clef "treble" d | \stemUp f8) g f e ef f ef c |
  | g'8( a g4) f8( g f4) | \clef "bass" e4 ef d2 |
}
\\ \relative { 
  | s1 | bf2 c8 d c a | bf4 c d bf | a4 f bf( bf,) |
}
>>

%% mm125

<<
\relative { \clef "treble" f'4 d ef8 f g ef }
\\ \relative { bf4. af8 g2 }
>>

%% mm126

\relative { \clef "bass" <ef g c>1 } 

%% mm127 - 129

<<
\relative { 
  | \clef "treble" b'4 a c2 | ef,4( fs) d( ef) | f4( ef8 f) \clef "bass" <bf, d>2 |
}
\\ \relative {
  | d'2 ef4 f | c2 d4 g,4 | a2 f4( bf,) |
}
>>

%% mm130

<<
\relative { \clef "treble" c'8_( d ef \parenthesize fs) b\rest ef,_( d) b'\rest }
\\ { s2 a2 }
>>

%% mm131 - 133

\relative {
  | af'4. g8 gf4. f8 | e4 ef d4. a8 | bf4 c d8 ef r4 | 
}

%% mm134 - 

<<
\relative {
    | \stemDown cs''8( d gf, d' \stemNeutral a gf ef c | \clef "bass" \stemDown a8 gf ef c a4) \stemNeutral <f f'>^^ |
}
\\ { s4 \stemUp gf' }
>>

\set baseMoment = #(ly:make-moment 1/4)
\set beatStructure = 1,1,1,1

\relative {
  | <d, d'>4^^ \clef "treble" d''' <bf, d f bf>2 | R1 | \clef "bass" s4 ef,16( g bf c) \allowBreak e,( g bf cs) f,( af b c) |
  | \time 1/2 d,16( e f gs a b c \upperStaff ef | \time 2/2 a4) \lowerStaff s2. |
}

\clef "treble" << { r4 b' } \\ { a2 } >> \relative { <g c e bf'>2 }

\relative {
  | f'2 ef | \clef "bass" c2 g | f2( e | ef2 c) |
}

\section
\time 4/4

\relative {
  | r8 <f bf d>8[-. r8 8]-. r8 <g a ef'>8[-. r8 8]-. | r8 <f a ef'>8[-. r8 8]-. r8 <f bf d>8[-. r8 <ef bf' c>8]-. |
  | r8 <f bf d>8[-. r8 8]-. r8 <g a c ef>8[-. r8 8]-. | r8 <a c gf'>[-. r <a ef' f>]-. r <ef a c>-._( <bf f' bf>4)-> |
}

<<
\relative {
  | c4.. \tuplet 3/2 { g32_( a b } c8)-. a-. f-. ef-. |
  | af4.. fs32_( g af8-.) f-. d-. bf-. |
}
\\ \relative { | c,1 | af | }
>>

\relative { 
  | \ottava -1 \acciaccatura { <ff,, ff'>8 } <ef ef'>4. <fs fs'>8-. <g g'>-. <a a'>-. \ottava 0 <bf bf'>-. <c c'>-. |
  | \acciaccatura { <ef ef'> } <d d'>4. <ef ef'>8-. <e e'>-. <cs cs'>-. \ottava -1 <as as'>-. <fs fs'>-. |
  | <ds ds'>4 <e e'> <es es'> <fs fs'> | <gs gs'>4 <a a'> <bf bf'>8 <a a'> <g g'> <f f'> \ottava 0 |
}

<<
\relative { <as bs e>4 \clef "treble" <b cs g'>2.\laissezVibrer\sustainOn }
\\ \relative { 
  \set tieWaitForNote = ##t
  \grace { gs,8~ fs'~ } 
  \unset tieWaitForNote
  <gs, fs'>1 
}
>>

| s1 | \relative { <g ef'>2. <a f'>4\sustainOff } |

\relative {
  | \clef "bass" d1 | c2 d | ef2 c | f4 ef d bf | f'4-. f-. g-. ef-. | d4 ef f d | 
}

<< \relative { ef4 f ef2 } \\ \relative { a,2 f } >>

\relative {
  | \stemDown <cs, g'>2\arpeggio \stemNeutral <cs' bf' d>\arpeggio | <c a'>2\arpeggio\laissezVibrer r4 r8
}

\repeat volta 2 {

\relative { 
  \clef "treble" bf8-. | bf'8-. 8-. c-. a-. bf8.([ f16 d8-.)] \clef "bass" gf,-. |
  | \stemDown f8.[ ef16 c8-.] c \stemNeutral <d bf'>8.([ f16 f8-.)] 8-. |
  | <d bf'>8-. 8-. <ef c'>-. <ef a>-. <f d'>8.[( f16 f8-.]) s8 | s2 s4.
}

} %end repeat

\relative {
  d'8-. | \upperStaff \stemDown ef8.[ \lowerStaff g,16 ef8] \stemNeutral a16 c d8.[ f,16 d8] r |
  | c8 d ef c cs d << { g8 f } \\ { e8 ef } >> | a8-. a-. bf-. gs-. a8. bf16 g8-- r8 |
  | \time 2/4 <f, f'>8-.[ 8-. <cf' cf'>-. <a a'>-.] | \time 2/2 <bf bf'>4-. <g' b>\fermata r2 |
  | \time 1/2 s2 | \time 2/2 \clef "treble" <bf d f>2 \clef "bass" <c, fs a> |
  | \time 1/2 <d f bf>4 <ef g \parenthesize c> | \time 2/2 <d bf'>2 f4 e |
}

\clef "treble"
<< { | s1_\< | a'1~^\startTrillSpan | 1~ | 1_\!_\ff | } \\ { | fs'1~^\startTrillSpan | 1~ | 1~ | 1 | } \\ { | a1 | } >>

\cadenzaOn
\smallNotes \relative {  
  \clef "bass" s2. \stemDown g32[ f ef d c bf a af]
}
\cadenzaMeasure
\smallNotes { f,4\laissezVibrer s2. }
\cadenzaMeasure
s2
\cadenzaMeasure
s1
\cadenzaEndMeasure

| \stemNeutral f,,2^^_\exprMark"pesante" \acciaccatura { ef,8 } <ef c' f'>2_^_\fermata |

\section
\time 3/4

\relative {
  | bf,4( bf' a | g4 gf f | ef4 d cs | d4 f,) f'( |
  | g4 f e | ef4 d ef | d4 c,) <a a'> | <<  { r4 g'( g'-.) } \\ { <bf,, bf'>2. } >> |
  | f''4( d df | c4 bf b) | c4 c, bf' | b4 d, fs' |
  | e4 e, cs' | d4 d, c' | e4 f, fs' | g ef, gs'( |
  | f4 e ds | e4) c <bf bf'>( | <a a'> <af af'> <g g'> | <f f'>4) c'
}

<<
{
  \key bf \minor 
  r4 | s2.*8 |
  \relative {
    | df8 ef f4 bf,4~ | 4 cf8 df bf4 | s2.*3 | s2 c4-> | ef2-> s4 | s2. |
  }
}
\new Staff \with { \remove Time_signature_engraver } {
  \key bf \minor
  \clef "bass"
  \relative {
    \ottava -1 ef,,4~ | 4 \ottava 0 ef'2~ | 2. | r4 ef2~ | 2. |
    | r4 \ottava -1 ef,2~ | 2. | r4 ef2~ | 4 \ottava 0 ef'2~ |
    | 4 r r | ef2. | <g g'>4 <af af'> <ef ef'> | <c c'>4 \ottava -1 <af af'> <f f'> |
    | r4 <bf, bf'>2 | r4 <bf bf'>2 \ottava 0 | r4 ef'2~ | 4 g, g' | 
  }
}
>>

\relative {
  | df'2 ef4 | << { c4( bf af) } \\ { ef2. } >> | df'2 4 | bf4( af gf) |
  | af,4 gf f | gf4 af, af' | g4 bf, <c c'>-. | \ottava -1 <a a'>4( <g g'> <f f'>) \ottava 0 |
}

\relative {
  | \clef "treble" ff'4 g8( af bf4) | <c af>4( <df bff> <\parenthesize ef c>) |
  | b4 cs8 ds e4 | << { a,4( as b) } \\ { s4 g2 } >> |
}

\key bf \major
\relative {
  | \clef "bass" r4 <bf,, bf'>2 | <g g'>2 d''4 | ef4 f f, |
  | \ottava -1 <f, f'>4 a <fs fs'> | bf4 <g g'> b |
  | <gs gs'> f' <a, a'> \ottava 0 | e'4 <b b'> ef |
  | << { <c c'>2. } \\ { r4 f,2^> } >> | R2. |
}

\relative {
  | R2. | r4 r4 \clef "treble" fs'' | <g ef>2 <a f>4 | d, c
}

\relative {
  \clef "bass" <e, e'>4-. | <ef ef'>2. | <f f'>2. |
}

\section
\time 2/2
\unset baseMoment
\unset beatStructure

\relative {
  | bf,8( f' d' bf f' d bf d | <bf f d>4) r r2 |
  | \stemDown f,8( ef' a f \stemNeutral ef' c a c | <a ef c>4) r r2 |
  | <d bf f>4 r r2 | c,8 f ef' f, a f ef' f, |
  | cs8( g' e e e' cs g bf | <c a>4) r f,, r |
  | bf8( f' d' f, f' f, d' g,) | c,8( f b f) bf,( e c' e,) |
  | af,8( ef' c' ef,) fs,( d' c' bf) | \stemDown f,8( f' a f \stemNeutral bf f d f) |
  | b,8( f' d' f,) d( f d' f,) | ef8( d' fs d) fs,( c' a' c,) |
  | bf,8( d' f, d') ef,( c' a c) | << { <bf f d>2 s2 } \\ { r8 bf,8^( bf'8-.) 8-. 8 f d f, } >> |
  | <d'' bf f>8-. \repeat unfold 7 { 8-. } | <e bs as fs>8 <e cs>8[ 8( <cs as>8)] 8( <as e>8) 8( <fss e cs>) |
  | <c' a ds,>8-. \repeat unfold 7 { 8-. } | <df g, e>8 <e df>8[ 8( <df g,>8)] 8( <bf e,>8) 8( <g df b>) |
  | \clef "treble" <bf' af f d>8-. 8-. 8-. 8-. <cf af f d>8-. 8-. 8-. 8-. | \clef "bass" a,,8 c c' ef, c fs a fs |
  | bf,8 f' bf f a, ef' c' f, | bf,8 f' c ef d bf f d |
}

\set baseMoment = #(ly:make-moment 1/16)
\set beatStructure = 4,4,4,4

\relative {
  | <bf,, bf'>2 <d d'>4.. <ef ef'>16( | <e e'>2) <g, g'>4.. <cs cs'>16( |
  | <ef ef'>2) <a a'>4( <fs fs'>) | <f f'>2 <b, b'> | 
  | ef16 e f gf af bf cf d \allowBreak ef e f gf af bf cf d |
  | ef16 f gf ef c ef a, c \allowBreak gf a ef gf c, gf' ef gf |
  | af16 bf cf af f af d, f \allowBreak cf d af cf f, af d, f |
  | ef16 g bf d ef g bf d ef8 r <c,, c'>4 |
  | g''16 bf ef, g b, d af b \allowBreak c d ef fs g g, a b |
  | c16 d ef d c bf a g \allowBreak fs gs a g f ef d b |
  | c16 d ef fs g gs a bf \allowBreak b cs ef e g e cs bf |
  | d,16 fs a cs f ef c a \allowBreak fs a c bf a g fs d |
  | bf16 d f a bf d f a \allowBreak bf16 16 f d bf16 16 f d |
  | c16 ef fs a c ef fs a \allowBreak b c ef c a f ef c |
  | a16 bf d f a bf f d \allowBreak f, b c e fs g ef c |
  | bf,16 cs d f bf cs d f bf8 r r 
}

\unset baseMoment
\unset beatStructure

\relative {
  \ottava -1 <g,, g'>8 | <d d'>8-. \repeat unfold 7 { 8-. } |
  | <ef ef'>4( <gf gf'> <a a'> <c c'> | <b b'>4 <bf bf'> <a a'> <gf gf'>) |
  | <f f'>4^^\sustainOn \ottava 0 s2. | s1*2 |
}

\cadenzaOn
\relative {
  \repeat tremolo 16 {
    \stemUp <f'' c a ef>32\sustainOff { \stemDown \upperStaff \ottava 1 <gf' c, gf>32 }
  } \caesura
}
\lowerStaff s8
\cadenzaMeasure
\clef "bass" s1
\cadenzaMeasure
\smallNotes \relative { g4\sustainOn s af\sustainOn s a\sustainOn s }
\cadenzaMeasure
s1
\cadenzaMeasure
s1 s4
\cadenzaMeasure
s1
\cadenzaEndMeasure

\cadenzaOn
\stemNeutral
f,,2^^ <ef a f'>2_^_\fermata
\hiddenTuplet 5/4 { s16\sustainOn s s s s\sustainOff }
\cadenzaEndMeasure

\section
\time 4/4
| R1 | r4 r8 \relative { ef8 d4. f8 } |

\time 3/4
| <d' bf f>2 s4 |

\time 2/2

\relative {
  | <d' bf f>2 <c a gf> | \time 1/2 <d bf f>4 <ef c gf> |
| \time 2/2 <f, f,>-. <b b,>^^ r2 | s1 |
}

<<
\relative {
  | bf4 f4.-> f16( g f8-.)[ ef-.] |
  | \time 3/2 ef8-. d-. c-. bf-. \allowBreak a-.  bf-. c-. d-. \allowBreak ef-. f-. g-. a-. |
}
\\ \relative {
  | r4 f,4.-> f16( g f8-.)[ ef-.] |
  | \time 3/2 ef8-. d-. c-. bf-. a-. bf-. c-. d-. ef-. f-. g-. a-. |
}
>>

\relative {
  | <bf bf,>2^^ r | <ef ef,>2^^ r\sustainOff | <bf, bf,>2^^ \ottava -1 <bf, bf,>8^^ 16 16 8-.[ 8-.] | 2^^ \ottava 0 r2 |
}

\fine

} %end lower


\include "../assets/ly/lib/spontini/piano-template.ly"