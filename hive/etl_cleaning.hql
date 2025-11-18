-- Clean and standardize the dataset
CREATE TABLE animal_disease_clean AS
SELECT
    TRIM(species) AS species,
    TRIM(disease) AS disease,
    TRIM(region) AS region,
    year,
    COALESCE(outbreak_count, 0) AS outbreak_count
FROM animal_disease_raw
WHERE species IS NOT NULL
  AND disease IS NOT NULL
  AND region IS NOT NULL;
