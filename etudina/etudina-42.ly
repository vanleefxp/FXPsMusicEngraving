\version "2.24.4"
\language "english"

\include "../assets/ly/lib/spontini/jssvg.ly"
\include "../assets/ly/lib/spontini/misc.ly"
\include "../assets/ly/lib/spontini/oso-padding.ly"
\include "../assets/ly/lib/spontini/tabular-functions.ly"
\include "../assets/ly/lib/utils.ily"

\include "../assets/ly/template/henle.ily"

#(define showEditorStuff "false")

%-----------------%
% START __JSSVG__ %
%-----------------%

"j6" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsShape "11" "cpts" #'((-0.069 . -0.915) (0 . 0) (-0.117 . 0.759) (0.088 . -0.403)) $sym $mus 
#})

"j5" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsShape "10" "cpts" #'((-0.034 . -0.871) (-0.121 . 0.185) (0.014 . 0.351) (0.026 . -0.743)) $sym $mus 
#})

"j4" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsShape "9" "cpts" #'((-0.088 . 0.008) (-0.006 . 0.919) (-0.182 . 0.947) (-0.085 . -0.204)) $sym $mus 
#})

"j3" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "4" "positions" #'(-0.934 . 0.767) $sym $mus 
#})

"j2" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "3" "positions" #'(-0.601 . 0.934) $sym $mus 
#})

"j1" = #(define-music-function (parser location sym mus) ((symbol-list? '()) ly:music?) #{
\jsOnceOffset "2" "positions" #'(-0.693 . 1.566) $sym $mus 
#})

%-----------------%
% END __JSSVG__   %
%-----------------%

\header {
  title = "Etudina"
  subtitle = \markup { 
    "No.42 in " \super { \flat }"B Major" 
    \italic { "Gao Tang Bao" } "or" \italic { "8-bit Style" } 
  }
  subsubtitle = "Komponiert 2024"
  composer = "F. X. P."
  tagline = ##f
}

upper = {

\time 4/4
\key bf \major
\clef "bass"
\tempo \markup { \rhythm { c4 } = 108 }

\new Voice <<
\relative { | d'8-. 8-. bf4-- }
\relative { | f8 8 d4 }
>>
<<
\relative { c'16( d c d bf4)-- | }
\\ \relative { ef4 d | }
>>

\bar "||"

\clef "treble"
\tempo \markup { "A punto" \rhythm { c4 } = 128 }

<<
\relative {
  | d''8 d bf8. c16~ 16 d( c d f8) ef | d8 8 bf8. c16~ 16 d( c a f4) |
  | d'8 d bf8. c16~ 16 d( c d f8) ef |
}
\\ {
  \easyCrossStaff
    \relative c' { 
      | s16 d f d] s d f d] s c f ef] s ef a f] | 
      | s16 d f d] s d f d] s c f ef] s c ef c] | 
      | s16 d f d] s d f d] s c f ef] s ef a f] | 
    }
    \relative c' { 
      | bf16\"j1" [ s s s bf\"j1"[ s s s a\"j2" [ s s s c\"j3" [ s s s |
      | bf16\"j1"[ s s s bf\"j1"[ s s s a\"j2"[ s s s a\jsOnceOffset "5" "positions" #'(-1.067 . 0.903) [ s s s |
      | bf16\"j1"[ s s s bf\"j1"[ s s s a\"j2"[ s s s c\"j3"[ s s s |
    }
    #'(
      | C - - - - - - - - - - - - - - - |
      | C - - - - - - - - - - - - - - - |
      | C - - - - - - - - - - - - - - - |
    )
}
\\ {
  \easyCrossStaff
    \smallNotes \relative {
      | s8 f'' s8 8 s8 8 s8 8 | s8 8 s8 8 s8 8 s8 8 |
      | s8 8 s8 8 s8 8 s8 8 |
    }
    \relative { 
      | d8_.[ s] d_.[ s] ef_.[ s] ef_.[ s] | <cs d>_._>[ s] d_.[ s] ef_.[ s] ef_.[ s] | 
      | d8_.[ s] d_.[ s] ef_.[ s] ef_.[ s] |
    }
    #'(| D - - - - - - - | - - - - - - - - | - - - - - - - - |)
}
>>
\new Voice <<
\relative { | d''8-.[ r16 bf-.] r a-.[ r c-.] bf4 r8 r16 }
\relative { | f'8 s16 ef s c s ef d4 }
>>

\relative {
  b'16( |\bar "||" c) b( c d c a f ef) d( f bf cs d) cs d-. d-. |
  | ef( d ef f e c a gf) f( a c e f-.) f-. f-. fs-. |
  | g( fs g af g e df cf) bf( d f a bf g ef c) |
}
\new Voice <<
\relative { | d''8-.[ r16 bf-.] r a-.[ r c-.] bf4 }
\relative { | e'8 s16 ef s16 16 s16 16 d4 }
>>

\new Voice <<
\relative {
  \ottava 1 f'''4 |
  | d'8 d bf8. c16~ 16 d( c d f8) ef | d8 8 bf8. c16~ 16 d( c a f4) |
  | \acciaccatura { cs'8 } d8 d bf8. c16~ 16 d( c d f8) ef |
  | d8[ r16 bf] r a[ r c] bf4 \ottava 0
}
\relative {
  \ottava 1 a''4 |\bar "||"
  | bf'8 bf d,8. a'16~ 16 s8. d8 c | bf8 bf d,8. a'16~ 16 s8. ef4 |
  | \grace { s8 } bf'8 bf d,8. a'16~ 16 s8. d8 c |
  | f,8 s16 e s ef s8 d4 
}
>>

<< \relative { <ef'' f,>4 } \\ \relative { c''8 cs } >>
\bar "||"
\tempo "Meno mosso" 4 = 108
\new Voice << \relative { d''8-. 8-. bf-. r16 } \relative { f'8 8 d s16 } >>
<<
\relative { c''16~\accent 16 d( c d bf4)--\fermata } \\
\relative { ef'16~ 4 d }
>>

\fine

} %end upper

lower = {

\time 4/4
\key bf \major
\clef "bass"
\tempo 4 = 108

\relative { | bf,8-. 8-. 4-- a bf-- | }

\bar "||"

| s1*3 |

\relative {
  f8[ r16 fs] r g[ r a] bf4( f) | 
}

<<
\new Voice << \voiceOne
\relative { 
  | c8^.[ s] c^.[ s] bf^.[ s] bf^.[ s] | g^.\jsOnceOffset "15" "positions" #'(0.5 . -0.5) [ s] c^.\jsOnceOffset "12" "positions" #'(0.651 . -0.899) [ s] a^.\jsOnceOffset "14" "positions" #'(0.5 . -0.5) [ s] a^.\jsOnceOffset "13" "positions" #'(0.2 . -0.65) [ s] |
  | cf^.\jsOnceOffset "7" "positions" #'(0 . -0.605) [ s] cf^.\jsOnceOffset "1" "positions" #'(0 . -0.956) [ s] d^.\jsOnceOffset "6" "positions" #'(0 . -0.739) [ s] cs^.[ s] | 
}
\relative { 
  | s8 a s a 
    s \smallNotes { d } s \smallNotes { d } |
  | s8 \smallNotes { ef } s \smallNotes { ef } 
    s \smallNotes { e } s \smallNotes { fs } |
  | s8 \smallNotes { f } s \smallNotes { e } 
    s \smallNotes { f } s \smallNotes { g } |
}
>>
\\ \new Voice << \voiceTwo
\relative {
  | ef16 s8. f16 s8. d16 s8. e16 s8. |
  | ef16 s8. f16 s8. d16 s8. f16 s8. |
  | f16 s8. d16 s8. f16 s8. e16 s8. |
}
\relative c' {
  | s16 c a c s c a c s bf f bf s bf f bf |
  | s16 c a c s c a c s c g c s c a c |
  | s16 cf af cf s df a df s d bf d s cs bf ef |
}
>>
>> \oneVoice

\relative c' { | g8-.[ r16 gs-.] r a-.[ r ef-.] f4 }

\relative c'' { 
  \clef "treble"
  << { ef4 } \\ { c8 f, } >> |\bar "||"
  | <d' bf>16-.\"j4"( f bf f) d\"j5"( f bf f) c\"j6"( ef a f) ef( f a f) |
  | <d bf>16\"j4"(-. f bf f) d\"j5"( f bf f) ef( f a f) c\jsShape "8" "cpts" #'((0 . 0) (0.033 . 1.486) (-0.036 . 1.264) (0.208 . -0.827)) ( a' c  a) |
  | <d, bf>16\"j4"(-. f bf f) d\"j5"( f bf f) c\"j6"( ef a f) ef( f a f) |
}

\relative {
  | bf'8[ r16 fs] r g[ r a] <bf d,>4
}

\relative {
  \clef "bass" a |\bar "||" bf8-. 8-. 8-. r16 f~-> 4 bf,-- |
}

\fine

} %end lower

\include "../assets/ly/lib/spontini/piano-template.ly"