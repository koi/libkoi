% copyright.ily: Tagline boilerplate with various copyrights.
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
%%%%%                             Include                                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "../../../info.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%               Attribution-Share Alike 4.0 International             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ccBySa = \markup {
    \override #'(box-padding . 0.5)
    \override #'(baseline-skip . 1.0) 
    \box \center-column {
        \small \line { 
            Typeset using \with-url #"http://www.LilyPond.org"
            \line {
                \teeny " www." LilyPond \teeny ".org" \hspace #0.5
                }
            • \hspace #0.5 Compiled: \timeStamp
            • \hspace #0.5 Reference: \catalog 
            } 
        \small \line {
            Copyright © \year by \owner \hspace #0.5 • \hspace #0.5 This work is free to download, distribute, modify and perform.
            }
        \line {
            \teeny \line {
                Licensed under the Creative Commons Attribution-ShareAlike 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/4.0" http://creativecommons.org/licenses/by-sa/4.0
                }
            }
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%           Attribution-No Derivative Works 4.0 International         %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ccByNd = \markup {
    \override #'(box-padding . 0.5)
    \override #'(baseline-skip . 1.0) 
    \box \center-column {
        \small \line { 
            Typeset using \with-url #"http://www.LilyPond.org"
            \line {
                \teeny " www." LilyPond \teeny ".org" \hspace #0.5
                }
            • \hspace #0.5 Compiled: \timeStamp
            • \hspace #0.5 Reference: \catalog 
            }
        \small \line {
            Copyright © \year by \owner \hspace #0.5 • \hspace #0.5 This work is free to download, distribute, and perform.
            }
        \line {
            \teeny \line {
                Licensed under the Creative Commons Attribution-No Derivative Works 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-nd/4.0" http://creativecommons.org/licenses/by-nd/4.0
                }
            }
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%    Attribution-Noncommercial-No Derivative Works 4.0 International  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ccByNcNd = \markup {
    \override #'(box-padding . 0.5)
    \override #'(baseline-skip . 1.0) 
    \box \center-column {
        \small \line { 
            Typeset using \with-url #"http://www.LilyPond.org"
            \line {
                \teeny " www." LilyPond \teeny ".org" \hspace #0.5
                }
            • \hspace #0.5 Compiled: \timeStamp
            • \hspace #0.5 Reference: \catalog 
            }
        \small \line {
            Copyright © \year by \owner \hspace #0.5 • \hspace #0.5 This work is free to download and distribute.
            }
        \line {
            \fontsize #-3.9 \line {
                Licensed under the Creative Commons Attribution-Noncommercial-No Derivative Works 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-nc-nd/4.0" http://creativecommons.org/licenses/by-nc-nd/4.0
                }
            }
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                         All Rights Reserved                         %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cAll = \markup {
    \override #'(box-padding . 0.5)
    \override #'(baseline-skip . 1.0) 
    \box \center-column {
        \small \line { 
            Typeset using \with-url #"http://www.LilyPond.org"
            \line {
                \teeny " www." LilyPond \teeny ".org" \hspace #0.5
                }
            • \hspace #0.5 Compiled: \timeStamp
            • \hspace #0.5 Reference: \catalog 
            }
        \small \line {
            Copyright © \year by \owner \hspace #0.5 • \hspace #0.5 Used by permission. All rights reserved.
            }
        }
    }
