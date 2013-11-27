%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%				Alternate Chords			%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

customJazzChordsmusic =  {
	%% TODO 
    
    %<c d>1-\markup { \normal-size-super "2" }
    %<c es>-\markup { "m" }
    %<c f>-\markup { \normal-size-super "sus4" }
    <c g>-\markup { \small \raise #0.10 "5" }
	%<c es f>-\markup { "m" }-\markup { \normal-size-super "sus4" }
	%<c d es>-\markup { "m" }-\markup { \normal-size-super "sus2" }
	
	%%Suspensions%%

	%%Triads%%
	<c ef g>1-\markup {
		\sans { \huge "-" }
		}
	<c ef gf>-\markup {
		\sans { \raise #0.75 \tiny "o" }
		}
	<c e gs>-\markup {
		\sans { \raise #0.25 \teeny "+" }
		}
	%%Triad-Add%%
	<c e g a>1-\markup {
		\sans { \small \raise #0.10 "6"}
		}
	<c ef g a>1-\markup {
		\sans { \huge "-" \small \raise #0.10 "6"}
		}
	%%Sevenths%%
	<c e g b>-\markup { 
		\sans {
			\tiny { "maj" \raise #0.25 "7" }
			}
		}
	<c e g bf>-\markup {
		\sans { \tiny \lower #0.25 "7" }
		}
	<c ef g b>-\markup {
		\sans {
			\huge "-" \tiny { "maj" \raise #0.25 "7" }
			}
		}
	<c ef g bf>-\markup {
		\sans { \huge "-" \tiny "7"}
		}
	<c ef gf bff>-\markup {
		\sans { \raise #0.75 \tiny "o" \tiny "7" }
		}
	%%Sevenths-Modified%%
	<c ef gf bf>-\markup {
		\sans {
			\huge "-" \tiny "7" \tiny \raise #0.5 { "(" \raise #0.6 \teeny \flat \teeny "5" ")" }
			}
		}
	<c ef gf b>-\markup {
		\sans {
			\raise #0.75 \tiny "o" \tiny { "maj" \raise #0.25 "7" }
			}
		}
	<c e gs b>-\markup {
		\sans {
			\raise #0.25 \teeny "+" \tiny { "maj" \raise #0.25 "7"}
			}
		}
	<c e gs bf>-\markup {
		\sans {
			\raise #0.25 \teeny "+" \raise #0.10 \tiny "7"
			}
		}
	%%Ninths%%
	<c e g bf df'>-\markup {
		\sans {
			\tiny \lower #0.25 "7"
			} 
		\tiny \raise #0.5 { "(" \raise #0.6 \teeny \flat \teeny "9" ")"}
		}
	<c e g bf d'>-\markup {
		\sans {
			\tiny \lower #0.25 "7"
			}
		\tiny \raise #0.5 { "(" \teeny "9" ")"}
		}
	<c ef g bf d'>-\markup {
		\sans { \huge "-" }
		\small "9"
		}
	<c e gs bf df'>-\markup {
		\raise #0.25 \teeny "+" \raise #0.10 \tiny "7"
		\tiny \raise #0.5 {	"(" \raise #0.6 \teeny \flat "9)" }
		}
	<c e gs bf ds'>-\markup {
		\sans { \tiny \lower #0.25 "7"}
		\tiny \raise #0.5 {	"(" \raise #0.6 \teeny \sharp "5," \raise #0.6 \teeny \sharp "9)" }
		}
	%%Elevenths%%
	<c e g b d fs'>-\markup {
		\sans \tiny { "maj" \raise #0.25 "7"}
		\tiny \raise #0.5 {	"(" \teeny "9," \raise #0.6 \teeny \sharp "11)" }
		}
	%%Thirteenths%%
}

customJazzChords = #(append
	(sequential-music-to-chord-exceptions customJazzChordsmusic #t)
	ignatzekExceptions)


chordDefaults = {
	\set chordChanges = ##t
	\set chordNameSeparator = \markup { \huge \lower #0.25 "/" }
	\override ChordName #'font-size = #1.0
	\override ChordName #'word-space = #0
	\override ChordName #'extra-spacing-width = #'(0 . 0)
	\set chordNameExceptions = #customJazzChords
	}
