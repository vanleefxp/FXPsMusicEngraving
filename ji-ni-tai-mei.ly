\version "2.24.4"
\language "english"

\include "./assets/ly/lib/spontini/jssvg.ly"
\include "./assets/ly/lib/spontini/misc.ly"
\include "./assets/ly/lib/spontini/oso-padding.ly"
\include "./assets/ly/lib/spontini/tabular-functions.ly"
\include "./assets/ly/lib/utils.ily"

\include "./assets/ly/template/henle.ily"

#(define showEditorStuff "false")

% lyrics prompt
ll = #(define-music-function 
  (parser location content) 
  (markup?) 
  #{
    ^\markup { \magnify #0.6 \sans #content }
  #})

\header {
  title = "Chicken, You’re so Beautiful!"
  subtitle = \markup {
    "also known as "\italic { "Just Because You’re so Beautiful" }
  }
  composer = "Original music by Cai Xukun (KUN)"
  arranger = "Piano arrangement by F. X. P."
  opus = "Op. 2.5"
  tagline = ##f
}

%-----------------%
% START __JSSVG__ %
%-----------------%

"j29" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "29" "positions" #'(-0.583 . 0.626) $sym $mus 
#})

"j28" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "28" "positions" #'(-0.794 . 0.443) $sym $mus 
#})

"j27" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "27" "positions" #'(0 . 1.616) $sym $mus 
#})

"j26" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "26" "positions" #'(-1.016 . 1.488) $sym $mus 
#})

"j25" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "25" "positions" #'(1.484 . -0.889) $sym $mus 
#})

"j24" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "24" "positions" #'(1.026 . 0.055) $sym $mus 
#})

"j23" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "23" "positions" #'(-0.095 . 2.005) $sym $mus 
#})

"j22" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "22" "positions" #'(-1.476 . -0.481) $sym $mus 
#})

"j21" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "21" "positions" #'(0.665 . -1.518) $sym $mus 
#})

"j20" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "20" "positions" #'(1.16 . 0) $sym $mus 
#})

"j19" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "19" "positions" #'(-0.114 . 0) $sym $mus 
#})

"j18" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "18" "positions" #'(-1.345 . 0) $sym $mus 
#})

"j17" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "17" "positions" #'(0 . 0.349) $sym $mus 
#})

"j16" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "16" "positions" #'(-1.059 . 0.012) $sym $mus 
#})

"j15" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "15" "positions" #'(0 . 1.522) $sym $mus 
#})

"j14" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "14" "positions" #'(1.965 . -0.031) $sym $mus 
#})

"j13" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "13" "positions" #'(0.378 . 0) $sym $mus 
#})

"j12" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "12" "positions" #'(0 . 0.488) $sym $mus 
#})

"j11" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "11" "positions" #'(-1.001 . 0) $sym $mus 
#})

"j10" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "10" "positions" #'(1.881 . -0.031) $sym $mus 
#})

"j9" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "9" "positions" #'(1.175 . 0) $sym $mus 
#})

"j8" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "8" "positions" #'(0.284 . 0.516) $sym $mus 
#})

"j7" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "7" "positions" #'(-0.401 . -1.9) $sym $mus 
#})

"j6" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "6" "positions" #'(-0.709 . 1.011) $sym $mus 
#})

"j5" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "5" "positions" #'(-0.818 . 1.202) $sym $mus 
#})

"j4" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "4" "positions" #'(0.235 . 0.598) $sym $mus 
#})

"j3" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "3" "positions" #'(0.76 . -1.217) $sym $mus 
#})

"j2" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "2" "positions" #'(1.762 . -0.738) $sym $mus 
#})

"j1" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "1" "positions" #'(0 . 2.054) $sym $mus 
#})

%-----------------%
% END __JSSVG__   %
%-----------------%

%----------------%
% START __VARS__ %
%----------------%

"mm1_u" = {
  \relative { \acciaccatura { ef''16 e } <f c af>4 }
  \smallNotes \relative {
    r16 <af'' f'>16-. 16-. 16-. 
    r8 <f c'>16-. 16-. 
    r8 <ef f>16-. 16--\laissezVibrer
  }
}

"mm2_u" = {
  \smallNotes \relative {
    r8 <f'' c'>16-. 16--\laissezVibrer
    r16 <f bf>16-. 16-. 16--\laissezVibrer
  }
  \relative { r8 <c' f>8-.[ <f c'>-. 8-.] }
}

"mm3_u" = {
  \relative { \acciaccatura { ef''16 e } <f bf, af>4 }
    \smallNotes \relative {
      r16 <bf'' f'>16-. 16-. 16-.
      r8 <f bf>16-. 16-.
      r8 <ef f>16-. 16--\laissezVibrer
    }
}

"mm17_u_v2" = {
  \smallNotes { \stemDown
    \relative c' {
      r16 <c af'> <c g'>16 16 
      r <c g'>16 16 <c af'>
      <c g'>16 16 <c af'> <c g'>
      r <c af'> <c g'>16 16
    }
  }
}

"mm31_u_v1" = {
  \relative {
    s4 <bf''' df>( <af c> <g bf>)
  }
}

"mm1_l" = {
  \grace { s8 } <f,, f,>4 \ottava 0 <f c' ef'>8-- r16 \ottava -1 af,32( c, 
  <f, f,,>8-.) 8-. \ottava 0 <f c' ef'>\noBeam \ottava -1 <ef, ef,,>]~ 
}

"mm2_l" = {
  <ef,, ef,>8[ 8] \ottava 0 <f af ef'> r16 \ottava -1 fs,32( g, 
  <af,, af,>8_.) <f,, f,>8-. 8-. 8-.
}

"mm3_l" = {
  \grace { s8 } <df,, df,>4 \ottava 0 <f af bf df'>8-- r16 \ottava -1 af,32( bf,, 
  <f, f,,>8-.) 8-. \ottava 0 <f af bf df'>\noBeam \ottava -1 <ef,, ef,>]~
}

"mm9_l" = {
  \stemUp f,,8-. 8-- \stemDown <c af bf>-- \parenthesize f,16( <bf, ef>-.) 
  \stemUp \grace { s8 } f,8\rest\"j4"[ c,--] \stemDown <ef f c'>-- \parenthesize f,16( <c f>-.) 
}

"mm17_l" = {
  \stemUp <c, c>4-! \stemDown <f af bf ef'>-- r <f af bf ef'>--
}

"mm29_l_v1" = {
  \smallNotes \relative {
    \ottava 0
    r16 <f df'> <f c'>16 16
    \onceNormalNote <f df'>-> <f c'>16 16 <f df'> 
    <f c'>16 16 <f df'> <f c'>16 
    \onceNormalNote 16-> <f df'> <f c'>16 16
  }
}

%----------------%
% END __VARS__   %
%----------------%

upper = {
\time 4/4
\tempo 4 = 112

%%%%%%%%%%%%%%%
%% MEASURE 0 %%
%%%%%%%%%%%%%%%

\partial 4.

\clef "treble" 
\key f \minor

\relative {
  <f' c>8-.\mf <c' f,>-. 8-. |
}

\repeat volta 2 {
%%%%%%%%%%%%%%%
%% MEASURE 1 %%
%%%%%%%%%%%%%%%
 
\"mm1_u"

%%%%%%%%%%%%%%%
%% MEASURE 2 %%
%%%%%%%%%%%%%%%

\"mm2_u"

%%%%%%%%%%%%%%%
%% MEASURE 3 %%
%%%%%%%%%%%%%%%

\"mm3_u"

%%%%%%%%%%%%%%%
%% MEASURE 4 %%
%%%%%%%%%%%%%%%

<<
{
    \smallNotes {
      \relative {
        r8 <f'' c'>16-. 16--\laissezVibrer
        r16 <f bf>16-. 16-. 16--\laissezVibrer
      }
    }
}
\\ {
  r4 r8 f'8
}
>> 
\stemDown f'8 \stemUp <f' c''>16[ <f' c''>16] <f' c''>8 <f' c''>8 \stemNeutral

%%%%%%%%%%%%%%%
%% MEASURE 5 %%
%%%%%%%%%%%%%%%

\"mm1_u"

%\once \override Score.VoltaBracket.musical-length = \musicLength 1
%%%%%%%%%%%%%%%
%% MEASURE 6 %%
%%%%%%%%%%%%%%%

\"mm2_u"

\alternative {
\volta 1 {
%%%%%%%%%%%%%%%
%% MEASURE 7 %%
%%%%%%%%%%%%%%%

\"mm3_u"

%end of volta 1 spanner
\once\set Score.voltaSpannerDuration = #(ly:make-moment 0)
%%%%%%%%%%%%%%%
%% MEASURE 8 %%
%%%%%%%%%%%%%%%

\smallNotes { r8 <f'' bf''>8 }
<<
{
  \smallNotes {
    \relative { \ottava 1 r16 f'''[ r f] fs g af a bf b c c \ottava 0 }
  }
}
\\ {
  \smallNotes {  
    \relative { gf''16 df' c \repeat unfold 3 { c c df } }
  }
}
>>

<<
{
  \relative c'' { 
    | <ef f>16^>\mp c 16 16 16 16 16 16 16 \allowBreak
      \acciaccatura { af16 a } bf c 16 16 16 r16 32 32 16 16 |
    | <ef f>16^> c16 16 16 16 16 16 16 \allowBreak
      \acciaccatura { af16 a } bf16 c16 16 16 r8 f,16 16 |
    | <bf ef,>16 c8. bf16 c8. \allowBreak bf16 c8. \stemDown f,16 f32 f f16 f \stemUp |
    | <af f>16 bf8. af16 bf8. \allowBreak af16 bf8. f8. f16 |
    | <f c'>8 <f c'>16 <f c'>16 \tuplet 3/2 {<f c'>8 <f c'> <f c'>} \allowBreak
      \tuplet 3/2 {<af ef'>8 <c f> <c f>} <c f>8 \smallNotes { <b' c ef f>^^ } |
    | <f, c'>8 <f c'>16 <f c'>16 \tuplet 3/2 {<f c'>8 <f c'> <f c'>} \allowBreak
      \tuplet 3/2 {<af ef'>8 <c f> <c f>} <c f>8 
      \ottava 1 \smallNotes { <c' ef f af bf>^^ } \ottava 0 |
  }
}
\\ {
  \smallNotes \relative c' { 
    | \repeat unfold 5 { ef16 f f } ef |
    | ef16 f16 16 ef f16 16 ef f16 16 16 ef f16 16 ef af g |
    | g16 \repeat unfold 3 { af g g } af g \stemUp g af g g \stemDown |
    | c,16 \repeat unfold 5 { df c c } |
    | g'16 \repeat unfold 3 { af g g } af g g4 |
    | g16 \repeat unfold 3 { af g g } af g g4 |
  }
}
>>

\new Voice<<
\relative { c''16\f bf \repeat unfold 3 { c bf } \allowBreak c(-- \parenthesize bf16)-. 16 c\laissezVibrer }
\relative { df'16 c \repeat unfold 3 { df c } df \parenthesize c c df\laissezVibrer }
>>
<<
\relative c' { ef16 f f ef }
\\ \smallNotes \relative { c'16 df c c }
>>

<<
\smallNotes \relative c' {
  <ef c'>16 \repeat unfold 5 { <ef df'> <ef c'> <ef c'> }
}
\\ \relative { 
  f'4._( f8 \allowBreak \acciaccatura { g8 } af4 \acciaccatura { g8 } af4_)
}
>>

<<
\new Voice {
  \voiceOne
  <<
  \relative { 
    | s4 r8 f''8 c'16 df c df c8-. f,--\laissezVibrer | 
    | s4 r8 f ef16 f16 16 ef f8-. 8--\laissezVibrer |
    | s4 r8 f16 16 c' df c df c8-. f,--\laissezVibrer |
    | s8 f8 r8 8 ef16 f16 16 ef f8-. 8--\laissezVibrer |
    | r4 df'4( c) f,8 8\laissezVibrer |
    | r8 f8 8[ r16 16] c'16 df c df c8 f,--\laissezVibrer |
    | r4 r8 f ef16 f f ef f8-. 8--\laissezVibrer |
    | r4 r8 ef8 16 f f ef f8-. 8--\laissezVibrer |
  }
  \relative {  
    | s2 af''16 bf af bf af8 ef |
    | s4. c8 bf16 c16 16 bf c8 8 |
    | s4. df16 16 af'16 bf af bf af8 ef |
    | s8 ef s c bf16 c16 16 bf c8 8 |
    | s4 bf' af ef8 8 | s8 c ef s16 c af'16 bf af bf af8 c, |
    | s4. c8 bf16 c c bf c8 8 |
    | s4. bf8 16 c c bf c8 8 |
  }
  \relative {
    | f'4 s2. | af,4 s2. | 4 s2. | 8 s8 s2. |
  }
  >>
  \relative {
    | r4\exprMark"grandioso" <c''' df f af>4 <bf ef g> <ef, ef'>8 <ef af c>~ |
    | 8 <ef c'> <c' ef af>4 <bf ef g> <ef, ef'>8 <ef af c>~ |
    | <ef af c>8 <ef g bf c ef>8~ 2 
  }
}
\new Voice { 
  \voiceTwo
  <<
  \relative \smallNotes {
    | \repeat unfold 4 { r16 af' g16 16 r g16 16 af g16 16 af g r af g16 16 | }
  }
  \relative \smallNotes {
    | \repeat unfold 4 { s16 c'16 16 16 s16 16 16 16 16 16 16 16 s16 16 16 16 | }
  }
  >> 
  \relative {
    | <f af bf ef>1 | <bf c f af>1 | <bf d f af>1 |
    \smallNotes {
      \repeat unfold 2 { r16 <af c df f>16 16 16 }
      \repeat unfold 2 { r16 <g bf c ef>16 16 16 }
    }
  }
  \relative {
    | <f' af c df>2 <c ef g bf>2 | r2 <c g' af>2 |
    | r8 c16->^(\"j1"[ \rBeam 1 bf \lBeam 1 g^) e'->^(  c \rBeam 1 bf^) \lBeam 1 g'->^( e df^) bf']
  }
}
>> \oneVoice

\relative { <g' bf c>8-. 8-. }

\relative { <g' bf c e>8-. 8-. 8-. <g b df f>-. }
<<
\relative { <g' c e g>4-^ r }
\\ \relative { r8 <c' f>8-. <f c'>-. 8-. }
>>
} %end volta 1

\volta 2 {
  
\relative { 
  | \acciaccatura { ef''16 e } <f bf, af>4 r8 \ottava 1 <f' af,>8-.\f 8-. 8-. 8-. <g bf,>-. |
  \once\set Score.voltaSpannerDuration = #(ly:make-moment 0)
  | <af bf,>8-. <g bf,>-. <f af,>-. <f c>-. <af c,>4( <g ef c bf>) |
}

%%%%%%%%%%%%%%%%
%% MEASURE 31 %%
%%%%%%%%%%%%%%%%


<<
\relative c'''' {
  | \repeat unfold 3 { s4 <df bf>( <c af> <bf g>) | }
  |  s4 df( c bf) |
}
\\ \relative {
  | <f''' af,>4 r8^\mp <f df c>16 16 <af df, c>8-. <ef c bf>8-. 8-. <f ef c>-.~ |
  | 4 r8 <ef c bf>8-.8-. 8-. 8-. <f ef c>-.~ | 
  | <c ef f>4 r8 <f df c>8-. 8-. 8-. 8-. <g df bf>-. |
  | <af df, c>8-. <g df c>-. <f df c>-. <g df c>-. <df bf>8-. 8-. <c bf>8-. 8-. |
}
\\ \relative c'''' {
  | s1*3 | s2 af4 <g ef> |
}
>>
\ottava 0

\relative { | <g'' a f'>8[ r16 16] r8 <g a ef'>16 <g a f'> r16 8.~ 4 | }

} %end volta 2
} %end alternative
} %end repeat

\fine

} %end upper


lower = {
\clef "bass"
\key f \minor

%%%%%%%%%%%%%%%
%% MEASURE 0 %%
%%%%%%%%%%%%%%%

\ottava -1
<f,, f,>8-.[ 8-. 8-.]

\repeat volta 2 {
%%%%%%%%%%%%%%%
%% MEASURE 1 %%
%%%%%%%%%%%%%%%
    
\"mm1_l"

%%%%%%%%%%%%%%%
%% MEASURE 2 %%
%%%%%%%%%%%%%%%
    
\"mm2_l"

%%%%%%%%%%%%%%%
%% MEASURE 3 %%
%%%%%%%%%%%%%%%

\"mm3_l"

%%%%%%%%%%%%%%%
%% MEASURE 4 %%
%%%%%%%%%%%%%%%

<ef,, ef,>8[ 8] \ottava 0 <f af bf df'>4 
\ottava -1 <f,, f,>8-. 8-. 8-. 8-.

%%%%%%%%%%%%%%%
%% MEASURE 5 %%
%%%%%%%%%%%%%%%

\"mm1_l"

%%%%%%%%%%%%%%%
%% MEASURE 6 %%
%%%%%%%%%%%%%%%

\"mm2_l"

\alternative {
\volta 1 {
%%%%%%%%%%%%%%%
%% MEASURE 7 %%
%%%%%%%%%%%%%%%

\"mm3_l"

%%%%%%%%%%%%%%%
%% MEASURE 8 %%
%%%%%%%%%%%%%%%

<ef,, ef,>8 <f,, f,>-. \ottava 0 <f af bf df'>\noBeam r16 \ottava -1 bf,,32( g,,
<c,, c,>8-.) 8-. \ottava 0 <g bf c' f'>--\noBeam
\clef "treble"
<<
{ \relative { c''16 c } }
\\ { 
  \smallNotes {
    \relative { af'16 g }
  }
}
>>
\clef "bass"

%%%%%%%%%%%%%%%
%% MEASURE 9 %%
%%%%%%%%%%%%%%%

\"mm9_l"

%%%%%%%%%%%%%%%%
%% MEASURE 10 %%
%%%%%%%%%%%%%%%%

\"mm9_l"

%%%%%%%%%%%%%%%%
%% MEASURE 11 %%
%%%%%%%%%%%%%%%%

\stemUp c,8-. 8-- \stemDown <c g bf>-- \parenthesize bf,16( <ef g>-.)
\stemUp r8\"j17"[ g,,] <c g bf>--\"j18"[ \parenthesize ef,16( <af, bf, g>-.])

%%%%%%%%%%%%%%%%
%% MEASURE 12 %%
%%%%%%%%%%%%%%%%

\stemUp bf,,4 \stemDown  <df f bf>8-- \parenthesize f,16( <c f>-.) 
\stemUp r8[ df,] \stemDown <df f bf>-- \parenthesize f,16( <c df af>-.)

%%%%%%%%%%%%%%%%
%% MEASURE 13 %%
%%%%%%%%%%%%%%%%

\stemUp f,,8 ef,16 f, <c ef f af>8--\"j16"[ \ottava -1 c,16 f,,] 
\ottava 0 r8 f, <c ef f af>16-- \ottava -1 \smallNotes { f,,32 32 c,16 f,,16 } \ottava 0 

%%%%%%%%%%%%%%%%
%% MEASURE 14 %%
%%%%%%%%%%%%%%%%

f,,16 f, ef, f, <c ef f af>8--\"j16"[ \ottava -1 c,16 f,,] 
\ottava 0 r8 f, <c ef f af>16-- \ottava -1 \smallNotes { af,, f,, df,, } \ottava 0 

%%%%%%%%%%%%%%%%
%% MEASURE 15 %%
%%%%%%%%%%%%%%%%

f,,8 f,16 df, <c df f af>--( c,8) r16 
r <df, df>-. r af,32( df, \stemDown <c df f af>4--)

%%%%%%%%%%%%%%%%
%% MEASURE 16 %%
%%%%%%%%%%%%%%%%

\stemUp
\ottava -1 <ef,, ef,>16 <f,, f,> \ottava 0 r bf,,32( f, 
<c ef f af>16)[ \ottava -1 \smallNotes { \relative { f,,32 c' f,16 c] \grace { s8 } } }
r8 \relative { <af,, af'>-. \grace { s8 } <g g'>-. <gf gf'>-. }
% problem notes do not return to normal size

%%%%%%%%%%%%%%%%
%% MEASURE 17 %%
%%%%%%%%%%%%%%%%

\stemUp <f,, f,>4-! \ottava 0 \stemDown <f af c'>-- r <f af c'>--

%%%%%%%%%%%%%%%%
%% MEASURE 18 %%
%%%%%%%%%%%%%%%%

\"mm17_l"

%%%%%%%%%%%%%%%%
%% MEASURE 19 %%
%%%%%%%%%%%%%%%%

\stemUp <bf,, bf,>4-! \stemDown <f af bf df'>-- r <f af bf df'>--

%%%%%%%%%%%%%%%%
%% MEASURE 20 %%
%%%%%%%%%%%%%%%%

\"mm17_l"

%%%%%%%%%%%%%%%%
%% MEASURE 21 %%
%%%%%%%%%%%%%%%%

\smallNotes \relative { \stemNeutral
    | \onceNormalNote f,,16->\"j20"[\sustainOn f' df'16 16] 
      \stemUp af'16[ \upperStaff \stemDown df f f] 
      af16[ f df16 16]
      \lowerStaff \stemNeutral af16\"j23"[\sustainOff df, f,16 16] |
    | \onceNormalNote af,16->\"j24"[\sustainOn f' c'16 16]
      \lowerStaff \stemUp f16  c'16 16 \upperStaff \stemDown f]  af[ f \lowerStaff \stemUp  c  c]
      \stemNeutral f,16\"j27"[\sustainOff c f,16 16] |
    | \stemUp \onceNormalNote f,16(\sustainOn c' f f 
      \stemDown c'\"j7"[ f af af] 
      c ,f c c 
      \stemUp af\"j8"[\sustainOff f c c]) |
}

%%%%%%%%%%%%%%%%
%% MEASURE 24 %%
%%%%%%%%%%%%%%%%

\stemUp \ottava -1 <df,, df,>4-! \ottava 0
\stemDown <df f bf>-- \stemUp g, \stemDown <df f bf>-- 

%%%%%%%%%%%%%%%%
%% MEASURE 25 %%
%%%%%%%%%%%%%%%%

\smallNotes {
  \relative {  
    \stemUp \ottava -1 \onceNormalNote df,,16->\"j9"[(\sustainOn 
    af' df16 16] 
    \ottava 0 f\"j10"[ df' af' af]
    \stemDown r\sustainOn bf\"j11"[ c, c]
    \stemUp bf\"j12"[ f c c])
  }
}

%%%%%%%%%%%%%%%%
%% MEASURE 26 %%
%%%%%%%%%%%%%%%%

\smallNotes {
  \relative {
    \stemUp \onceNormalNote f,,16->\"j13"[(\sustainOn 
    c' af' af] f\"j14"[ c' af' af]
    \stemDown r\sustainOn ef'\"j19"[ af, af]
    \stemUp ef\"j15"[ bf ef, ef])
  }
}

%%%%%%%%%%%%%%%%
%% MEASURE 27 %%
%%%%%%%%%%%%%%%%

\stemUp <g,, g,>8\sustainOff 
\relative { \stemDown
  c16_>(\"j1"[\sustainOn \set stemRightBeamCount = 1 bf 
  \set stemLeftBeamCount = 1 g)  e'_>(  c \set stemRightBeamCount = 1 bf) 
  \set stemLeftBeamCount = 1 g'_>( e df) bf']\sustainOff 
  c( bf g e)
}

%%%%%%%%%%%%%%%%
%% MEASURE 28 %%
%%%%%%%%%%%%%%%%

\relative {
  \ottava -1 \stemUp
  <g,, g'>8-. 8-. 8-. <f f'>-. <e e'>4^^ <f f'>8-. 8-.
}
} %end volta 1

\volta 2 {
%%%%%%%%%%%%%%%%
%% MEASURE 29 %%
%%%%%%%%%%%%%%%%
\relative {
  \grace { s8 } <df,, df'>4 \ottava 0 \stemDown <f'' af bf df>8-- r16 \stemUp df32( f,
  <bf, bf'>8-.) 8-. <f'' g bf df>--\"j28"[ <c, c'>] 
}

%%%%%%%%%%%%%%%%
%% MEASURE 30 %%
%%%%%%%%%%%%%%%%

\relative {
  \ottava 0
  <df, df'>8-. <c c'>-. <f' af bf df>--\"j29"[ <b,, b'>-.]
  <c c'>( <bf bf'> <af af'> <g g'>)
}

<<
\new Voice <<
\voiceOne
\relative c' \smallNotes {
  \repeat unfold 3 { 
    | r16 \ottava 0 df c16 16 
      \onceNormalNote df c16 16 df 
      c16 16 df c16 
      \onceNormalNote 16 df c16 16 | 
  }
}
\relative f {
  \repeat unfold 3 { | s16 \repeat unfold 15 { f16 } | }
}
>>
\new Voice { 
  \voiceTwo
  \relative { 
    | \ottava -1 <f, f,>4 r4 r2 |
    | \ottava -1 <c c,>4 r4 r2 |
    | \ottava -1 <df df,>4 r4 r2 | 
  }
}
>> \oneVoice

\relative {
  | <df, df'>8-. <c c'>-. <bf bf'>-. <b b'>-. <c c'>( <bf bf'> <af af'> <g g'>) |
  | \ottava -1 <f f'>8[ r16 16] r4 r \acciaccatura { c''16 a g } <f, f'>8^^ r \ottava 0 |
}

} %end volta 2
} %end alternative
} %end repeat

\fine

} %end lower

\include "./assets/ly/lib/spontini/piano-template.ly"