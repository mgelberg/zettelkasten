2025-12-03 14:22
## Tags

#python #dataviz #tipsandtricks


# What inspired you to write this note?

I was trying to not do explicit vibe coding today, but was using GitHub copilot as a talking Stack Overflow. Wanted to jot down some ideas on formatting a decent plot.


```python
# ==============================================================================
# IMPORTS & STYLING
# ==============================================================================
import matplotlib.pyplot as plt
from core.utility_functions import format_number

# Apply the 'fivethirtyeight' style (light background, serif fonts, minimal spines)
# Note: This style includes gridlines by default; disable with ax.grid(False) if needed
plt.style.use('fivethirtyeight')

# ==============================================================================
# GLOBAL FONT CONFIGURATION
# ==============================================================================
# Set global matplotlib font properties that apply to all text elements
# (titles, labels, tick labels, annotations) unless overridden locally
plt.rcParams['font.family'] = 'sans-serif'  # Use sans-serif typeface
plt.rcParams['font.sans-serif'] = ['Arial', 'Helvetica', 'DejaVu Sans']  # Fallback font list (uses first available)
plt.rcParams['font.size'] = 12  # Default font size for all text (in points)
plt.rcParams['font.weight'] = 'normal'  # Font weight: 'normal', 'bold', 'light', etc.

# ==============================================================================
# DATA PREPARATION
# ==============================================================================
# Sort the grouped data by index in ascending order (0, 1, 2, ... top to bottom in bar chart)
# This ensures bars display in the order rows appear in the DataFrame
df_sorted = df_grouped.sort_index(ascending=True)

# ==============================================================================
# FIGURE & AXES INITIALIZATION
# ==============================================================================
# Create a figure (window) and axes (plotting area) with specified size
# figsize=(14, 6) sets width=14 inches, height=6 inches
fig, ax = plt.subplots(figsize=(14, 6))

# ==============================================================================
# MAIN BAR CHART
# ==============================================================================
# Create vertical bar chart with countries on x-axis and streams on y-axis
# color="#379d3e" sets bar color to a custom green (#379d3e)
# ax.bar() accepts: (x_values, y_values, color, width, edgecolor, etc.)
ax.bar(df_sorted['Country'], df_sorted['Streams'], color="#379d3e")

# ==============================================================================
# Y-AXIS FORMATTING (Stream Values)
# ==============================================================================
# Apply custom formatter to y-axis labels (the stream count numbers)
# FuncFormatter applies a custom function: lambda x, p: format_number(x, fmt='simplified')
#   - x: the numeric value to format
#   - p: the position (not used here)
#   - format_number(..., fmt='simplified') converts large numbers to readable short form
#     Examples: 35625846 → '35.6M', 150000 → '150K'
ax.yaxis.set_major_formatter(
    plt.FuncFormatter(lambda x, p: format_number(x, fmt='simplified'))
)

# ==============================================================================
# PERCENTAGE LABELS ON TOP OF BARS
# ==============================================================================
# Iterate through each bar and add a percentage label centered above it
# enumerate() provides index (i), and zip() unpacks country, streams, and percentage in parallel
for i, (country, streams, pct) in enumerate(zip(df_sorted['Country'], df_sorted['Streams'], df_sorted['% of Total'])):
    # Format percentage as a string (e.g., 25%)
    # f'{pct:.0%}' converts decimal (0.25) to percentage string ('25%')
    pct_label = f'{pct:.0%}'
    
    # Place text label above each bar
    # ax.text(x, y, text, ...) adds text at position (x, y)
    #   - i: x-position (bar index)
    #   - streams + df_sorted['Streams'].max() * 0.02: y-position (bar height + 2% of max for spacing)
    #   - ha='center': horizontally center the text on the bar
    #   - fontsize=10: label text size (smaller than title for hierarchy)
    #   - color='black': label text color
    ax.text(i, streams + df_sorted['Streams'].max() * 0.02, pct_label, 
            ha='center', fontsize=10, color='black')

# ==============================================================================
# AXIS LABELS & TITLE
# ==============================================================================
# Y-axis label (left side) - describes what the bar height represents
ax.set_ylabel('Streams', fontsize=13, fontweight='bold', color='#333333', labelpad=10)

# X-axis label (bottom) - describes what the bars represent
ax.set_xlabel('Country', fontsize=13, fontweight='bold', color='#333333', labelpad=10)

# Main title positioned above the figure (suptitle = super-title)
# y=0.98 positions title near the top (1.0 = very top, 0.0 = very bottom)
# ha='center' horizontally centers the title
fig.suptitle('Ezra Collective: Streams by Country', 
             fontsize=17, fontweight='bold', color='#222222', y=0.98, ha='center')

# Subtitle (secondary title) positioned below the main title
# transform=ax.transAxes uses axes coordinates (0.5 = center, 1.03 = slightly above axes)
# Note: 1.03 may overlap with main title depending on layout; adjust if needed
ax.text(0.49, 1.03, '(Last 12 Months)', 
        transform=ax.transAxes, fontsize=11, color='#555555', style='italic', ha='center')

# ==============================================================================
# CHART POLISH & STYLING
# ==============================================================================
# Remove the top and right spines (borders) for a cleaner, more modern aesthetic
# This follows the principle: only show spines necessary for reading data (left & bottom)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Set y-axis limits: 0 at bottom, max value × 1.2 at top
# The 1.2 multiplier adds 20% extra space to prevent percentage labels from being cut off
ax.set_ylim(0, df_sorted['Streams'].max() * 1.2)

# Disable gridlines (the 'fivethirtyeight' style enables them by default)
# Set to False for a cleaner look; set to True if you prefer reference gridlines
ax.grid(False)

# ==============================================================================
# FINAL DISPLAY
# ==============================================================================
# Automatically adjust subplot spacing to prevent label overlap
# This tightens margins and ensures all elements fit within the figure bounds
plt.tight_layout()

# Display the figure in the notebook or script output
plt.show()




```





# References

