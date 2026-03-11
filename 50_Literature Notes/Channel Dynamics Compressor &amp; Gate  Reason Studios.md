---
title: Channel Dynamics Compressor &amp; Gate | Reason Studios
source: https://docs.reasonstudios.com/reason13/channel-dynamics-compressor-amp-gate
author:
  - "[[About the Authorization system]]"
published:
created: 2026-03-10
description: Reason 13.4 Operation Manual
tags:
  - clippings
  - mixing
---
#mixing

Channel Dynamics Compressor & Gate

# Introduction

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.1.1.png)

Channel Dynamics Compressor & Gate is the rack version of the Dynamics section in Reason’s Main Mixer. The rack version is mainly intended for use in the VST3 plugin version of Reason, since it lacks the Main Mixer. However, you can of course use it wherever you like - also in the stand-alone Reason program. The Channel Dynamics Compressor & Gate device has identical specifications compared to the channel strip version, with the addition of Input Gain and Dry/Wet Mix controls.

# Panel reference

# Input Gain

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.1.png)

|  | ==Adjust the input gain to the Channel Dynamics device.== |
| --- | --- |

Range: +/- 18.00 dB

|  | ==The Input Gain knob controls the input signal, regardless if the Compressor and/or Gate is on or not.== |
| --- | --- |

# Mix

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.2.png)

|  | ==Set the mix between dry and processed signal with the Mix knob.== |
| --- | --- |

By setting a mix of <100% you can use the Channel Dynamics device for “parallel processing”, i.e. the dry and effect signals are being output together.

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.3.png)

Compressors reduce dynamic range by evening out the difference between loud and quiet signals. This makes signal levels easier to balance, and can add punch and sustain to the sound.

The compressor/limiter in Channel Dynamics is a flexible processor which has soft-knee (a gradual, smooth onset of compression) characteristics but can be switched to peak limiting, where levels above the set threshold are instantly reduced. The compressor also features automatic make-up gain. The parameters are as follows:

# On

|  | ==Click the On button to activate the Compressor section.== |
| --- | --- |

# Peak

|  | ==Activate to change the signal detection from RMS to Peak, which results in an instant attack time.== |
| --- | --- |

Peak mode is suitable for compression of sounds with fast attacks like drums.

# Fast

|  | Click this to make the compressor react to signals above the set Threshold level in a fixed time of 3 ms for   20 dB gain reduction. |
| --- | --- |

# Ratio

|  | ==Set the amount of gain reduction applied to the signal above the set Threshold (see below).== |
| --- | --- |

Range: 1:1 (no reduction) to Infinite:1

# Threshold

|  | ==Set the level at which onset of compression should occur.== |
| --- | --- |

Signals below the Threshold setting are unaffected, but when the level exceeds the threshold, compression kicks in. Automatic make-up gain (based on the Ratio and Threshold settings) is applied to compensate for level reduction caused by compression, to maintain a steady output level.

Range: -52 dB to 0 dB

# Release

|  | ==Set the time it should take before the compressor lets the sound through unaffected - after the signal level drops below the set threshold.== |
| --- | --- |

Set this to short values for “pumping” compressor effects, or to longer values for a smoother change of the dynamics.

Range: 100 ms to 1000 ms

# Compressor Gain Reduction Meter

The LED meter shows the gain reduction applied by the compressor.

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.4.png)

Gating or expansion will attenuate signals below a set threshold; the opposite of compression. It can be used to reduce or eliminate unwanted background noise that may be present when there is no signal to mask it. Gating is also commonly used to reduce microphone “bleeding”, e.g. when recording a close-mic’ed drum kit you can use gating to silence the tom microphones when the toms aren’t being played to tighten up the sound, and for special effects like “keying” (see below).

Higher expansion ratios (10:1 and above) are referred to as noise gating, where the channel is completely silenced if the level drops below the set threshold.

The Gate/expander has the following parameters:

# On

|  | ==Click the On button to activate the Gate/Expander section.== |
| --- | --- |

# Exp

In Expander mode, the Range (gain reduction) is not as severe as in Gate mode, but more gradual around the Threshold. Also, the gain reduction is not attenuated by a certain dB but is scaled. The major difference compared to the Gate function is that instead of muting the signal once it drops below the Threshold (gate), the Expander still lets some signal through but at a lower level, resulting in a signal of lower volume. You could think of an Expander as an “inverted” compressor, i.e., it expands the dynamic range of the input signal.

|  | ==Click the Exp button to change the operating mode from Gate to Expansion.== |
| --- | --- |

The Range knob (see below) then controls the expansion amount.

# Hold

|  | ==Set the time the gate should stay fully open after the signal falls below the Threshold.== |
| --- | --- |

Hold interacts with the Release parameter such that Release only starts acting after the set Hold time.  
Range: 0 ms to 4000 ms

# Fast

The normal attack time for the Gate is normally1.5 ms per 40 dB.

|  | ==Click the Fast button to lower the attack time to 100µs (microseconds) per 40 dB.== |
| --- | --- |

This can be is useful for percussive material were the waveform rises steeply in a very short time.

# Range

|  | ==Set the amount of gain reduction applied to signals below the set Threshold.== |
| --- | --- |

The Range can be set from 0 dB (no reduction) to -40 dB. If the Exp button is on (see above), the Range knob controls the expansion amount.

# Threshold

|  | ==Set the level at which the gate opens or closes.== |
| --- | --- |

Signals below the Threshold setting are gated, but when the level exceeds the threshold, the gate opens.  
Range: -52 dB to 0 dB

|  | ==Note that the threshold for closing the gate is slightly lower than the threshold for opening the gate. This is to avoid undesirable gate triggering with signal levels close to the set threshold.== |
| --- | --- |

# Release

|  | ==Set the time it should take for the gate to go from open to fully closed.== |
| --- | --- |

Fast release times will fade the signal abruptly once the level falls below the threshold, and longer release times will slowly fade out the signal.

Range: 100 ms to 1000 ms

# Gate Gain Reduction Meter

The LED meter shows the gain reduction applied by the gating/expansion.

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.5.png)

You can use external signals to trigger the Compressor and/or the Gate/Expander. This is done by connecting an external signal to the Sidechain Inputs on the back of Channel Dynamics.

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.6.png)

The Sidechain inputs.

When a cable is connected to the Sidechain Input(s) the “Connected” LED is lit on the front panel:

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.2.7.png)

|  | ==Click the Sidechain button to “key” (trigger) Channel Dynamics from the external signal instead of the channel signal.== |
| --- | --- |

For example, you could use a drum loop to trigger the gate for a channel playing a synth pad to create rhythmic chord effects.

# Connections

![](https://docs.reasonstudios.com/images/reason13/ChannelDyn.50.3.1.png)

These two CV modulation outputs can be used for controlling other devices that feature CV modulation inputs. The modulation parameters are:

| • | Compressor Gain Reduction (see [“Compressor Gain Reduction Meter”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | Gate Gain |
| --- | --- |

==This CV signal is high when the gate is open and goes low when the gate closes.==

|  | Patch an external audio signal to be used as sidechain signal here. |
| --- | --- |

See [“External Sidechain”](https://docs.reasonstudios.com/reason13/ "Panel reference") for more information.

|  | Patch the audio signals you want to process here. |
| --- | --- |

==If your input signal is in mono, connect only to the L (left) input.==

==These are the audio outputs.==