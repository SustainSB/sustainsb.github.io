# sustainsb.github.io

scientific data-driven website and calculation repo for SustainSB

## Example of **Ocean Health Index** (OHI)

- public website: [OceanHealthIndex.org](http://www.oceanhealthindex.org/)
- science website: [OHI-science.org](http://ohi-science.org/)
- presentation: [Reproducible Science with the Ocean Health Index](http://benbestphd.com/talks/2014-06_OHI-repro-sci) (2014)
    - Example Gulf of Guayaqil [website](http://ohi-science.org/gye) & [files](https://github.com/ohi-science/gye)
- app: [Global OHI Explorer App](http://ecoquants.com/app/ohi) (2016)
- presentation: [Transforming how we approaching marine science for management](https://docs.google.com/presentation/d/1MW36Q3YO7ovL5RrhyMTzMtzA0oN4dJukpAsInsuC6Qs/edit#slide=id.g1dc9c1836e_0_81) (2017)

## Demo for **SustainSB**

The website is hosted for free on Github in a repository, a collection of versioned files:

- **website**: [sustainsb.github.io](https://github.com/sustainsb/sustainsb.github.io). This is a free public website.

- **files**: [github.com/sustainsb/sustainsb.github.io](https://github.com/sustainsb/sustainsb.github.io). This repository holds the versioned files. Anyone can download, or copy and contribute, ie [fork and pull request](https://guides.github.com/activities/forking/).

A typical process for arriving at sustainability indices involves these steps:

- [**prep_regions**](https://sustainsb.github.io/prep_regions.html). The regions make up the fundamental spatial units of analysis for associating data layers and goal scores.

- [**prep_layers**](https://sustainsb.github.io/prep_layers.html). Any data layer should be attributed to the regions with explicit units (eg km<sup>2</sup>) and can represent measurements over time. Most raw data must be aggregated or split in space and time to match the spatial regions and comparable time increments (eg years).

- [**calc_scores**](https://sustainsb.github.io/calc_scores.html). Data layers are blended with an equation to arrive at a goal score, possibly involving dimensions (eg status, trend, pressures, resilience). The goal scores then get averaged for an overall index score for the region. Finally, the region goals and index scores for all regions are averaged with a weighting (eg population or area) to arrive at scores for the entire study area of Santa Barbara.

Please feel free to direct questions or suggestions to Ben Best <ben@ecoquants.com>.
