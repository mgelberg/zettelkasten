---
title: Channel EQ Equalizer | Reason Studios
source: https://docs.reasonstudios.com/reason13/channel-eq-equalizer
author:
  - "[[About the Authorization system]]"
published:
created: 2026-03-10
description: Reason 13.4 Operation Manual
tags:
  - clippings
  - musicproduction
  - plugins
---


Channel EQ Equalizer

# Introduction

![](https://docs.reasonstudios.com/images/reason13/ChannelEQ.51.1.1.png)

Channel EQ Equalizer is the rack version of the EQ section in Reason’s Main Mixer. The rack version is mainly intended for use in the VST3 plugin version of Reason, since it lacks the Main Mixer. However, you can of course use it wherever you like - also in the stand-alone Reason program. The Channel EQ device has identical specifications compared to the channel strip version.

# Panel reference

![](https://docs.reasonstudios.com/images/reason13/ChannelEQ.51.2.1.png)

# Gain

|  | Adjust the Channel EQ gain with this knob. |
| --- | --- |

This is useful for level-compensating when doing drastic boosts or cuts.  
Range: +/- 18.00 dB

The signal level is shown in the meter.

![](https://docs.reasonstudios.com/images/reason13/ChannelEQ.51.2.2.png)

The Filter section contains a 12 dB/octave low pass filter and an 18 dB/octave high pass filter.

The parameters are as follows:

# HPF On

|  | Click the On button to activate the high pass filter. |
| --- | --- |

# HPF Freq

The High Pass filter (HPF) removes low frequencies from the signal, resulting in a thinner sound. The HP filter slope has a 18 dB/Octave roll-off.

|  | Set the desired cutoff frequency for the high pass filter. |
| --- | --- |

Range: 20 Hz - 4 kHz

# LPF On

|  | Click the On button to activate the low pass filter. |
| --- | --- |

# LPF Freq

The Low Pass filter (LPF) removes high frequencies from the signal, making the sound less bright. The LP filter has 12 dB/Octave roll-off curve.

|  | Set the desired cutoff frequency for the low pass filter. |
| --- | --- |

Range: 100 Hz - 20 kHz.

![](https://docs.reasonstudios.com/images/reason13/ChannelEQ.51.2.3.png)

The Equalizer section features a four-band EQ with parametric midrange controls and high and low frequency shelving bands. The EQ can be switched between two operating modes, each with slightly different curve characteristics.

The Equalizer has the following parameters:

# LF Gain

The LF section provides low frequency shelving equalization. All frequencies below the set LF Frequency will be cut or boosted by the set LF Gain amount.

|  | Set the LF Gain/Attenuation amount. |
| --- | --- |

Range: +/- 20 dB

# LF Frequency

|  | Set the LF Frequency. |
| --- | --- |

Range: 40 Hz - 600 Hz

# LF Bell

|  | Click the LF Bell button to switch the LF EQ to peaking characteristics. |
| --- | --- |

This means it works like a regular parametric EQ band, cutting or boosting the signal around the set LF Frequency. Bell mode has a fixed bandwidth or "Q" value.

# LMF Gain

The low medium frequency EQ is fully parametric.

|  | Set the LMF Gain/Attenuation amount. |
| --- | --- |

Range: +/- 20 dB

# LMF Frequency

|  | Set the LMF (center) Frequency. |
| --- | --- |

Range: 200 Hz - 2 kHz

# LMF Q

The “Q” parameter adjusts the bandwidth around the set center LMF Frequency. The higher the Q value, the narrower the affected frequency range - except in “E” mode (see [“E Mode”](https://docs.reasonstudios.com/reason13/ "Panel reference")).

|  | Set the Q value for the LMF EQ. |
| --- | --- |

Range: 0.70 - 2.50

# E Mode

|  | Click to switch to E Mode. |
| --- | --- |

When the E Mode button is activated the EQ will have slightly different curve characteristics. In normal mode (E button deactivated), the Gain setting will also affect the bandwidth (Q value) for the LMF and HMF EQs. The higher the Gain, the narrower the bandwidth and vice versa.

With E Mode activated, the bandwidth is constant at all Gain settings.

# HMF Gain

The high medium frequency EQ is fully parametric.

|  | Set the LMF Gain/Attenuation amount. |
| --- | --- |

Range: +/- 20 dB

# HMF Frequency

|  | Set the HMF (center) Frequency. |
| --- | --- |

Range: 600 Hz - 7 kHz

# HMF Q

The “Q” parameter adjusts the bandwidth around the set center HMF Frequency. The higher the Q value, the narrower the affected frequency range - except in “E” mode (see [“E Mode”](https://docs.reasonstudios.com/reason13/ "Panel reference")).

|  | Set the Q value for the LMF EQ. |
| --- | --- |

Range: 0.70 - 2.50

# HF Gain

The HF section provides high frequency shelving equalization. Frequencies above the set corner Frequency will be cut or boosted by the set HF Gain amount.

|  | Set the HF Gain/Attenuation amount. |
| --- | --- |

Range: +/- 20 dB

# HF Frequency

|  | Set the HF Frequency. |
| --- | --- |

Range: 1.5 kHz - 22 kHz

# HF Bell

|  | Click the HF Bell button to switch the HF EQ to peaking characteristics. |
| --- | --- |

This means it works like a regular parametric EQ band, cutting or boosting the signal around the set HF Frequency. Bell mode has a fixed bandwidth or "Q" value.

# Connections

![](https://docs.reasonstudios.com/images/reason13/ChannelEQ.51.3.1.png)

These six CV modulation inputs, with associated trim pots, can be used for controlling the following parameters from CV modulation sources:

| • | HPF Frequency (see [“HPF Freq”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | LPF Frequency (see [“LPF Freq”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | HMF Gain (see [“HMF Gain”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | HMF Frequency (see [“HMF Frequency”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | LMF Gain (see [“LMF Gain”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

| • | LMF Frequency (see [“LMF Frequency”](https://docs.reasonstudios.com/reason13/ "Panel reference")) |
| --- | --- |

|  | Patch the audio signals you want to process here. |
| --- | --- |

If your input signal is in mono, connect only to the L (left) input.

These are the audio outputs.