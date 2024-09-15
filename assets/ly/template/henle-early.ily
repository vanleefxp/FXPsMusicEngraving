\include "titling-init.ly"

%#(ly:font-config-add-directory "./fonts")
%#(ly:font-config-display-fonts)

startGraceMusic = {
  \override Voice.NoteHead.font-size = -5.5
  \override Voice.Rest.font-size = -5.5
  \override Voice.Accidental.font-size = -5.5
  \override Voice.Beam.beam-thickness = 0.25
  \override Voice.Beam.length-fraction = 0.55
  \override Voice.Stem.length-fraction = 0.75
  \override Voice.Flag.font-size = -5.5
}

stopGraceMusic = {
  \revert Voice.NoteHead.font-size
  \revert Voice.Rest.font-size
  \revert Voice.Accidental.font-size
  \revert Voice.Beam.beam-thickness
  \revert Voice.Beam.length-fraction
  \revert Voice.Stem.length-fraction
  \revert Voice.Flag.font-size
}

startAppoggiaturaMusic =
{
  <>\startGraceSlur
  \startGraceMusic
}

stopAppoggiaturaMusic =  {
  \stopGraceMusic
  <>\stopGraceSlur
}

startSlashedGraceMusic =  {
  \temporary \override Flag.stroke-style = "grace"
  \startGraceMusic
}

stopSlashedGraceMusic =  {
  \revert Flag.stroke-style
  \stopGraceMusic
}

startAcciaccaturaMusic =  {
  <>\startGraceSlur
  \startSlashedGraceMusic
}

stopAcciaccaturaMusic =  {
    \stopSlashedGraceMusic
    <>\stopGraceSlur
}

\paper {
  oddHeaderMarkup = \markup
  \fill-line {
    ""
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    \if \should-print-page-number \override #'(font-name . "Henle Page Number") { 
      \fromproperty #'page:page-number-string 
    }
  }
  
  evenHeaderMarkup = \markup
  \fill-line {
    \if \should-print-page-number \override #'(font-name . "Henle Page Number") { 
      \fromproperty #'page:page-number-string 
    }
    \unless \on-first-page-of-part \fromproperty #'header:instrument
    ""
  }
  
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \override #'(baseline-skip . 3.5)
      \column {
        \vspace #0.75
        \fill-line {
          \magnify #2.5
          \override #'(font-name . "Libre Bodoni, Old Standard TT, FZShuSong-Z01")
          \override #'(font-features . ("titl"))
          {
            \fromproperty #'header:title
          }
        }
        \vspace #0.75
        \fill-line {
          \magnify #1.35
          \fromproperty #'header:subtitle
        }
        \fill-line {
          \fromproperty #'header:subsubtitle
        }
        \vspace #2.5
      }
    }
  }
}

\layout {
  ragged-last = ##t
  \override Score.BarNumber.font-name = #"Henle Measure Number"
  \override Score.BarNumber.font-size = #-3.5
  %\override Score.MetronomeMark.font-size = #-1
  \override Score.Stem.thickness = #1.35
  \override Score.StaffSymbol.thickness = #0.7
  \override Staff.VerticalAxisGroup.staff-staff-spacing =
  #'((basic-distance . 9)
  (minimum-distance . 10)
  (maximum-distance . 9)
  (padding . -9)
  (stretchability . 0))
  \override Score.StaffSymbol.staff-space = #0.85
  \override Score.Script.font-size = #-2
  \override Score.DynamicText.font-size = #-1
  \override Score.Accidental.font-size = #-2
  \override Score.KeySignature.font-size = #-2
  \override Score.NoteHead.font-size = #-1.8
  \override Score.Flag.font-size = #-2
  \override Score.Rest.font-size = #-1
  \override Score.Clef.font-size = #-1.3
  \override Score.Dots.font-size = #-2
  \override Score.TimeSignature.font-size = #-1.3
  %\override Score.TimeSignature.whiteout = ##t
  %\override Score.KeySignature.whiteout = ##t
  \override Score.TextSpanner.outside-staff-padding = #1
  \override Score.OttavaBracket.outside-staff-padding = #0.7
  \override Score.DynamicLineSpanner.outside-staff-padding = #0.8
  \override Score.KeyCancellation.font-size = #-2
  \override Score.BarLine.hair-thickness = #1.25
  \context {
    \Score
    barNumberVisibility = #first-bar-number-invisible-save-broken-bars
  }
  %\override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
}

\paper {
  #(define fonts
    (set-global-fonts
     #:music "beethoven"
     #:brace "beethoven"
     #:roman "Old Standard TT, FZShuSong-Z01"
     #:sans "Ysabeau Office, LXGW Wenkai GB, LXGW Wenkai"
     #:typewriter "Cascadia Code, Consolas, Courier New, LXGW Wenkai Mono GB, LXGW Wenkai Mono"
    )) % , gonville, emmentaler
  top-margin = 15.20\mm
  bottom-margin = 15.20\mm
  system-system-spacing.basic-distance = #20
}