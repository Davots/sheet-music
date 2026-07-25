\version "2.26.0"

\header {
  title = "Danos la Paz"
  composer = "Adapted by David Choéz"
}

\language "espanol"

\score {
  <<
    % Acordes
    \new ChordNames {
      \chordmode {
        \partial 8 s8 % skip
        dos2.:m |
        fas2.:m |
        la4. si4. |
        dos2.:m |
      }
    }

    % Melodía
    \new Staff \relative do' {
      \easyHeadsOn
      \clef "treble"
      \key dos \minor
      \time 6/8
      \partial 8 dos8 % Sin barra "|" al final de la anacrusa
      dos sols' fas sols4 mi8 |
      fas4. dos4. |
      mi4 mi8 res dos si |
      dos4. dos4. |
    }

    % Letra
    \addlyrics {
      Cor |
      de ro de Dios que | 
      qui tas |
      el pe ca do del |
      mun do
    }
  >>

  \layout {}
  \midi {}
}