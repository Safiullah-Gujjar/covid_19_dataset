SELECT date,
       SUM(new_deaths) AS total_deaths
FROM covid_deaths
WHERE total_deaths IS NOT NULL
GROUP BY date
ORDER BY date;
--Key Insights 
Wave pattern: Deaths occurred in clear waves (Mar–Apr 2020, late 2020, early 2021).
Fast early growth: Rapid jump to thousands/day by March 2020.
Peak period: Highest deaths (~50k+) in Jan 2021.
Lag effect: Deaths rise after cases (expected delay).
Mid-2020 stable phase: Mostly 10k–20k/day.
Weekly pattern: Lower on weekends, higher mid-week (reporting delay).
Overall trend: Death baseline increased over time.