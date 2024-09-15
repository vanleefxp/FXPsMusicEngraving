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
  subtitle = "№40 in b Minor"
  subsubtitle = "« Dans le style de Erik Satie »"
  tagline = ##f
}

upper = {
\accidentalStyle Score.piano
%\set Score.proportionalNotationDuration = ##f
\time 3/4
\key b \minor
\clef "treble"
  
\tempo "Lent et trist" 4 = 108
  
\relative {
  | R2.*3 | r4 r 
  b'| d8 e fs2~ | 4 e d | cs a fs | e a cs |
  | \acciaccatura { b32 cs b fs } a2. | << { | gs2.~ | 4 g b | } \\ { r4 e, c } >> |
  | cs'4 <fs as,> <e g,> |
}

<< 
\relative { | \acciaccatura { a''16 g } fs2.\laissezVibrer | } 
\\ \relative { | r4. c'' | }
>>

\smallNotes \relative {
  | \ottava 1 b'''8_\exprMark"loin" r4 a8 r4 \ottava 0 |
}

\relative {
  | g''2. | gs4. cs | as2. | \ottava 1 cs4. fs | d2.~ | 2. \ottava 0 |
}

<< 
{ | fs''4 4 4 | } 
\\ \new Voice << { fs''8 s8 8 s8 8 s8 } { s8 b' s8 8 s8 8 } >> 
>>

\relative {
  | fs''4 4 4~ | 2.~ | 2. |
  | \acciaccatura { g,32 cs d fs a } cs2\pp^\exprMark"très doux" a4~ | 4 fs e~ | 2.~ | 2. |
  | \acciaccatura { b32 c e g } a2\mf g4 | e4. b' |
}

\relative { | \acciaccatura { e''16 g a } g4.\laissezVibrer }

\smallNotes \relative {
  \ottava 1 e''''8_\exprMark"loin" r4 | b8_\exprMark"dim." r4 g8 r4 |
}

<<
\relative {
  | \stemUp \acciaccatura { b''16 d e } \stemNeutral (fs4. g |
  | \stemUp e2.~) | 2.~ | 2. \ottava 0 |
}
\\ \relative {
  | s2. | r4. d''' | c2.( | g2.) |
}
>>

\relative {
  \tupletSpan 4
  | \acciaccatura { as'32 b\mf cs ds fs gs } as4. fs~ |
  | 4 \tuplet 3/2 { ds8( fs gs as cs es } |
  | \tuplet 3/2 { ds8\prall^\markup{\magnify #0.5 {\sharp}} as cs gs as es fs cs ds) } |
  \tupletSpan \default
  | \acciaccatura { e,16 fss as } ds2 \acciaccatura { bf'8 } af4 |
  | g2 ef4 |
}

r8

<<
\relative {
  s8 s2 | r4. d''( | cs2.) | \stemNeutral s4. \ottava 1 b'' | \stemUp a2.~_\exprMark"rit." |  4 gs_(\fermata fs)\fermata |
}
\\ \relative {
  c''8^( f d b a | gs2.) | a4.( g | \stemNeutral fs)^\exprMark"expressif" s | \stemDown ds''2.~ | 2. |
}
>>


\new Voice <<
\smallNotes \relative {
  | e'''8\jsShape "7" "cpts" #'((0.015 . 0.057) (-1.886 . 1.775) (-1.3 . 1.142) (-0.243 . 0.214)) ([ ds d cs c b \ottava 0 | as a gs g fs f |
  | e8 ds d cs c b | as a gs g fs f)] |\bar "!"
}
\relative {
  | cs'''\exprMark"ad lib." c b as a gs |\bar"!" g fs es e ds d |\bar"!"
  |\bar"!" cs c b as a gs |\bar"!" g fs es e ds d |\bar"!"
}
>>

\smallNotes \relative {
  | \clef "bass" \repeat percent 2 {  e16[( gs b \rBeam 1 d \lBeam 1 e d fs \rBeam 1 e \lBeam 1 \hiddenTuplet 6/4 { d16 b gs g fs f]) } |\bar "!" } \bar "!"
}

\smallNotes \relative {
  | \clef "treble" r4\exprMark"mélancolique" \ottava 1 gs'''8\jsShape "1" "cpts" #'((-0.129 . -0.565) (-0.151 . 0.577) (0.237 . 0.545) (0.082 . -0.603)) ([ d' cs g) |
  |\bar "!" fs\jsShape "2" "cpts" #'((-0.174 . -0.09) (-0.552 . 1.965) (0.628 . 1.863) (-0.002 . -0.786)) ( c' b f) e\jsShape "3" "cpts" #'((-0.274 . 0.528) (-0.785 . 1.487) (-0.124 . 1.715) (-0.178 . -0.938)) ( bf' |\bar "!" a ef) d\jsShape "4" "cpts" #'((-0.337 . 0.201) (-0.059 . 1.754) (0.386 . 1.202) (-0.058 . -0.951)) ( af' g df) |
  |\bar "!" c\jsShape "5" "cpts" #'((-0.296 . 0.634) (-0.152 . 1.683) (0.462 . 1.034) (0.111 . -0.379)) ( gf' f b,) as e'] \ottava 0 |
}

\relative {
  | d''8( gs, d'4. cs8) | ds8( as ds4. cs8) | fs8( bs, fs'4. es8) | as8( e as4. gs8) |
}

<<
\relative { | cs'''4\jsShape "6" "cpts" #'((0.194 . -1.537) (-0.346 . 1.142) (-0.822 . 1.475) (-0.017 . -0.652)) ( b as | \stemNeutral gs fs es) | }
\\ \relative { | fss''2. | }
>>

\relative {
  | fs''4 e ds~ | 4 cs^\p^\> b~ | 4 gs e~ | 4 cs fs\! | 
  | r4 r \acciaccatura { as32 b cs ds fs } as4~^^\f | 2.\laissezVibrer |
}

\fine

} %end upper

lower = {
\time 3/4
\key b \minor
\clef "bass"

\repeat unfold 2 {
\new Voice <<
\relative {
  | b,,4 s2 | fs'4 s2 | a4 s2 | fs4 s2 |
}
\relative {
  | s4 <d' b fs>2 | s4 2 | s4 <cs a fs e>2 | s4 2 |
}
>>
} %end repeat

\new Voice <<
\relative {
  | \grace { s32*4 } b,4 \hideStaffSwitch s2 | a4 s2 | es4 s2 | fs4 s2 |
  | \grace { s16*2 } ds4 \hideStaffSwitch s2 | b4 s2 | e4 s2 | es4 s2 |
  | fs4 s2 | as4 s2 | b,4 s2 | fs'4 s2 |
  | b,4 s2 | e4 s2 | d4 s2 | b'4 s2 | 
  | \grace { s32*5\sustainOn } fs4 s2 | a4\sustainOff s2 | cs,4 s2 | d4 s2 |
  | \grace { s32*4\sustainOn } c4 s2 | g4\sustainOff s2 |
  | \grace { s16*3\sustainOn } d'4 \hideStaffSwitch s2 | b4\sustainOff s2 |
  | \grace { s16*3\sustainOn } a'4 s2 | c,4\sustainOff s2 | e4 s2 | fs4 s2 |
  | \grace { s32*6\sustainOn } b,4 s2 | ds4\sustainOff s2 | as'4 s2 | \grace { s16*3\sustainOn } fss4 s2 |
  | f4\sustainOff s2 | d4 s2 | b4 s2 | e4 s2 | b4 s2 | 
}
\relative {
  | \grace { s32*4 } s4 <d' cs a fs>2 | s4 <\parenthesize e gs, fs>2 |
  | s4 <b gs d>2 | s4 <d as fs e>2 |
  | \grace { s16*2 } s4 <ds bs gs fs>2 | s4 <fs ds a>2 |
  | s4 \clef "treble" <g e c bf>2 |
  | \clef "bass" s4 \clef "treble" <b es, cs b>2 |
  | \clef "bass" s4 \clef "treble" <cs b fs ds>2 |
  | \clef "bass" s4 \clef "treble" <cs as g e d>2 |
  | \clef "bass" \repeat unfold 6 { s4 <d, b fs>2 | }
  | \grace { s32*5 } s4 <cs a fs e>2 | s4 2 | s4 <e cs a fs>2 | s4 2 |
  | \grace { s32*4 } s4 <e c a g>2 | s4 <e c b g>2 | \grace { s16*3 } s4 <fs d b g>2 | s4 2 |
  | \grace { s16*3 } s4 \clef "treble" <a fs d b>2 | \clef "bass" s4 \clef "treble" <g e c b>2 |
  | \clef "bass" s4 \clef "treble" <a fs e c>2 | \clef "bass" s4 <fs e cs as>2 |
  | s4 <gs ds b fs>2 | s4 <es as, gs>2\sustainOn |
  | s4 \clef "treble" <as es css b>2\sustainOff | \clef "bass" \grace { s16*3 } s4 <ds, as fss e>2 |
  | s4 <ef c af g>2 | s4 << { <d af>2 } \\ { f,4( e) } >> |
  | s4 <fs' bs, gs d>2 | s4 <a, ds cs>2 | s4 <cs a es b>2 |  
}
\relative {
  \override Glissando.style = #'dashed-line
  | \grace { \hideNotes \upperStaff \stemDown b'32*4 \unHideNotes \stemNeutral \showStaffSwitch } \lowerStaff s2.*4 |
  | \grace { \hideNotes \upperStaff \stemDown a'16*2 \unHideNotes \stemNeutral \showStaffSwitch } \lowerStaff s2.*18 |
  | \grace { s16 \hideNotes \upperStaff \stemDown g16*2 \unHideNotes \stemNeutral \showStaffSwitch } \lowerStaff s2. |
  \revert Glissando.style
}
>>

\relative {
  | \ottava -1 b,,,8(\sustainOn b' ds \ottava 0 a' cs fs | ds'2.) | 
  | s2.*4 |
  \smallNotes {
    | \ottava -1 e,,,4.\sustainOn gs\sustainOn | b\sustainOn d\sustainOn |
    | \ottava 0 <e e'>4\sustainOn \clef "treble"
  }
}

\new Voice <<
\smallNotes \relative {
  b'4 as | a gs g | fs f \clef "bass" e | ef d bs |
}
\smallNotes \relative {
  d' cs | c b bf | a af g | gf f css\sustainOff | 
}
>>

\relative {
  | r4 <b gs fs>4-. 4-. | r4 <as fss e>4-. 4-. | r4 <bs a ds,>4-. 4-. | r4 <e cs as>4-. 4-. | 
}

\new Voice <<
\relative {
  | b,4 s2 | es,4 s2 | cs4 s2 | b4 s2 | cs4 s2 | e4 s2 |
}
\relative {
  | s4 \clef "treble" <es'' b gs fs ds>2 | \clef "bass" s4 \clef "treble" <as, es ds b>2 |
  | \clef "bass" s4 \clef "treble" <gs e cs b>2 |
  | \clef "bass" s4 <ds b gs e>2 | s4 <cs b gs e>2 | s4 <\parenthesize cs as gs e>2 | 
}
>>

\relative {
  | r4 r \acciaccatura { cs32\sustainOn b gs fs ds } b4~^^ | 2.\laissezVibrer | 
}

\fine

} %end lower

\include "../assets/ly/lib/spontini/piano-template.ly"