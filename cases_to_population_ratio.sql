SELECT 
    location AS country,
    SUM(total_cases) AS total_cases,
    population,
    (SUM(total_cases) * 100.0 / NULLIF(SUM(population), 0)) AS case_percentage
FROM covid_deaths
WHERE 
    total_cases IS NOT NULL
    AND total_deaths IS NOT NULL
    AND location NOT IN (
        'World', 'Europe', 'North America', 
        'European Union', 'Asia', 
        'South America','Africa','Oceania','International'
    )
GROUP BY location, population
ORDER BY case_percentage DESC;

📊 Summary
Case percentage ranges from ~6.35% (Andorra) to ~0.0008% (Tanzania)
Most countries fall between 0.5% – 2%
Small countries dominate the highest percentages
Large-population countries show low percentages
🔍 Key Insights
Small countries = high case %
(e.g., Andorra, San Marino) → small population makes % look large
Large countries = low case %
(e.g., China, India, Nigeria) → harder to reach high % due to huge population
High % = widespread testing + reporting
(e.g., US, UK, Europe)
Low % may indicate underreporting
(e.g., Tanzania, Yemen, some African countries)
Developed regions cluster around 1–3%
→ more accurate reflection of spread
🧠 Final Insight

👉 Case % is driven more by population size, testing, and reporting than actual spread alone