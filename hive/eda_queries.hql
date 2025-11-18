-- Total outbreaks per disease
SELECT disease, SUM(outbreak_count) AS total_outbreaks
FROM animal_disease_clean
GROUP BY disease
ORDER BY total_outbreaks DESC;

-- Outbreaks per region
SELECT region, SUM(outbreak_count)
FROM animal_disease_clean
GROUP BY region;
