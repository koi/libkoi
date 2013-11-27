%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%			Common Custom Formatting		%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                   Dependencies                  %%
%%		Lead Sheet				>=2.0.1            %%
%%		Big Band 				>=1.0.0            %%
%%		Big Band Part			>=1.0.0            %%
%%		Chamber Orchestra		>=2.1.0            %%
%%		Chamber Orchestra Part	>=1.3.0            %%
%%		Custom Multipart		>=1.2.0            %%
%%		Custom Multipart Part	>=1.1.0            %%
%%		Multi Movement Book		>=1.1.0            %%

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

extendLV = #(define-music-function (parser location further) (number?) #{
    \once \override LaissezVibrerTie  #'X-extent = #'(0 . 0)
    \once \override LaissezVibrerTie  #'details #'note-head-gap = #(/ $further -2)
    \once \override LaissezVibrerTie  #'extra-offset = #(cons (/ $further 2) 0)
	#})

adlib = \relative c { 
	\slashOn r4 r4 r4 r4 \slashOff
	}

fine = {
	\once \override Score.RehearsalMark #'extra-offset = #'(0 . -7.5)
	s1*0 \mark \markup { \small \italic "Fine" }
	}
