--Looking tota cases vs total deaths

SELECT 
    location AS country,
    SUM(total_cases) AS total_cases,
    SUM(total_deaths) AS total_deaths,
     (SUM(total_deaths) * 100.0 / NULLIF(SUM(total_cases), 0)) AS death_percentage
FROM covid_deaths
WHERE 
    (total_cases IS NOT NULL) AND
    (total_deaths IS NOT NULL) AND
    location NOT IN ('World', 'Europe', 'North America', 'European Union', 'Asia', 'South America','Africa','Oceania','International')
GROUP BY location
ORDER BY death_percentage DESC;

--Death rate varies widely (~26% → 0.05%)
Most countries fall in 1–3% range
Very high rates (e.g., Yemen, Mexico) suggest underreporting / weak testing
Developed countries (e.g., Singapore, UAE) show very low death rates
Large countries have huge cases but moderate death %
Small countries give misleading high percentages

👉 Key insight: Death % reflects data quality, testing, and healthcare, not just virus severity.