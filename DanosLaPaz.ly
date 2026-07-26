\version "2.26.0"

\header {
  title = "Danos la Paz"
  composer = "Adapted by David Choéz"
}

\language "espanol"
#(set-global-staff-size 24)

% ========== Variables de Configuración =============
chordsconfig = {
  \override ChordName.font-series = #'bold
  \override ChordName.font-size = #-2
}
melodiaconfig = {
  \override NoteHead.font-size = #3
  \easyHeadsOn
  \clef "treble"
  \key dos \minor
}
lyricconfig = {
  \override LyricText.font-size = #-2
}

% ========== ESTROFA 1 (Con repetición) =============
acordesUno = \chordmode {
  \repeat volta 2 {
    \partial 8 s8 % skip 
    dos2.:m |
    fas2.:m |
    la4. si4. |
    dos2.:m |

    % Estrofa 1 - verso 2
    fas2.:m |
    mi |
    si |
    dos:m |
  }
}

melodiaUno = \relative do' {
  \repeat volta 2 {
    % Estrofa 1 - verso 1 
    \partial 8 dos8
    dos sols' fas sols4 mi8 |
    fas4. dos4. |
    mi4 mi8 res dos si |
    dos4. dos4. |

    % Estrofa 1 - verso 2
    fas4 sols8 la sols fas |
    sols4. mi4. |
    res4 mi8 fas mi res |
    dos4. dos4.
  }  
}

letraUno = \lyricmode {
  % Estrofa 1 - verso 1
  Cor |
  de ro de Dios que | 
  qui tas |
  el pe ca do del |
  mun do |

  % Estrofa 1 - verso 2
  Ten pie dad de no |
  so tros |
  Ten pie dad de no |
  so tros |
}

% ============= ESTROFA 2 ===========================
acordesDos = \chordmode {
  % Estrofa 2 - verso 1
  \partial 8 s8 % skip 
  dos2.:m |
  fas2.:m |
  la4. si4. |
  dos2.:m |

  % Estrofa 2 - verso 2
  dos2.:m |
  fas:m |
  si |
  mi |
}

melodiaDos = \relative do' {
  % Estrofa 2 - verso 1
  \partial 8 dos8
  dos sols' fas sols4 mi8 |
  fas4. dos4. |
  mi4 mi8 res dos si |
  dos4. dos4. |

  % Estrofa 2 - verso 2
  dos4. res4 mi8 | 
  fas2. |
  res4. mi4 fas8 |
  sols2. |
}

letraDos = \lyricmode {
  % Estrofa 2 - verso 1
  Cor |
  de ro de Dios que | 
  qui tas |
  el pe ca do del |
  mun do |

  % Estrofa 2 - verso 2
  Da nos la |
  paz |
  Da nos la |
  paz |
}

% ============ Estribillo ===========================
acordesEstribillo = \chordmode {
  % Estribillo - verso 1
  fas4.:m si |
  mi la |
  fas:m si |
  dos:m dos:7 |

  % Estribillo - verso 2
  fas4.:m si |
  mi la |
  fas:m mi |
  dos2.
}

melodiaEstribillo = \relative do' {
  % Estribillo - verso 1
  la'4. res, |
  sols dos, |
  fas si,4 dos8 |
  mi4. fa

  % Estribillo - verso 2
  la4. si |
  sols la |
  fas sols4 sols8 |
  sols2.
}

letraEstribillo = \lyricmode {
  % Estribillo - verso 1
  Da nos | Da nos | Da nos la | pa az

  % Estribillo - verso 2
  Da nos | Da nos | Da nos la | paz
}

% =========== Partitura (PDF) =======================
\score { 
  <<
    \new ChordNames {
      \chordsconfig
      { 
      \acordesUno 
      \acordesDos 
      \acordesEstribillo
      } 
    }
    \new Staff {
      \melodiaconfig
      \override Score.MetronomeMark.padding = #3
      \tempo 4. = 45
      \time 6/8
      { 
      \melodiaUno 
      \melodiaDos 
      \melodiaEstribillo
      } 
    }
    \addlyrics {
      \lyricconfig
      { 
      \letraUno 
      \letraDos 
      \letraEstribillo
      } % Letras seguidas en la misma línea
    }
  >>
  \layout {
    indent = 0\cm
    ragged-last = ##f
  }
}

% =========== Audio (MIDI) =========================
\score { 
  \unfoldRepeats {
    <<
      \new ChordNames {
        { 
        \acordesUno 
        \acordesDos
        \acordesEstribillo
         }
      }
      \new Staff {
        \time 6/8
        \tempo 4. = 45
        { 
        \melodiaUno 
        \melodiaDos 
        \melodiaEstribillo
        }
      }
    >>
  }
  \midi {}
}