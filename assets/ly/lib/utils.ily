
BR = { \break } % break
SBR = { \allowBreak } % soft break

rBeam = #(define-music-function 
  (parser location n) 
  (integer?) 
  #{ \set stemRightBeamCount = #n #})

lBeam = #(define-music-function 
  (parser location n) 
  (integer?) 
  #{ \set stemLeftBeamCount = #n #})

exprMark = #(define-music-function 
  (parser location content) 
  (markup?) 
  #{ -\markup { \magnify #0.8 \roman \italic #content } #})

hShift = #(define-music-function
  (parser location distance)
  (number?)
  #{ \once \override NoteColumn.force-hshift = #distance #})

"32thBeam" = #(define-music-function 
  (parser location content)
  (ly:music?)
  #{
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \set beatStructure = 2,2,2,2
    #content
    \unset subdivideBeams
    \unset baseMoment
    \unset beatStructure
  #})

"32thSep" = #(define-music-function
 (parser location content)
 (ly:music?) 
 #{ \rBeam 1 #content \lBeam 1 #})

cadenzaEndMeasure = {
  \cadenzaOff
  \partial 1024 s1024
}

cadenzaMeasure = {
  \cadenzaEndMeasure
  \bar "!"
  \cadenzaOn
}

floatingGraceOn = {
  \override Voice.SpacingSpanner.strict-grace-spacing = ##t
}

floatingGraceOff = {
  \revert Voice.SpacingSpanner.strict-grace-spacing
}

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

smallNotes = #(define-music-function 
  (parser location mus) 
  (ly:music?)
  #{
     \override Voice.NoteHead.font-size = -4
     \override Voice.Rest.font-size = -4
     \override Voice.Accidental.font-size = -4
     \override Voice.Script.font-size = -4
     \override Voice.Flag.font-size = -4
     \override Voice.Beam.beam-thickness = 0.35
     \override Voice.Beam.length-fraction = 0.6299605249474366
     \override Voice.Stem.length-fraction = 0.8
     $mus
     \revert Voice.NoteHead.font-size
     \revert Voice.Rest.font-size
     \revert Voice.Accidental.font-size
     \revert Voice.Script.font-size
     \revert Voice.Flag.font-size
     \revert Voice.Beam.beam-thickness
     \revert Voice.Beam.length-fraction
     \revert Voice.Stem.length-fraction
  #})

onceNormalNote = #(define-music-function (parser location) ()
#{
  \once\revert Voice.NoteHead.font-size
  \once\revert Voice.Rest.font-size
  \once\revert Voice.Accidental.font-size
  \once\revert Voice.Script.font-size
#})

startGraceMusic = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
}

stopGraceMusic = {
  \revert NoteHead.font-size
  \revert Accidental.font-size
}

upperStaff = {
  \change Staff = "upper"
}

lowerStaff = {
  \change Staff = "lower"
}

makePercent =
#(define-music-function (note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))