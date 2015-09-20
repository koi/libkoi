% definitions.ily: custom Lilypond snippets and markup modifications

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

adlib = \relative c {
    \slashOn r4 r4 r4 r4 \slashOff
    }

fine = {
    \once \override Score.RehearsalMark #'extra-offset = #'(-2.75 . -8)
    s1*0 \mark \markup { \small \italic "Fine" }
    }

partLineBreak = { \break }

partPageBreak = { \pageBreak }

scorePageBreak = { }
