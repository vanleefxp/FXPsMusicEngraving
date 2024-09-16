\version "2.24.4"
\language "english"

\include "./assets/ly/lib/spontini/jssvg.ly"
\include "./assets/ly/lib/spontini/misc.ly"
\include "./assets/ly/lib/spontini/oso-padding.ly"
\include "./assets/ly/lib/spontini/tabular-functions.ly"
\include "./assets/ly/lib/utils.ily"
\include "./assets/ly/template/henle.ily"

\header {
  title = "Morceau de lecture à vue"
  subtitle = "pour les examens de piano de l’École normale de musique"
  composer = "Olivier Messian"
  tagline = ##f
  additional = \markup { \vspace #2 }
}

upper = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
\accidentalStyle Score.piano
\key cs \minor
\time 6/8
\clef "treble"

\tempo "Lent."

\relative {
  | gs'8^(^\exprMark"expressif." fs cs cs' gs4) | gs8^( fs cs cs' gs4) |
  | <fs cs>8^( <e c> <fs e as,>~ 8 <gs fs ds bs gs>4\< |
  | <a fs e c a>4.\!\sf <gs fs ds bs gs>)\p |
  | <cs a fs ds>8^(\mf <ds a fs cs> <cs a fs ds> <ds as fss cs> <cs as fss ds>4) |
  | <e a, fs e>8^( <ds a fs ds> <cs a fs cs> <d as fss cs> <cs as fss ds>4) |
  | <a' ef bf>8^( <g cs, a> <ef bf g> <cs a e> <c a ef> <as fs cs> |
  | <as fs>8 <gs e> <as fs>~ 8 <gs e> <as fs>~ | 8 <gs e>4~\exprMark"dim." 4.) |
  
  | gs8^(\mf fs cs cs' gs4) | gs8^( fs cs cs' gs4) |
  | <fs cs>8^( <e c> <fs e as,>~ 8 <gs fs ds bs gs>4\< |
  | <a fs e c a>4.\! <gs fs ds bs gs>) |
  | <b g e cs>8( <cs g e b> <b g e cs> <cs gs es b> <b gs es cs>4) |
  | <d g, e c>8( <cs g e cs> <b g e b> <cs gs es b> <b gs es cs>4) |
  | <g' df af>8( <f b, g> <df af f> <b g ds> <bf f df> <gs e b> |
  | <g d bf>8 <f df af> <e b g>8~ 8 <d bf g>4 |
  | <cs b gs>4. \clef "bass" <d b a f d>~\sf\> | 4 <cs b gs es cs>8~\!\p 4.~ | 2.)\fermata |
}

\fine

} %end upper

lower = {
\key cs \minor
\time 6/8
\clef "bass"

\relative {
  | <ds' c a>4._\pp <e d b gs> | <ds c a>4. <e d b gs> |
  | <as, e>8 <as f d> <fs c>~ 8 <ds gs,>4 | <a d,>4. << { <ds gs,>4. } \\ { r8 ds, gs, } >> |
}

\relative {
  | <a cs, fs,>4. <fss as, ds,> | <a cs, fs,>4. <fss as, ds,> |
  | \clef "treble" g'8 e df \clef "bass" as4. |
  | <d c>2. | << { d2. } \\ { b4. as } >> |
}

\relative {
  | <ds' c a>4._\pp <e d b gs> | <ds c a>4. <e d b gs> |
  | <as, e>8 <as f d> <fs c>~ 8 <ds gs,>4 | <a d,>4. << { <ds gs,>4. } \\ { r8 ds, gs, } >> |
}

\relative {
  | <g b, e,>4. <es gs, cs,> | <g b, e,>4. <es gs, cs,> |
}

\relative {
  | \clef "treble" f'8 d bf \clef "bass" gs4. |
  | b,4 d8~ 8 e4 | << { es4. } \\ { r8 gs, cs, } >> << { \tieNeutral <d g,>4.~ | 4 <gs cs,>8~ 4.~ | 2. | } \\ { s4. | s2. | gs,4.^\fermata \ottava -1 cs,^\fermata \ottava 0 | } >>
}

\fine

} %end lower

\include "./assets/ly/lib/spontini/piano-template.ly"