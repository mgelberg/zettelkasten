# Roti Pola Manual

> Source: https://manuals.noiseengineering.us/rp/

## Overview

The Roti Pola is a four channel attenuverting CV mixer and offset with visual feedback in a small package. When Channel 1 has nothing patched, it applies a 5V offset to the mix.

## Specifications

| Parameter | Value |
|-----------|-------|
| Type | Attenuverter/Mixer |
| Size | 4HP Eurorack |
| Depth | 0.8 inch |
| Power Connector | 2x5 Eurorack |
| +12V Draw | 58 mA |
| -12V Draw | 40 mA |
| Input/Output Range | ±10V |

## Etymology

The module's name combines Latin roots: Roti (meaning spinny/whirly) and Pola (meaning tiny), creating the concept of "Tiny Whirlification."

## Interface Components

### Channel Knobs 1-4

These attenuverters control signal levels. Channel 1 is normaled to a 5V offset when unplugged. LEDs display post-attenuation signals: green for positive, red for negative values.

### Inputs 1-4

Four input jacks for patching CV sources.

### Output

Mixed CV output jack with LED feedback (green = positive, red = negative).

## Getting Started: Patch Tutorial

1. Patch an LFO into Channel 2
2. Route the output to a CV destination
3. Use Channel 2's attenuverter to shape the signal
4. Experiment with Channel 1 to add offsets
5. Add sources to Channels 3-4 for more interesting and chaotic modulation

## Design Background

The module originated from a collaboration with musician Baseck, who demonstrated the need for a compact CV mixer. Engineers refined the initial design by adding the 5V supply to Channel 1 and resolving layout issues.

## Credits

Special thanks to Baseck for inspiring the module's development.