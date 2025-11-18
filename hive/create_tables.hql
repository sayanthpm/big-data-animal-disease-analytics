-- Hive table for animal disease dataset
CREATE TABLE IF NOT EXISTS animal_disease_raw (
    species STRING,
    disease STRING,
    region STRING,
    year INT,
    outbreak_count INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
