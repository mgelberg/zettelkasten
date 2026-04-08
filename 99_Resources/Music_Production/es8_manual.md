# ES-8 USB Audio Interface - User Manual

> Source: https://www.expert-sleepers.co.uk/es8usermanual.html

## Overview

The ES-8 is a USB audio interface module for Eurorack systems. The current firmware version is 1.1.0.

## Hardware Installation

Setup involves three basic steps:

1. Install the module in a compatible Eurorack case
2. Connect a USB cable to a computer or iOS device
3. Power on the system

iOS users require the appropriate Camera Connection Kit (30-pin or Lightning connector).

## Driver Installation

- **macOS and iOS:** No driver installation needed
- **Windows:** Download the driver from the downloads page, then run the installer and follow the prompts

## Power Requirements

The ES-8 uses a Doepfer standard power connector. The supplied cable is keyed for correct orientation, with the red stripe indicating -12V at the edge of the PCB. Power derives entirely from the Eurorack connector—no USB power is drawn.

## Inputs, Outputs & Indicators

| Component | Description |
|-----------|-------------|
| Left side | Four analog inputs |
| Right side | Four analog outputs |
| ADAT | Optical input/output for expansion |
| Top LED | Indicates USB connection status |
| Bottom LED | Shows when the clock PLL locks to a valid audio clock |

## Clock Configuration

By default, the ES-8 uses its internal clock with sample rates selectable via your DAW (44.1/48/88.2/96kHz).

Configure clock settings through:
- **macOS:** Audio MIDI Setup utility
- **Windows:** Expert Sleepers Control Panel

You can select ADAT Clock mode to synchronize with incoming ADAT signals.

## Expansion

The ES-8 connects to ES-5 and ES-6 expander modules using connections detailed in their respective manuals.

*Note:* A programming header exists between the circuit boards—this is for manufacturer use only.

## Standalone Operation

Without USB connection (firmware v1.1.0+), the ES-8 operates in standalone mode:

- Incoming ADAT channels drive the analog outputs
- Analog inputs route to ADAT outputs
- The last four ADAT channels remain silent (limited by four analog inputs)
- Clock syncs to incoming ADAT or uses internal oscillation

## ADAT at Higher Sample Rates

At 88.1/96kHz, the ES-8 employs sample rate conversion rather than SMUX:

- Every other output sample is discarded (reducing to 44.1/48kHz on ADAT)
- Incoming ADAT samples are duplicated
- The full ES-5 channel count remains available
- Analog inputs/outputs operate natively at the higher rate

For audio signals, consider adding filtering to prevent aliasing artifacts.

## Firmware Updates

Check firmware version in:
- **macOS:** System Information utility
- **Windows:** Expert Sleepers Control Panel

Updates use a macOS-only updater application (v10.10+). The process:

1. Connect ES-8 and power on
2. Launch the updater
3. Click "Update to version..." button
4. Wait for completion

Factory firmware can be restored via the "Revert to factory version" button.

Monitor the official forum at modwiggler.com for update notifications.
