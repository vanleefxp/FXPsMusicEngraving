\include "titling-init.ly"

%#(ly:font-config-add-directory "./fonts")
%#(ly:font-config-display-fonts)

\header {
  tagline = ##f
}

exprMark = #(define-music-function 
  (parser location content) 
  (markup?) 
  #{ 
    -\markup { 
      \override #'(font-name . "Century Expanded LT Italic")
      { \magnify #0.8 \italic { #content } } 
    } 
  #})

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
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \vspace #0.75
        \fill-line {
          \magnify #2.5
          \override #'(font-name . "Bodoni")
          \override #'(font-features . ("titl"))
          { \fromproperty #'header:title }
        }
        \vspace #0.2
        \fill-line {
          \magnify #1.1
          { \fromproperty #'header:subtitle }
        }
        \vspace #-0.2
        \fill-line {
          \magnify #0.9
          { \fromproperty #'header:subsubtitle }
        }
        \fill-line {
          \fromproperty #'header:poet
          { \large \bold \fromproperty #'header:instrument }
          { \fromproperty #'header:composer }
        }
        \fill-line {
          \fromproperty #'header:meter
          \fromproperty #'header:arranger
        }
        \fromproperty #'header:additional
        \vspace #0.5
      }
    }
  }
}

\layout {
  ragged-last = ##t
  \override Score.BarNumber.font-name = #"Henle Measure Number"
  \override Score.MetronomeMark.font-name = #"Stecher-Medium"
  
  \override Score.BarNumber.font-size = #-3.5
  %\override Score.MetronomeMark.font-size = #-1
  
  % Thickness Adjust
  \override Score.StaffSymbol.thickness = #0.85
  \override Score.StaffSymbol.ledger-line-thickness = #'(0.75 . 0.1)
  \override Score.Stem.thickness = #1
  \override Score.BarLine.hair-thickness = #1.25
  \override Score.BarLine.thick-thickness = #4.5
  
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
  \override Score.BarLine.font-size = #-2.5
  
  %\override Score.TimeSignature.whiteout = ##t
  %\override Score.KeySignature.whiteout = ##t
  \override Score.TextSpanner.outside-staff-padding = #1
  \override Score.OttavaBracket.outside-staff-padding = #0.7
  \override Score.DynamicLineSpanner.outside-staff-padding = #0.8
  \override Score.KeyCancellation.font-size = #-2
  \override Score.BarLine.kern = #2.5
  
  \context {
    \Score
    barNumberVisibility = #first-bar-number-invisible-save-broken-bars
  }
  %\override Score.BarNumber.stencil = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
}

\paper {
  #(define fonts
    (set-global-fonts
     #:music "sebastiano"
     #:brace "sebastiano"
     #:roman "Bodoni LT Pro, Old Standard TT, FZShuSong-Z01"
     #:sans "Ysabeau Office, LXGW Wenkai GB, LXGW Wenkai"
     #:typewriter "Cascadia Code, Consolas, Courier New, LXGW Wenkai Mono GB, LXGW Wenkai Mono"
    )) % , gonville, emmentaler
  top-margin = 15.20\mm
  bottom-margin = 15.20\mm
  system-system-spacing.basic-distance = #20
}