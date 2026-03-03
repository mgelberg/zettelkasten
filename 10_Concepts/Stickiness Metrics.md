# Song Stickiness & Long-Tail Metrics

These metrics help quantify how a track performs *after* release — distinguishing hype-driven peaks from sustained or delayed traction.

## 1️⃣ Decay Rate of Plays

**Definition:**  
Measures how quickly plays drop week-over-week after peak or release.

**Formula:**  
```
DecayRate = ([Plays] - [PlaysNextWeek]) / [Plays]
```

**Example:**  
Week1: 10000 → Week2: 8000 → Decay = 0.20

##  2️⃣Stickabilty

**Definition:**  
Measures how the post-peak period compares to the peak week

```
**Formula:**  
Stickability = ([PostPeakAvg]) / [PeakPlays]
```

**Example:**  
Week1: 10000 → Week2: 8000 → Decay = 0.20

## 2️⃣ Plateau Weeks (Long-Tail Version)

**Definition:** Counts weeks after initial drop-off where the song maintains “healthy traction.”

Steps:
1. Find peak week and plays.
2. PostPeakAvg = average plays for peak+1 to peak+12.
3. Threshold = PeakPlays * 0.25  (or PostPeakAvg * 0.9)
4. PlateauWeeks = count of weeks > peak+12 where Plays >= Threshold.


#metric

average post-peak* weekly streams / peak-week streams

I started with post-peak as 12 weeks, but it would be good to confirm if that's the optimal way of measuring it.
