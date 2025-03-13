# returns the probability that an event which happened some time between
# January year_1 and December year_2 happened before December in cut_off_year
probability_happened_by_end_of_year <- function(year_1, year_2, cut_off_year)  {
  ifelse(
    # if year 2 before cut_off_year, must have happened before cut_off_year
    # [ -- ] -- c
    year_2 < cut_off_year,
    1,
    ifelse(
      # if year 1 after cut_of_year, it cannot have happened before cut_off_year
      # c -- [ -- ]
      year_1 > cut_off_year,
      0,
      # probability is the proportion of the years in the inclusive range
      # that come before cut_off_year
      # [ -- c -- ]
      (cut_off_year - year_1 + 1) / (year_2 - year_1 + 1)
    )
  )
}

# returns the probability that an event which happened some time between
# January year_1 and December year_2 happened before January of cut_off_year
probability_happened_before_year <- function(year_1, year_2, cut_off_year)  {
  probability_happened_by_end_of_year(year_1, year_2, cut_off_year - 1)
}

# returns the mapping museums csv as a tibble with calculated extra columns
load_museums_data <- function(csv_file_name) {
  read_csv(csv_file_name) |>
    janitor::clean_names() |>
    filter(year_closed=="9999:9999") |>
    separate_wider_delim(
      year_opened,
      ":",
      names = c("year_opened_1", "year_opened_2"),
      too_few = "align_start"
    ) |>
    mutate(subject_specific=subject_matter) |>
    separate_wider_delim(
      subject_matter,
      "-",
      names = c("subject_broad", "sub_subject", "sub_sub_subject"),
      too_few = "align_start"
    ) |>
    mutate(
      year_opened_1 = as.numeric(year_opened_1),
      year_opened_2 = as.numeric(year_opened_2),
      prob_era_pre_1900 = probability_happened_before_year(
        year_opened_1, year_opened_2, 1900
      ),
      prob_era_pre_1945 = probability_happened_before_year(
        year_opened_1, year_opened_2, 1945
      ),
      prob_era_pre_1990 = probability_happened_before_year(
        year_opened_1, year_opened_2, 1990
      ),
      prob_era_1900_to_1944 = prob_era_pre_1945 - prob_era_pre_1900,
      prob_era_1945_to_1989 = prob_era_pre_1990 - prob_era_pre_1945,
      prob_era_1990_to_present = 1 - prob_era_pre_1990,
      era = case_when(
        prob_era_1990_to_present > prob_era_1945_to_1989 ~ "1990-present",
        prob_era_1945_to_1989 > prob_era_1900_to_1944 ~ "1945-1989",
        prob_era_1900_to_1944 > prob_era_pre_1900 ~ "1900-1944",
        TRUE ~ "pre-1900"
      ),
      country = case_when(
        region_country == "Scotland" ~ "Scotland",
        region_country == "Wales" ~ "Wales",
        region_country == "Northern Ireland" ~ "Northern Ireland",
        region_country == "Isle of Man" ~ "Isle of Man",
        region_country == "Channel Islands" ~ "Channel Islands",
        TRUE ~ "England"
      ),
      governance_broad = case_when(
        governance == "Government-National" ~ "National",
        governance == "Government-Local_Authority" ~ "Local_Authority",
        governance == "Government-Other" ~ "Other_Government",
        governance == "Government-Cadw" ~ "Other_Government",
        governance == "University" ~ "University",
        governance == "Independent-Not_for_profit" ~ "Independent",
        governance == "Independent-English_Heritage" ~ "Independent",
        governance == "Independent-National_Trust" ~ "Independent",
        governance == "Independent-National_Trust_for_Scotland" ~ "Independent",
        governance == "Independent-Historic_Environment_Scotland" ~ "Independent",
        governance == "Independent-Private" ~ "Private",
        governance == "Independent-Unknown" ~ "Unknown",
        governance == "Unknown" ~"Unknown"
      ),
      governance_specific = case_when(
        governance == "Government-National" ~ "National",
        governance == "Government-Local_Authority" ~ "Local_Authority",
        governance == "Government-Other" ~ "Other_Government",
        governance == "Government-Cadw" ~ "Other_Government",
        governance == "University" ~ "University",
        governance == "Independent-Not_for_profit" ~ "Not_for_profit",
        governance == "Independent-English_Heritage" ~ "English_Heritage",
        governance == "Independent-National_Trust" ~ "National_Trust",
        governance == "Independent-National_Trust_for_Scotland" ~ "National_Trust_for_Scotland",
        governance == "Independent-Historic_Environment_Scotland" ~ "Historic_Environment_Scotland",
        governance == "Independent-Private" ~ "Private",
        governance == "Independent-Unknown" ~ "Unknown",
        governance == "Unknown" ~"Unknown"
      )
    ) |>
    select(
      museum_id,
      name=name_of_museum,
      year_opened_1,
      year_opened_2,
      era,
      size,
      accreditation,
      governance_broad,
      governance_specific,
      subject_broad,
      subject_specific,
      country,
      region_country,
      village_town_city=village_town_or_city,
      latitude,
      longitude
    )
}

load_lsoas_data <- function() {
  
}