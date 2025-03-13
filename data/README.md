# Data

This directory contains the sources of data for analysis of museums along the urban-rural spectrum.

Data files include:

* Museum data:
    * museums-yyyy-mm-dd.csv - the latest dump of the [Mapping Museums database](https://museweb.dcs.bbk.ac.uk/aboutapp)
* Rural/urban classifications:
    * ruc-england-wales-2021.csv - the official 2021 [England & Wales rural/urban classifications](https://geoportal.statistics.gov.uk/datasets/9dbf7613cbb147b8bb8627ddb3568cff_0/explore)
    * ruc-scotland-2022.csv - the official 2022 [Scotland rural/urban classifications](https://www.gov.scot/publications/scottish-government-urban-rural-classification-2022/documents/)
    * ruc-northern-ireland-2015.csv - the official 2015 [Northern Ireland rural/urban classifications](https://www.nisra.gov.uk/publications/settlement-2015-documentation)
    * ruc-my-society-2021.csv - the [MySociety UK-wide aggregated rural/urban classifications](https://github.com/mysociety/uk_ruc)
    * spatial-signatures.csv - 
* Population data:
    * population-england-wales-lsoas-2022.csv - Mid-2022 population estimates for English and Welsh LSOAs, [ONS](https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/lowersuperoutputareamidyearpopulationestimates)
    * Scottish population figures are in the Scottish datazone centroids file (see below)
    * population-northern-ireland-datazones-2022.csv - Mid-2022 population estimates for Northern Irish Data zones, [NISRA](https://www.nisra.gov.uk/publications/2022-mid-year-population-estimates-small-geographical-areas)
    * population-northern-ireland-super-datazones-2022.csv - Mid-2022 population estimates for Northern Irish Super Data zones, [NISRA](https://www.nisra.gov.uk/publications/2022-mid-year-population-estimates-small-geographical-areas)
* Shapefiles (These must be unzipped before use):
    * shapes-england-wales-lsoas-2021.zip - Digital vector boundaries for English and Welsh LSOAS, [ONS](https://geoportal.statistics.gov.uk/datasets/ons::lower-layer-super-output-areas-december-2021-boundaries-ew-bsc-v4-2/about)
    * centroids-england-wales-lsoas-2021.zip - Population weighted centroids for English and Welsh LSOAs, [ONS](https://www.data.gov.uk/dataset/1b61943c-f5e1-4398-babe-5c487257864e/lower-layer-super-output-areas-december-2021-ew-population-weighted-centroids)
    * shapes-scotland-datazones-2022.zip - Digital vector boundaries for Scottish Datazones, [Spatialdata.gov.scot](https://spatialdata.gov.scot/geonetwork/srv/api/records/f6656adf-b720-4612-ad5c-1d13eae94c8b?language=all)
    * centroids [Spatialdata.gov.scot](https://www.data.gov.uk/dataset/d5b6fbc1-8a79-46c6-ac64-2de60c6fcb70/data-zone-centroids-2022)
    * shapes-northern-ireland-soas-2011.zip - Digital vector boundaries for Northern Ireland Super Ouptut Areas, [NISRA](https://www.nisra.gov.uk/publications/super-output-area-boundaries-gis-format)
    * centroids-northern-ireland-datazones-2021.csv - Population weighted centroids for Northern Irish Datazones, [NISRA](https://www.nisra.gov.uk/publications/census-2021-population-weighted-centroids-data-zones-and-super-data-zones)
    * spatial-signatures-gb.zip - The spatial signatures digital vector boundareis for Great Britain (not included in this repository as it is a very large file), [CDRC](https://data.cdrc.ac.uk/dataset/spatial-signatures-great-britain)