% definitions.ily: custom Lilypond modifications and functions

% Copyright (C) 2015, Brian Clements

% This program is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.

% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.

% You should have received a copy of the GNU General Public License along with
% this program.  If not, see <http://www.gnu.org/licenses/>.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Defaults                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sane defaults for variables that get set or changed outside of this file and
% that might break things when empty.

% Part/Score page/line breaks
partLineBreak = { \break }
partPageBreak = { \pageBreak }
scorePageBreak = { }

%%%%%                      Common Custom Formatting                       %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

timeStamp = #(strftime "%Y.%m.%d-%H:%M" (localtime (current-time)))

slashOn = {
    \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest #'thickness = #'0.48
    \override Rest #'slope = #'1.7
    }

slashOff = {
    \revert Rest #'stencil
    \revert Rest #'thickness
    \revert Rest #'slope
    }

slashHeadOn = {
    \override NoteHead #'style = #'slash
    \override NoteHead #'font-size = #-3
    \set Staff.midiMaximumVolume = #0
    }

slashHeadOff = {
    \revert NoteHead #'style
    \revert NoteHead #'font-size
    \set Staff.midiMaximumVolume = #5
    }

dynamicsOn = {
    \override Score.DynamicText #'transparent = ##f
    }

dynamicsOff = {
    \override Score.DynamicText #'transparent = ##t
    }

crossHeadOn = {
    \override NoteHead #'style = #'cross
    }

crossHeadOff = {
    \revert NoteHead #'style
    }

rh = {
    \change Staff = rightHand
    }

lh = {
    \change Staff = leftHand
    }

% extendLV = #(define-music-function (parser location further) (number?) #{
    % \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
    % \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/ $further -2)
    % \once \override LaissezVibrerTie  #'extra-offset = #(cons (/ $further 2) 0)
    % #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                          Helper Functions                           %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A function to print rhythmic (improvisation) slashes of arg1 duration, at
% arg2 slashes per bar, times arg3 bars. This ends up looking like the time
% signature plus a multiplier (i.e. `\adlib 4 4 2` equals 2 measures of 4/4, 
% and `\adlib 6 8 4` is 4 measures of 6/8).
adlib = 
    #(define-music-function
        (parser location time pulse bars)
        (number? ly:duration? number?)
            #{
                \slashOn
                \repeat unfold $bars {
                    \repeat unfold $time { r$pulse }
                    }
                \slashOff
            #}
        )

% Function to print a subscript "fine" that takes a number argument for \halign
% to shift it left (positive numbers) or right (negative numbers).
fine = 
    #(define-music-function
        (parser location shift)
        (number?)
            #{
                s1*0-\markup { \halign #shift \small \bold \italic "Fine" }
            #}
        )

