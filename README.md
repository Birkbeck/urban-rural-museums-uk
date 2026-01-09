# Urban and Rural Museums in the UK: Data and Code

This repository provides the data, code, and analytical workflow supporting a quantitative study of the geography of museums across the urban–rural spectrum in the United Kingdom as of 2025. Using a demographic-structural approach, the analysis combines a highly complete national dataset of museums with multiple official and computational urban–rural classification schemes to examine how museum location varies by governance, size, age, subject matter, and region.

Contrary to the widespread assumption that museums are predominantly urban institutions, the findings show that, on a per-capita basis, rural areas host substantially more museums than urban areas, with particularly high densities in remote rural contexts. This pattern is closely linked to the expansion of independent museums from the 1960s onwards and to the prevalence of local history museums, rural industry collections, and historic buildings. At the same time, art, science, medicine, and university museums remain strongly concentrated in cities. The analysis also identifies a pronounced “suburban gap”, where museums are significantly less prevalent than in both dense urban cores and rural areas.

By making the data and methods openly available, this repository enables reproducibility and reuse, and provides an empirical foundation for research and policy debates on cultural infrastructure, accessibility, heritage, and spatial inequality beyond urban centres.

## Research team

- [Andrea Ballatore](https://aballatore.space), Senior Lecturer in Cultural Data Science, Cultural Geo-Analytics Lab, Department of Digital Humanities, King's College London (scientific supervision, data interpretation)
- [George A Wright](https://georgeaw.com), Post-doctoral Researcher, School of Computing and Mathematical Sciences, Birkbeck, University of London (R coding and analysis)

This work was carried out collaboratively between the [**Mapping Museums Lab**](https://mapping-museums.bbk.ac.uk) and the [**Cultural Geo-Analytics Lab**](https://aballatore.space/lab).

## Repository contents

- `data/`  
  Input datasets and documentation describing data sources and preprocessing requirements.

- `urban-rural-museums.rmd`  
  R Markdown file containing the full analytical workflow, from data loading to figures and tables.

- `urban-rural-museums.html`  
  Rendered output of the analysis, including results, figures, and tables.

- `figures/`  
  Generated figures and tabular outputs produced by the analysis.

## Requirements

To run the analysis, you will need:

- R (version 4.0 or later recommended)
- RStudio
- The R packages listed at the top of `urban-rural-museums.rmd`
- External data files described in `data/README.md`

## How to run the analysis

1. Download or clone this repository.
2. Obtain the required external datasets listed in `data/README.md` and place them in the `data/` directory.
3. Open `urban-rural-museums.rmd` in RStudio.
4. Click **Knit** to run the full analysis.

The rendered HTML output will be updated, and figures and tables will be saved in the subfolders.

## Data availability and licensing

This repository contains code and documentation only. Some input datasets are derived from third-party sources and are subject to their own licences and terms of use. Please consult `data/README.md` and the original data providers before reuse.

Unless otherwise stated, code in this repository is released under an open-source licence. See the `LICENSE` file for details.

## Citation

If you use this repository or its contents in academic work, please cite the associated publication and this software repository:

### Cite as

> Wright, G.A., and Ballatore, A. (2026). *Urban and rural museums in the UK: data and code*. GitHub repository.  
> URL: https://github.com/Birkbeck/urban-rural-museums-uk 

## Contact

andrea [.] ballatore [@] kcl.ac.uk
