# Interactive map of UK museums along the urban–rural spectrum

`urban-rural-museums-map-uk-v1.html` is a self-contained interactive web map of all 3,428 museums open in the UK as of March 2025, coloured by their urban–rural classification.

**[Open the map online](https://birkbeck.github.io/urban-rural-museums-uk/maps/urban-rural-museums-map-uk-v1.html)**, or download the HTML file and open it in a web browser. An internet connection is needed to load the map library and the base maps; the museum data are embedded in the file.

## What the map shows

Each dot is a museum. The colour shows one of two classifications, selected under **Colour by**:

| Urban–rural class (harmonised, 3-fold) | Colour |
|---|---|
| Urban | dark blue |
| Quite rural | light orange |
| Very rural | dark orange |
| Unclassified (72 museums) | grey |

| Spatial signature group (Great Britain only) | Colour |
|---|---|
| Central urban | navy |
| Urban neighbourhoods | light blue |
| Suburban | yellow |
| Peri-urban/rural | dark orange |
| Not available (including Northern Ireland) | grey |

The palettes run from blue (urban) to orange (rural) and avoid red–green contrasts, so they remain distinguishable for readers with common colour-vision deficiencies.

## Features

- **Filters**: urban–rural class (tick boxes), subject, governance, size, era of foundation, region or nation, spatial signature, and accreditation; plus a search box for museum or town names. A counter shows the number of museums matching the current selection.
- **Zoom to selection**: fits the map to the museums currently shown.
- **Pop-ups**: click a museum to see its town, postcode, year opened, era, governance, size, subject, accreditation, urban–rural classes (harmonised, national, and spatial signature), region, and Mapping Museums identifier.
- **Labels**: museum names are displayed next to the dots from zoom level 12 (town scale).
- **Base maps**: Esri light grey (default), CARTO light grey, Esri streets, and OpenStreetMap. If a base map fails to load, the map switches automatically to the next one.

## Data sources

- Museums, locations, and attributes: Mapping Museums Lab, `data/museums-2025-03-13.csv` (museums open as of March 2025).
- Urban–rural classes and spatial signatures: `stats/museums-with-urban-rural-categories.xlsx`, produced by the analysis in `urban-rural-museums.rmd`, joined to the museum data by `museum_id`.
- Urban–rural classifications: ONS (2025) for England and Wales; Scottish Government (2022) for Scotland; NISRA for Northern Ireland; harmonised into a 3-fold UK classification as described in the paper's Appendix.
- Spatial signatures: Arribas-Bel, D., & Fleischmann, M. (2022). Spatial Signatures—Understanding (urban) spaces through form and function. *Habitat International*, 128, 102641.

## Caveats

- Museums are placed at their recorded coordinates, which are often derived from postcodes; in rural areas, where postcodes cover large areas, a dot may be some distance from the museum building.
- Urban–rural classes refer to current boundaries, not to conditions when each museum was founded.
- Spatial signatures are not available for Northern Ireland.

## Technical notes

The page was generated in Python by joining the two data files above and embedding the result as JSON in a single HTML file. It uses [Leaflet](https://leafletjs.com) 1.9.4, loaded from unpkg, with canvas rendering for performance. No server or build step is needed; the file can be hosted on any static web server, such as GitHub Pages.

## Licence and citation

As for the rest of this repository (CC BY-NC 4.0); see the main [README](../README.md).
