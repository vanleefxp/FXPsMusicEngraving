\version "2.24.4"
\language "english"

\include "./assets/ly/lib/spontini/jssvg.ly"
\include "./assets/ly/lib/spontini/misc.ly"
\include "./assets/ly/lib/spontini/oso-padding.ly"
\include "./assets/ly/lib/spontini/tabular-functions.ly"
\include "./assets/ly/lib/utils.ily"
\include "./assets/ly/template/henle.ily"

\header {
  title = "Prelude"
  subtitle = "№2 in B Major"
  subsubtitle = "Komponiert 2018"
  composer = "F. X. P."
}

upper = {
  
\time 4/4
\key b \major
\clef "treble"

\relative {
  | \repeat percent 4 { cs''16 b as b } | 
  | \repeat percent 2 { cs16 b as b } \SBR \repeat percent 2 { d b d b } |
  | \repeat percent 4 { cs16 b as b } | 
  | cs16 b as b d b d b \SBR cs <b gs> cs <b gs> cs as cs as |
  | \repeat percent 4 { gs16 cs b cs } |
  | << { as16^\markup { to \coda } cs ds cs fs, cs' ds cs \SBR gs cs ds cs as cs ds cs } \\ { as4 fs gs as } >> |
  |  << { fs'4 s2. } \\ { \repeat percent 4 { fs16 <cs as> <ds b> <cs as> } } >> |
  | << { fs'16 cs as ds cs cs, fs b \SBR as as, cs gs' fs fs, b gs } \\ { <fs'' fs,>4 <cs cs,> <as as,> <fs fs,>8 <b, b,>\noBeam } >> |
  | \repeat percent 4 { as16 fs b gs } |
  | fs16 b as cs, gs' fs \lowerStaff as, \upperStaff ds \SBR \lowerStaff \stemUp cs cs, fs b as as, cs gs' \upperStaff \stemNeutral |
}

\new Voice <<
\relative {
  | as16 s cs s \repeat percent 2 { d s cs s } b s d s |
  | fs,16 s cs' s \repeat percent 2 { d s cs s } b s d s |
}
\relative {
  \repeat unfold 2 { | s16 fs' s16 16 \repeat percent 2 { s16 16 s16 16 } s16 16 s16 16 | }
}
>>

\relative {
  | <fs'' fs'>4^^ \SBR r16 cs([\p ds \rBeam 1 es \lBeam 1 fs) cs( ds \rBeam 1 es \lBeam 1 fs) cs( ds es |
  | fs8)] r8 r16 a,([ b \rBeam 1 cs \lBeam 1 d) a( b \rBeam 1 cs \lBeam 1 d) a( b cs |
  | d8)] r8 r16 fs,([ gs \rBeam 1 as \lBeam 1 b) fs( gs \rBeam 1 as \lBeam 1 b) fs( gs as | 
  | b8-.)] fs-. gs-. as-. \SBR
}

\new Voice <<
\relative c'' { \repeat unfold 12 { s16 fs } | }
\relative { b'16 s cs s ds s cs s | ds s e s ds s cs s \SBR b s e s  cs s fs, s | }
>>

<<
\new Voice << \voiceOne
\relative c'' { 
  | \after 2 { \SBR } \repeat unfold 4 { s16 fs gs fs } |
  | s2 \SBR ds'^^ | s \SBR e^^ | ds4^^ cs^^ \SBR b^^ as^^ | gs2^^ \SBR <fs e cs>2^^ |
  | fss2 \SBR gs | \acciaccatura { as16 b cs b } \after 2 { \SBR } as1 |
  | b2 \SBR s2
}
\relative c'' { 
  | ds16 s8. cs16 s8. b16 s8. as16 s8. | 
  | b2 s | cs s | ds4 cs b as | gs2 fs2 |
  | s1 | s1 | b2 b,2 |
}
>>
\new Voice << \voiceTwo
\relative c'' { 
  | ds4 cs b as |
  | r16 fs' \repeat unfold 3 { gs fs } r16 fs gs fs e fs gs fs |
  | r16 fs gs fs e fs gs fs r16 fs \repeat unfold 3 { gs fs } |
  | \repeat unfold 4 { r16 fs gs fs } |
  | \repeat unfold 2 { r16 fs \repeat unfold 3 { gs fs } }  |
  | r16 ds cs ds as ds cs ds r ds b ds b ds b ds |
  | r16 ds cs ds \repeat percent 2 { cs ds  cs ds } s ds cs ds |
  | r16 fs gs fs ds e ds b f'16\rest \stemUp fs, \repeat unfold 3 { gs fs } \stemNeutral
}
\relative c'' {
  | s1 | s16 ds \repeat unfold 3 { e ds } s16 ds e ds cs ds e ds |
  | s16 ds e ds cs ds e ds s16 ds \repeat unfold 3 { e ds } |
  | \repeat unfold 4 { s16 ds e ds } |
  | \repeat unfold 2 { s16 ds \repeat unfold 3 { e ds } } |
  | s16 cs as cs fss, cs' as cs s b gs b ds, b' gs b | 
  | s16 fss as fss \repeat percent 2 { as fss as fss } ds fss as fss |
  | s16 ds' e ds b cs b gs s ds \repeat unfold 3 { e ds } |
}
>>
>> \oneVoice

\after 2 { \SBR }
\easyCrossStaff
  \relative c' { r16 ds[ e ds] \repeat percent 3 { e[ ds e ds] } }
  \relative c' { s16 <b fs> <b gs> <b fs> <b gs> <b fs> <b gs> <b fs> }
  #'(N U - - - - - -)

\bar "||"
\relative {
  | \repeat percent 4 { cs''16^\coda fs e fs } |
  | << { ds16 fs gs fs b, fs' gs fs \SBR cs fs gs fs ds fs gs fs } \\ { ds4 b cs ds } >> |
}

<<
\new Voice { \voiceOne 
\relative c''' { b4 s2. }
}
\new Voice << \voiceTwo 
\relative c''' { \repeat percent 4 { b16 fs gs fs } }
\relative c'' { \repeat percent 4 { s16 ds e ds } }
>>
>> \oneVoice

\new Voice <<
\relative c'' { | r16_\exprMark"rit." ds e ds b cs b g fs g fs cs ds e ds \lowerStaff b | fs1^^ | }
\relative c'' { | s16 b cs b \repeat unfold 2 { ds, e ds b } b cs b g | ds1 | }
>>

\fine

} %end upper

lower = {
  
\time 4/4
\key b \major
\clef "treble"

\relative {
  | \repeat percent 4 { fs'16 fss gs fss } |
  | \repeat percent 2 { fs16 fss gs fss } \repeat percent 2 { e g e g } |
  | \repeat percent 4 { fs16 fss gs fss } |
  | fs16 fss gs fss d g d g cs, es cs es cs fss cs fss |
  | \repeat percent 4 { fs cs d cs } |
  | \clef "bass" << { fs, as b as ds, as' b as es as b as fs as bs as } \\ { fs4 ds es fs } >> |
}

<<
\new Voice << \voiceOne
\relative { 
  | \repeat percent 4 { fs,16 s s s } | 
  | fs16 s s s cs s s s as s s s fs s s s |
  | \repeat percent 4 { fs'16 s gs s } |
} 
\relative { 
  | \repeat percent 4 { s16 as fs as } | 
  | s16 cs fs fs, s fs b cs, s c fs gs, s fs b gs |
  | \repeat percent 4 { s16 fs' s es } |
}
>>
\new Voice { \voiceTwo 
\relative { 
  | fs,4 s2. | fs4 cs as fs8 b'\noBeam | fs8\noBeam gs s2. |
}
}
>> \oneVoice

\relative {
  | fs,16 \upperStaff ds'' \lowerStaff cs cs, b' as fs, as \stemDown cs, fs, fs' ds' cs fs,, es' cs \stemNeutral |
}

\new Voice <<
\relative { 
  \repeat unfold 2 { | s16 fs s16 16 \repeat percent 2 { s16 16 s16 16 } s16 16 s16 16 | }
}
\relative { 
  | fs,16 s as s \repeat percent 2 { b s as s } gs s cs, s |
  | fs,16 s as' s \repeat percent 2 { b s as s } gs s cs, s | 
}
>>

\relative { | <fs, fs,>4^^ s2. | s1*2 | s2 }

\new Voice <<
\relative {
  s16 b,16 s16 16 ds s e s | ds s cs s ds s e s ds s cs s e s fs s |
}
\relative {
  b,,16 s fs' s s \repeat unfold 9 { 16 s16 } 16 |
}
>>

<<
\new Voice << \voiceOne
{
  \relative c { 
    | \repeat unfold 4 { s16 ds e ds } | 
    | r16 ds' \repeat unfold 3 { e ds } \repeat unfold 2 { r ds e ds } |
  }
  \relative c { | \repeat unfold 2 { r16 fs \repeat unfold 3 { as fs } } | }
  \relative c' { 
    | \repeat unfold 4 { r16 ds e ds } | 
    | \repeat unfold 2 { r16 cs \repeat unfold 3 { e cs } } |
  }
}
{
  \relative c { 
    | b16 s8. as16 s8. gs16 s8. fs16 s8. | 
    | s16 b' \repeat unfold 3 { cs b } \repeat unfold 2 { r b cs b } |
  }
  \relative c { | \repeat unfold 2 { s16 e \repeat unfold 3 { fs e } } | }
  \relative c' { 
    | \repeat unfold 4 { s16 b cs b } | 
    | \repeat unfold 2 { r16 as \repeat unfold 3 { gs as } } |
  }
}
>>
\new Voice { \voiceTwo
\relative c { 
  | b4 as gs fs |
  | b,2 fs''4 e | cs,2 cs' | <b b,>4_^ <cs cs,>_^ <ds ds,>_^ <e e,>_^ | <fs fs,>2_^ cs_^ |
}
}
>> \oneVoice

\relative c {
  | \ottava -1 <as as,>2 <gs gs,> | \acciaccatura { cs,,8 } <as'' as,> 1 \ottava 0 |
}

<<
\new Voice << \voiceOne
\relative c' {
  | r16 ds e ds b cs b gs r16 b \repeat unfold 3 { cs b } |
}
\relative c' {
  | s16 b cs b gs as gs e s16 ds \repeat unfold 3 { e ds } |
}
>>
\new Voice { \voiceTwo
\relative c { | <b b,>2 2 | \after 2. { <>_"D.C. al coda" } \repeat percent 2 { <fs fs,>4 <gs gs,> } } |\bar"||"
}
>>

\relative c'' { | \clef "treble" \repeat percent 4 { b16 fs g fs } | }

<<
\new Voice << \voiceOne
\relative c' { \repeat unfold 4 { s16 ds e ds } }
\relative c' { | b16 s8. gs16 s8. as16 s8. b16 s8. | }
>>
\new Voice { \voiceTwo
\relative c' { | b4 gs as b | }
}
>>

\clef "bass"
<<
\relative c { b4 s2. }
\\ \relative c { \repeat percent 4 { b16 ds' b ds } }
>>

\relative c { | <b b,>1 | 1_^ | }

\fine

} %end lower

\include "./assets/ly/lib/spontini/piano-template.ly"