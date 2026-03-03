To put this into a straightforward analogy (supplementing your notes), imagine a spreadsheet containing reviews of restaurants (observed data). Columns include details like "decor color," "server friendliness rating," and "noise level."

If you run a matrix factorization algorithm:

• The **Latent Features (Components)** that emerge might be "Fine Dining Experience" and "Quick Lunch Spot."

• The model discovered these latent features because "decor color" tended to correlate with "server friendliness," and both correlated negatively with "quick lunch spot." The algorithm has created **unobserved groupings** (latent features) that summarize many observed columns.

Something that is crucial for [[Machine Learning]], specifically [[unsupervised learning]]

It tries to reduce the dimensionality of a dataset to its smallest (but stil useful) factors

Part of [[Singular Value Decompsoition (SVD)]]