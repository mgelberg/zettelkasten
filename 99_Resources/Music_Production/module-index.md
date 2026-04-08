# Module Quick-Reference Index

This file is a pre-compiled reference for every module in the rack. Read this before answering any question that touches module types, jack names, or routing — do not rely on general knowledge.

---

## Moog Mother-32 (Semi-Modular Synth)
- **Type:** Semi-modular synthesizer with VCO, VCF, VCA, EG, LFO, sequencer, and patchbay
- **Key sections:** VCO (saw/square, 1V/oct), VCF (ladder LP), VCA, EG (ADSR), LFO (tri/square), 32-step sequencer, VC Mix (voltage-controlled mixer/attenuator)
- **Patchbay outputs:** VCO SAW, VCO SQ, VCF, VCA, EG, LFO, MIDI, KB, SEQ, TRIG, TEMPO, MIX, VC MIX
- **Patchbay inputs:** VCO LIN FM, VCO EXP FM, VCF IN, VCF CUTOFF, VCA IN, VCA CV, EG GATE, TEMPO IN, MIX IN, VC MIX CV
- **NOT a standalone audio processor** — designed to be played as an instrument and integrated into modular via patchbay

---

## Ts-L (Instruō) — Analog VCO
- **Type:** Fully analog voltage-controlled oscillator
- **Outputs:** Square/Sub, Triangle, Sine (simultaneous); plus Wavefolder output and PWM waveshaper
- **Inputs:** 1V/Oct, Linear FM, Exponential FM, PWM CV, Wavefold CV, Sync
- **Modes:** Normal audio range; LFO Mode; Sub-square mode
- **Notable:** Triangle core, extremely consistent waveforms over wide range; soft sync / phase locking

---

## Plaits (Mutable Instruments) — Macro-Oscillator
- **Type:** Digital macro-oscillator, 16 synthesis models across 2 banks
- **Key inputs:** V/Oct, Trigger, Level (opens internal LPG), Timbre CV, FM CV, Morph CV, Harmonics CV
- **Outputs:** OUT (main), AUX (variant/sidekick signal — varies by model)
- **Bank 1 models (tonal):** Virtual-analog (classic waves), Waveshaper/Wavefolder, Two-op FM, Granular formants, Harmonic oscillator, Wavetable, Chords, Vowel/speech synthesis
- **Bank 2 models (noisy/percussive):** Granular cloud, Filtered noise, Particle noise, Inharmonic string, Modal resonator, Bass drum, Snare/hi-hat, Hi-hat
- **Controls:** FREQ, TIMBRE, MORPH, HARMONICS (function varies per model); attenuverters for Timbre/FM/Morph
- **Built-in decay envelope** triggered from Trigger input when CV inputs unpatched

---

## Piston Honda MkIII (Industrial Music Electronics) — Dual Wavetable Oscillator
- **Type:** Dual wavetable oscillator with three-axis morphing and nonlinear waveshapers
- **Outputs per oscillator:** Main output; Mix output (A+B mixed)
- **Inputs per oscillator:** 1V/Oct, Freq CV, FM/Ext In, Select CV, Sync; X/Y/Z CV inputs for wavetable morphing
- **Features:** MicroSD card for wavetable loading, OSC A/B Link (hard sync), two independent oscillators, preset/edit system
- **NOT a simple oscillator** — two full oscillators with 3-axis wavetable morphing

---

## Scales (Intellijel) — Dual Quantizer + Step Sequencer
- **Type:** 8HP dual-channel note quantizer and step sequencer
- **Inputs:** CV A In, CV B In, Trigger A, Trigger B, Clock
- **Outputs:** CV A Out, CV B Out, Trigger A Out, Trigger B Out
- **Modes:** Scale Display, LEARN (teach custom scales), CONFIG, plus Shift modes (PRE, DIATONIC, POST, OUT A, OUT B)
- **Features:** User-definable scales, triggered/untriggered quantization, two independent outputs from single input (for harmonic intervals), built-in step sequencer

---

## Shifty (Intellijel) — Poly CV Utility
- **Type:** Voice allocator / hocketing controller / analog shift register / sequential switch
- **Inputs:** CV In, Gate/Trig In, Reset
- **Outputs:** CV 1–4, Gate 1–4
- **Modes:** Voice Allocation (distribute V/oct + gate to 4 voices), Shift Register (pass CV down chain on trigger), Track & Hold / Sample & Hold, Manual/Sequential Switch, Continuous Tracking
- **NOT just a pitch shifter** — primarily a CV distribution and routing utility

---

## Tune (2hp) — Pitch Quantizer
- **Type:** Pitch quantizer, 11 scales
- **Inputs:** IN (0V–5V), Bias CV
- **Outputs:** Quantized pitch output; Scale indicator LEDs
- **Scales:** 11 total (chromatic through octatonic); Bias control for octave transposition and modal shifting

---

## Basimilus Iteritas Alter (Noise Engineering) — Drum Synthesizer
- **Type:** Parameterized digital drum synthesizer (6-oscillator additive + noise + infinifolder)
- **Inputs:** Pitch CV, Attack CV, Spread CV, Morph CV, Decay CV, Harm CV, Fold CV, Trig, S/L/M switch CV, B/A/T switch CV
- **Outputs:** Out (single audio output)
- **Modes:** Bass / Alto / Treble (B/A/T switch — pitch range); Skin / Liquid / Metal (S/L/M switch — waveform character)
- **Controls:** Pitch, Attack, Spread, Morph, Decay, Harm(onic), Fold
- **NOT a melodic oscillator** — designed for drum synthesis, though Pitch tracks V/Oct

---

## Kickall (Befaco) — Kick Drum Oscillator
- **Type:** Analog bass drum / kick drum module
- **Inputs:** Volume CV (0–10V, VCA control), Trig (threshold 3.5V), Tune (V/Oct pitch tracking)
- **Outputs:** Out (single audio output)
- **Controls:** Tune (pitch), Pitch Envelope (Time + Bend knobs), Decay (VCA envelope decay)
- **NOT a general-purpose oscillator** — specialized for kick/bass drum sounds, though V/Oct Tune tracks pitch

---

## Mix (2hp) — 4-Channel Mixer
- **Type:** 4-channel DC-coupled mixer, single summed output
- **Inputs:** In 1–4 (each ±10Vpp, audio or CV)
- **Outputs:** Single summed output
- **Controls:** Level 1–4 (attenuators only, not attenuverters — CCW = silent, CW = unity)
- **NOT a mult, NOT a VCA** — passive summing mixer with level controls; DC-coupled for CV use

---

## Pip Slope mkII (ALM Busy Circuits) — Envelope Generator
- **Type:** Compact envelope generator (AD and ASD envelopes) with looping
- **Inputs:** Gate (for ASD sustain), Trig (for AD), Attack CV, Decay CV
- **Outputs:** Envelope CV out; EOS (End of Slope trigger output)
- **Controls:** Attack, Decay (each ~1ms–7min), Shape (exponential/linear/logarithmic), Loop mode
- **Loop modes:** No loop, loop decrementing over time, loop decrementing in amplitude (bouncing ball/echo)
- **EOS output** fires trigger at end of decay — useful for clocking and burst effects

---

## Compare 2 (Joranalogue) — Dual Window Comparator
- **Type:** Dual window comparator with logic section
- **Inputs:** Signal A, Signal B (normalled from A); Shift CV A, Shift CV B; Size CV A, Size CV B
- **Outputs:** Gate HIGH (in window), Gate LOW (out of window) for each comparator; logic outputs (AND, OR, XOR, etc.)
- **Controls:** Shift (window center position), Size (window width) — knobs + CV for each
- **Use cases:** Complex rhythm generation from CV/audio, dual pulse shaper, gate extraction, voltage comparator

---

## Roti Pola (Noise Engineering) — Attenuverter/Mixer
- **Type:** 4-channel attenuverting CV mixer
- **Inputs:** CH1–CH4 (CH1 normalled to +5V offset when unpatched)
- **Outputs:** Single mixed output (one jack)
- **Controls:** 4 attenuverter knobs with LED feedback (green = positive, red = negative)
- **NOT a mult** — all four channels sum to ONE output; inserting a cable into CH1 removes the 5V normalling
- **Range:** ±10V

---

## Step Fader mkII (Tesseract Modular) — Dual Sequencer
- **Type:** Dual 8-step sequencer (or single 16-step), with built-in quantizer, slew limiter, and internal clock
- **Inputs:** CLK 1, CLK 2 (CLK1 normalled to CLK2), RESET 1, RESET 2, QIN 1/2 (quantizer inputs), SLW IN 1/2 (slew inputs), CV IN 1/2 (modulation)
- **Outputs:** CLK 1 out, G/T 1/2 (gate/trigger), VOCT 1/2 (quantized V/Oct), SLW 1/2 (slew output), CV 1+2 (sum output)
- **Features:** 16 presets, per-channel play mode/start/length/clock divider/transposition/duty, CV control of parameters

---

## A-148 (Doepfer) — Dual Sample & Hold
- **Type:** Dual sample & hold (S&H) / track & hold (T&H)
- **Inputs per channel:** Trig In, Sample In (±12V range)
- **Outputs per channel:** S&H Out
- **Modes:** S&H (samples on trigger rising edge) or T&H (tracks while gate high, holds on low) — selectable per channel via jumper
- **Classic use:** Random noise → S&H = random stepped CV; LFO → S&H = staircase patterns

---

## MultiMod (Make Noise) — DSP Modulation Multiplier
- **Type:** DSP-powered modulation mult / complex LFO generator (10HP)
- **Inputs:** Signal In (single CV input; if unpatched, generates internal LFO), Phase CV, Spread CV, Time CV
- **Outputs:** 8 outputs — copies of the input with weighted adjustments of phase and speed
- **Controls:** Phase (phase offset between outputs), Spread (amount of variation), Time/Speed
- **Key concept:** Takes 1 CV signal and creates 8 related-but-distinct versions by modifying phase and speed — outputs are correlated, not identical
- **NOT a simple mult** — actively transforms the signal at each output; use Buff Mult or Switched Mult for true signal splitting

---

## Buchla 292t (Tiptop Audio) — Quad Lopass Gate
- **Type:** Quad low-pass gate (4 independent channels)
- **Inputs per channel:** Audio In (A, B, C, D); CV In (A, B, C, D)
- **Outputs:** Individual A, B, C, D outputs; ALL output (4-to-1 mono mix)
- **Modes per channel (blue switch):** Gate (linear VCA), Combo (VCA + LPG, subtle ringing decay), LoPass (lowpass filter, "snap" on pinging)
- **Controls:** Blue knobs = manual volume/offset per channel
- **NOT just a VCA** — Combo and LoPass modes add filter behavior; pinging LoPass mode gives percussive snap

---

## Avert (2hp) — Dual Attenuverter
- **Type:** Dual attenuverter
- **Inputs:** In 1, In 2 (In 1 normalled to In 2 when In 2 unpatched)
- **Outputs:** Out 1, Out 2
- **Controls:** Amp knob per channel (CCW = inverted unity, center = 0V, CW = unity); center-detented
- **NOT an attenuator** — goes negative (inverts), not just down to zero; NOT a mixer — two independent outputs

---

## Stages (Mutable Instruments) — Segment Generator
- **Type:** Multi-stage envelope / LFO / sequencer construction set (6 segments)
- **Inputs:** GATE 1–6 (patching determines grouping), CV 1–6 (set segment level/time)
- **Outputs:** OUT 1–6 (first output of a group = envelope signal; subsequent = segment activity ramps)
- **Segment types:** Green (ramp/attack/decay), Yellow (hold/sustain), Orange (step)
- **Behavior:** Unpatched segments join the group to their left; patching a GATE starts a new group — can be 6 independent D envelopes or 1 complex 6-stage envelope, or anything between
- **Can be chained** with additional Stages modules (3-pin cable)

---

## Select 2 (Joranalogue) — Dual Gated CV Processor
- **Type:** Dual gated precision CV processor / switch / attenuverter
- **Inputs per processor:** Signal A (left, normalled to +5V), Signal B (right, normalled to 0V), Select Gate (switches A/B), Hold Gate (freezes input), Unity Gate (bypasses polariser)
- **Outputs:** A output (if unpatched, mixes into B output), B output
- **Controls:** Polariser/attenuverter knob per processor
- **Features:** Gate-controlled input switching, minutes-long track-and-hold (very low droop), gate-activated constant voltage generation, signal muting
- **NOT a simple switch** — includes attenuversion, hold, and precision offset capabilities

---

## Ceis (Instruō) — ADSR Envelope Generator
- **Type:** Fully analog voltage-controlled ADSR envelope generator (8HP)
- **Inputs:** Gate, Trigger/manual button; Attack CV, Decay CV, Sustain CV, Release CV
- **Outputs:** Envelope CV out; individual gate outputs for each stage (Attack gate, Decay gate, Sustain gate, Release gate); combined trigger output for all stages
- **Controls:** Attack, Decay, Sustain, Release knobs; shape (linear to log/exp)
- **Two envelope reset modes**

---

## MicroTides (Michigan Synth Works / Mutable) — Function Generator / Oscillator
- **Type:** Function generator / complex oscillator / LFO (4 outputs)
- **Inputs:** V/Oct (frequency), Clock In (external clock sync), Trigger/Ramp, Shape CV, Slope CV, Smoothness CV, Shift/Level CV
- **Outputs:** 1 (main signal), 2, 3, 4 (behavior depends on output mode)
- **Output modes:**
  - Different frequencies: outputs 2/3/4 at increasing/decreasing frequency ratios
  - Different shapes: four different waveshapes through processing chain
  - Different amplitudes: signal crossfaded between outputs (sequential routing)
  - Different times: shift/level sets time between outputs
- **Controls:** Frequency, Shape (waveshape), Slope (attack/decay balance), Smoothness (wave smoothing), Shift/Level

---

## Pamela's NEW Workout (ALM Busy Circuits) — Clock / Modulation Source
- **Type:** 8-output programmable clocked modulation source (master clock)
- **Outputs:** 8 fully configurable outputs — clocked triggers, rhythmic waveforms (sine, saw, triangle, square, etc.), Euclidean patterns, random, etc.
- **Inputs:** Clock In (external clock), Run In, CV assign inputs
- **Features:** OLED display, BPM-based master clock, per-output waveform/division/phase/level/offset/probability settings, CV assignment to any parameter
- **NOT just a clock** — each output is a full modulation source; at musical rates generates LFOs, envelopes, random

---

## Pamela's PRO Workout (ALM Busy Circuits) — Clock / Modulation Source (Advanced)
- **Type:** 8-output advanced programmable clocked modulation source (successor to PNW)
- **Outputs:** 8 configurable outputs with all PNW features plus additional parameters
- **Additional features vs PNW:** Extended output parameter reference including Shape, Width/Slew, Level, Offset, Phase, Probability, Euclidean Patterns

---

## Quadratt 1U (Intellijel) — Quad Attenuator/Mixer/DC Source
- **Type:** Quad attenuator, attenuverter, mixer, and DC voltage source (1U format)
- **Inputs:** In 1–4 (each normalled to a DC voltage when unpatched)
- **Outputs:** Out 1–4 (daisy-chained — unpatched outputs mix into the next)
- **Controls:** 4 knobs functioning as attenuators or attenuverters
- **DC source mode:** When input unpatched, knob generates offset voltage
- **Mixing:** Outputs chain so adjacent channels can be summed
- **NOT a mult** — separate ins and outs, mixing/attenuation utility; no signal duplication

---

## Dual VCA 1U (Intellijel) — Dual/Stereo Linear VCA
- **Type:** Dual linear voltage-controlled amplifier (1U format), can run as stereo pair
- **Inputs per channel:** Signal In, CV In
- **Outputs per channel:** Signal Out
- **Curve:** Linear response
- **Stereo mode:** CH1 and CH2 can be used as a stereo pair

---

## Buff Mult 1U (Intellijel) — Dual Buffered Mult
- **Type:** Dual 1×4 buffered signal multiplier (1U format)
- **Config:** Two independent buffered mult sections, each 1-in / 4-out
- **Inputs:** In 1, In 2
- **Outputs:** 4 outputs per section (8 total)
- **Buffered:** Makes true electrical copies — load on outputs does not affect input voltage
- **Best for:** Precision CV (V/Oct pitch) that must stay accurate across multiple destinations

---

## Switched Mult 1U (Intellijel) — Passive Switched Mult
- **Type:** Expandable dual-bus 6-jack passive signal multiplier with per-jack bus assignment (1U)
- **Jacks:** 6 jacks, each switchable to X bus, Y bus, or off (3-position switch per jack)
- **Passive:** No power required
- **Link connectors:** 3-pin rear connectors for chaining with XY I/O 1U or additional Switched Mults
- **Best for:** Audio or gate signals where precision is less critical; flexible routing between two signal buses

---

## Zeroscope 1U (Intellijel) — Oscilloscope / Tuner
- **Type:** Dual-channel oscilloscope, frequency meter, and tuner (1U format)
- **Inputs:** Ch 1 In, Ch 2 In
- **Display:** OLED screen showing waveform or frequency/note name
- **Modes:** Scope (oscilloscope), Tune (note name + cents), Hz (frequency display)
- **No audio outputs** — monitoring/visualization only

---

## Ears (Mutable Instruments) — Contact Mic / External Input
- **Type:** Contact microphone + external audio input preamp with envelope follower and gate detector
- **Inputs:** Hi-Z Audio Input (patching disconnects internal contact mic)
- **Outputs:** Audio Out; Envelope CV Out; Gate Out (+8V when envelope exceeds threshold)
- **Controls:** Gain (0–40dB, can clip)
- **Back panel jumpers:** Envelope follower attack/release speed; gate detector threshold
- **NOT just a microphone** — also useful for extracting gates and envelopes from any audio signal

---

## Maths (Make Noise) — Function Generator / Analog Computer
- **Type:** Analog computer / dual function generator with attenuverters and sum bus (20HP)
- **Channels 1 & 4 inputs:** Signal In (AC/DC, ±10V), Trigger In, Rise CV, Fall CV, Both CV (exponential), Cycle Input (gate)
- **Channels 1 & 4 outputs:** Unity Signal Out (0–8V cycling, or follows input); EOR (End of Rise, 0/10V); EOC (End of Cycle, Ch4 only, 0/10V)
- **Channels 1 & 4 controls:** Rise, Fall (each ~1ms–25min), Vari-Response (log through linear to hyper-exp), Cycle button
- **Channels 2 & 3:** Signal inputs normalled to +10V (Ch2) and +5V (Ch3) offsets; Attenuverter controls
- **Sum Bus outputs:** OR Out, SUM Out (±10V), Inverted SUM Out
- **Variable Outputs (all 4 ch):** Signal processed through attenuverter; normalled to Sum/OR bus unless patched out
- **Patch ideas from manual:** Full-wave rectifier, envelope follower, comparator, voltage comparator, flip-flop, LFO, complex LFO, ADSR, clock divider, bouncing ball

---

## Veils (Mutable Instruments) — Quad VCA / Mixer
- **Type:** Quad VCA with chainable outputs (4-channel mixer capability)
- **Inputs per channel:** Signal In (DC-coupled, audio or CV), Gain CV In (normalled to +8V)
- **Outputs per channel:** Signal Out (when unpatched, signal chains to next channel's output)
- **Controls per channel:** Response curve (exponential to linear), Offset (adds positive CV offset), Gain CV amount
- **Chaining:** Unpatched outputs sum into the next — can mix 2, 3, or all 4 channels at last patched output
- **NOT just a VCA** — with outputs left unpatched, functions as a 4-channel mixer

---

## Ripples (Mutable Instruments) — Multimode Filter
- **Type:** Analog multimode filter (2-pole and 4-pole)
- **Inputs:** Audio In, FM CV In (x2), Resonance CV In
- **Outputs:** LP2 (2-pole lowpass), LP4 (4-pole lowpass), BP2 (2-pole bandpass)
- **Controls:** Frequency (FREQ), Resonance (RES), FM attenuator, input gain
- **Self-oscillation:** Yes, at high resonance (pure sine wave)

---

## Morphagene (Make Noise) — Granular Sampler / Tape
- **Type:** Granular sampler / tape loop / microsound processor (20HP)
- **Inputs:** Audio In L (Mono) + R (AC coupled); S.O.S. CV In; Gene-Size CV In; Vari-Speed CV In; Morph CV In; Splice buttons; Record gate
- **Outputs:** Audio Out L (Mono) + R (typically 10Vpp, AC coupled)
- **Controls:** S.O.S. (Sound on Sound mix), Gene-Size (playback window size), Vari-Speed (speed + direction, bipolar), Morph (gene stagger/layer)
- **Key concepts:** Reel (full buffer), Splice (segment), Gene (playback window within splice), Morph (phase offset between genes)
- **Recording modes:** Standard, Sound on Sound, Vari-Speed record

---

## Buff (2hp) — Active Buffered Mult
- **Type:** Active 2:6 buffered multiplier
- **Config:** 2 inputs → 6 outputs (In 1 → Out 1–3; In 2 → Out 4–6; In 1 normalled to In 2)
- **Inputs:** In 1, In 2 (In 1 normalled to In 2 when unpatched)
- **Outputs:** Out 1–6
- **Buffered:** Active electrical copies, suitable for precision CV

---

## Belgrad (Xaoc Devices) — Dual Peak Multimode Filter
- **Type:** All-analog dual-core state variable filter, 10 distinct frequency responses (14HP)
- **Inputs:** Main In, V/Oct In, FM CV, Resonance CV (±5V), Balance CV (±5V), Span CV
- **Outputs:** Main Out (selected mode); additional outputs depending on configuration
- **10 filter modes (rotary switch, LP→HP):** ll, lb, lm, ls, xm, xs, hm, hs, hb, hh (lowpass-to-highpass progression with exotic intermediate modes including bandpass, notch, peak variations, and cross-modulation modes sm/xm)
- **Controls:** Mode (rotary), Level (input gain/overdrive), Frequency, Resonance, Balance (relative emphasis of two peaks), Span (distance between peaks ~0 to 8 octaves)
- **NOT a standard filter** — two resonant peaks; vocal formants easily obtained; sm/xm modes add nonlinear feedback/cross-modulation

---

## Ikarie (Bastl Instruments) — Stereo Twin-Peak Filter
- **Type:** Stereo / dual-peak analog filter with internal VCA and envelope follower (8HP)
- **Inputs:** L In, R In; Mod CV In; V/Oct In; Env Follower (internal, from audio)
- **Outputs:** L Out, R Out; Beyond Out (spectral difference of two filters = twin peak / formant)
- **Controls:** LP/HP crossfade knob (transitions from lowpass to highpass continuously), Resonance, Mod attenuverter, Gain (up to 5× input overdrive), Pan CV (stereo detuning or panning of filter cores)
- **Modes:** Stereo (two cores in sync), Dual (cores detuned), Chained (24dB/oct cascade)
- **Envelope follower:** 3 decay settings, drives internal VCA; auto-filters the incoming signal
- **Beyond output:** Spectral difference of the two filter cores — unique formant/twin-peak character

---

## Loop (2hp) — Looper
- **Type:** 4-mode high-fidelity looper with 5-minute recording buffer
- **Inputs:** Audio In, Record Gate In
- **Outputs:** Audio Out
- **Controls:** Mode (cycles 4 modes), Mix (live/loop blend), In Level
- **Modes:** Sound on Sound (layers), Dub (queue+loop), Replace (destructive), Frippertronics (decaying layers)
- **Shift functions:** Clear buffer, half-speed playback toggle, forward/reverse toggle

---

## Receive 2 (Joranalogue) — Dual Balanced Line Input
- **Type:** Dual balanced line input module (XLR + 6.35mm TRS to Eurorack level)
- **Inputs:** 2× XLR or 6.35mm jack (balanced or unbalanced), with gain controls
- **Outputs:** 2× Eurorack-level CV/audio outputs
- **Use:** Brings external audio (guitar, effects send, line-level gear) into Eurorack signal levels
- **NOT a mixer** — input conversion only, no mixing between channels

---

## arbhar (Instruō) — Granular Audio Processor
- **Type:** Granular audio processor / granular synthesizer (18HP + 2HP expander)
- **Inputs:** Audio In, Capture trigger/gate, Layer controls; CV expansion via expander
- **Outputs:** Stereo audio out (L/R)
- **Key parameters:** Grain size, Grain density, Pitch/Transpose, Scatter, Layers, Record mode
- **Modes:** Granular synthesis, Accumulative Record, Pitch, Track and Hold, Onset detection
- **Expander:** Adds CV inputs for granular parameters
- **NOT the same as Morphagene** — different granular approach; arbhar is more synthesis-focused, Morphagene more tape/splice-focused

---

## Wyvern (Malstrom) — Unknown
- **Manual status:** PDF extracts only "version 1.1" — no readable content available
- **From ModularGrid:** 12HP, Malstrom Audio; listed in rack row 6
- **Do not speculate on features** — read the online manual if needed

---

## Data Bender (Qu-Bit Electronix) — Glitch/Buffer Mangler
- **Type:** Digital audio buffer mangler / glitch processor (14HP)
- **Inputs:** Audio In (stereo); Clock In; CV inputs for Bend, Break, Time, Repeats, Mix, Corrupt
- **Outputs:** Audio Out (stereo)
- **Controls:** Time (buffer clock rate), Repeats, Mix (dry/wet), Corrupt (Decimate/Dropout/Destroy), Freeze, Mode, Shift (Bend, Break)
- **Modes:** Macro (Bend = pitch shift/reverse, Break = traverse/silence) vs Micro (more granular control)
- **Freeze:** Captures buffer for manipulation
- **Corrupt modes:** Decimate (bitcrush), Dropout (random silence), Destroy (extreme mangling)

---

## Messor (Cosmotronic) — Stereo Compressor
- **Type:** Stereo VCA-based feedforward compressor/limiter (8HP)
- **Inputs:** L In, R In; External Sidechain In; Gain CV In; Attack CV In; Release CV In; SC Filter Cutoff CV In
- **Outputs:** L Out, R Out; SC Envelope Out (sidechain envelope signal)
- **Controls:** Ratio, Attack Time, Release Time, Threshold, Make Up Gain, Sidechain Filter Cutoff, LP/HP select (sidechain filter), Warm Saturation switch, Bypass switch
- **Sidechain filter:** Shapes gain reduction envelope; LP or HP selectable
- **Ratio:** Can go past limiting into over-compression for transient reshaping

---

## Mimeophon (Make Noise + soundhack) — Stereo Delay / Repeater
- **Type:** Stereo multi-zone color audio repeater / delay (16HP)
- **Inputs:** L (Mono) In, R In (normalled to L); Mix CV, Repeats CV, Halo CV, Zone CV, Color CV, Rate CV, microRate In, HOLD gate, FLIP gate, TEMPO clock
- **Outputs:** L Out, R Out; RATE Out (trigger, OR of both channel rates)
- **Controls:** Mix (dry/wet), Repeats (1–∞), Halo (reverb-like wash), Zone (delay character/range), Color (spectral coloring), Rate (repeat frequency), Skew (independent L/R rates), Ping Pong
- **Zones:** Color-coded delay zones (0 = Doppler/karplus; 1 = short delay; 2 = medium; 3 = long)
- **HOLD:** Freezes repeats non-destructively; FLIP: reverses repeats
- **Mono/stereo:** Mono-in→Mono-out, Mono→Stereo, or Stereo→Stereo all supported

---

## X-PAN (Make Noise) — Stereo Mixer / Panner (×2 in rack)
- **Type:** Stereo mixer / crossfader / panner — 3-channel stereo field mixer (10HP); **two units in rack**
- **Channel 1 & 2 inputs:** A In, B In (per channel — crossfaded between A and B)
- **Channel 3:** Stereo Aux In L + R (stereo VCA, summed with Ch1+Ch2)
- **Outputs:** SUM L, SUM R (all 3 channels mixed to stereo)
- **Controls per Ch 1/2:** Crossfade (between A and B inputs), Pan (position in stereo field) — both VC
- **CV inputs:** Crossfade CV, Pan CV per channel; Aux VCA CV
- **DC-coupled:** Can process CV as well as audio (stereo out = dual mono for CV use)
- **NOT a simple panner** — each channel crossfades between two sources then pans the result

---

## ES-8 (Expert Sleepers) — DC-Coupled Audio Interface
- **Type:** DC-coupled USB audio interface for CV/gate integration with DAW (8HP)
- **Outputs:** 8 DC-coupled CV/gate outputs (from computer)
- **Inputs:** 2 DC-coupled inputs (to computer) + additional via expanders
- **Use:** Bridges DAW (Ableton, Bitwig, etc.) and modular — send/receive CV and audio between software and hardware
- **DC-coupled:** Essential feature — passes 0Hz (steady voltages), unlike AC-coupled interfaces

---

## 2hp Buff — See "Buff (2hp)" above

---

## Doepfer A-148 — See "A-148 (Doepfer)" above

---

## Modules Without Usable Manuals
- **VM (Division 6):** 2HP — likely a small utility; no manual available
- **3x MIA (Happy Nerding):** 6HP — name suggests triple mixer-attenuator; no manual available
- **MLTPL AlfaBeta (Uryan Modular):** 2HP, passive — name clearly indicates passive mult; no manual
- **Pro Output (WMD):** 6HP — name suggests stereo output/headphone module; no manual available
