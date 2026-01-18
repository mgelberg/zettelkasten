---
status: active
---
#liveperformance #modular

## Overview
This is a drone set that I'll be doing to open for Keegan Tawa and DJ Chloe

## General Set Plan
1. Pre-set up
	1. Feedback low
	2. ridgewalk / weeping wall dry
	3. lossy fully wet
	4. maybe a drone on arbhar?
	5. Shifty starts in SR
	6. Cs80 muted
	7. bring pams in after 
	8. 
2. Phase 1 (20%)
	1. CM 1
	2. Finish out with lots of feedback, lots of drops
	3. bring in arbhar
3. Phase 2 (15%)
	1. CM2
	2. bring feedback down
	3. Bring in weeping wall (Knob 2)
	4. Really end on mostly drops
4. Phase (15%)
	1. CM7
	2. Bring in ridgewalk (knob3)
	3. Slowly bring in saturation and feedback
5. Phase 4 (20%)
	1. CM11
	2. If you like a arbhar, unplug capture
	3. Feel like I could sit in this one a while
6. Phase 5 (10%)
	1. CM8
	2. Get the pre-out started
	3. Slowly bring in cs80
7. Phase 6 (20%)
	1. Switch to CM5 before changing to final cs80 chords
	2. Switch back to SR eventually
	3. Bring in all weeping wall
	4. unplug morpha play
	5. then play outro?
		1. slowly bring in distortion knob 8
	6. After that, THEN Bring in drops
		1. open up filter on drops
		2. 
	7. Turn up feedback and distortion again not all the way
	8. Finish with drone, fade out morphas
	9. Bring done arbhar along with drops
	10. Bring down roar

## Performance Ideas
1. Play with tempo! Especially for the kind of call and response elements
2. Switch between shift register and voice dispersion
3. Bring in the droplets sporadically
4. Saturation for Control Mode 7
5. unplug morpha play input for finale

## Control Mode CCs
1. Echoboy Feedback
2. Weeping wall dry/wet
3. Ridge walk (morphas) dry/wet
4. Saturation
5. Lossy Dry/Wet
6. Morpha Volume
7. cs80 volume
8. Roar Dry/Wet

## BSP Sequences
1. main start
2. continuation of main start
3. low something
4. tbd
5. Triumphant end
	1. bring in 
6. connected with 5
7. nice sad transition
8. fifths
9. mix in with fifths
10. Happy fifth (before 5)
11. Sad, low chord
	1. Bring in the data bender sparingly
	2. 

## Notes on Transfer to TipTop Case
- Right now I'm using the CV 1U but can transfer that to the 4th veils spot
	- Consider the velocity out as an input to CV1 for PPW, since right now we need to find something for the level of the Stages out 4 envelope
	- Right now the two piston honda outs have two different envelopes from maths which is ok, but need to account for how both of those run into belgrad as a filter
- The envelope follower from morphagene is impacting the wave shape of the piston honda, but I can have a random jitter from PPW
- Quadratt is doing an offset on the instruo mod, and then an attenuated signal for the scales pitch in.
	- I could in theory get the offset from Stages, or even PPW
- The 1U buff row can be accounted for on the 2hp buff
- Probably good to include select 2
- Wyvern is nice but it does take up some space, do I really need to be modulating it in eurorack? I think Roar might suffice here
- Potential outputs
	- 1/2 - stereo out from the melody lines with panning and such, delay effects on laptop, roar and such modulated
	- 3 secondary melody line, other effects
	- 4 morphagene for sample playback
- 3x MIA should be performative, there are two empty slots to use right now
- *Set something to control the mix on Data Bender*
- Consider all tides outs? into Mix?
- *Send CV into x-pan pan ch 2*

## Morphagene Samples
1. Pen Clicks / Zips
2. Ice Crunch
3. Rustling Soft
4. Rustling Loud

## Patch Notes v1

- PPW Out 8 > Scales Pitch 1 In 
	- *make sure to set this to have the level impacted by the velocity input in PPW CV In 1*
- Scales Out A > Tides 1v/Oct
- Instruo Sine Out > Veils Ch 4 In
- Shifty
	- CV 2 Out > Piston A 1v/Oct
	- PPW 7 > Shifty Reset
	- BSP Seq 1 Pitch > Shifty CV In
	- BSP Seq 1 Gate > Shifty Gate In
	- Gate 1 Out > Stages Gate 4 In
	- Gate 2 Out > Maths Trig 1
	- Gate 3 Out > Maths Trig 2
	- CV 3 Out > Piston B 1v/Oct
	- CV 1 Out > Ts-L 1v/oct
- PPW 5 > Pip Slope Trig In
- PH A Out > Veils 1 In
- PH B Out > Veils 2 In
- Morpha Env Follower > PH Y In
- Maths 1 Out > Veis CV 1 In
- Maths 4 Out > Veils cV 2 in
- Pip Slope CV out > Ripples Gain In
- Tides 1 Out > Ripples In
- Stages Out4 > Veils In 3
- Stages Out 6 > Arbhar Capture
- Veils Out 1 > 3x Mia 2A
- Veils Out 2 > 3x Mia 2B
- 3x Mia 2 Out > Belgrad In
- Data Bender Out > 3x Mia 3A
- Buff A Out 1 > 3x Mia 3B
- 3x Mia 3 Out > X pan In 1A
- Belgrad Out > X pan In 1B
- Instruo Out > X pan In 2A
- PPW 1 > X pan 2 X-fade
- Veils Ch3 Out > Veilc Cv 4 In
- Buff B Out 2 > Veils CV 3 In
- Veils Ch 4. Out > Buff A In
- Ripples LP4 Out > Data Bender In
- Buff B Out 3 > PPW CV In
- Maths Ch 3 (offset) > Arbhar Mod In
- X-Pan outs > es-8 ch 1/2
- Morpha Out > es-8 ch 3
- Buff A Out 2 > Arbhar In
- BSP Seq 1 Velocity > Buff B in
- 
