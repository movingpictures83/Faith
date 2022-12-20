# Faith
# Language: R
# Input: TXT
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: biomformat_1.18.0, picante_1.8.2

PluMA plugin that computes Faith's phylogenetic diversity index (Faith et al, 2017).

The plugin takes as input a TXT file of tab-delimited keyword-value pairs:

OTU: OTU abundances
TREE: Newick-formatted phylogenetic tree

Diversity indices will be output as a CSV file.
