SELECT location AS country, date, total_cases
FROM (
    SELECT 
        location,
        date,
        total_cases,
        ROW_NUMBER() OVER (PARTITION BY location ORDER BY total_cases DESC) AS rn
    FROM covid_deaths
) t
WHERE rn = 1 AND
    total_cases IS NOT NULL AND
     location NOT IN ('World', 'Europe', 'North America', 'European Union', 'Asia', 'South America','Africa','Oceania','International')

ORDER BY total_cases DESC;

--Key Insights (Highest Infection Day per Country)
--Global peak timing is very concentrated
--Most countries hit their highest total cases around late April 2021 (especially April 30)
--👉 Indicates a synchronized global wave
--Top 3 most affected countries
--🇺🇸 United States (~32M)
--🇮🇳 India (~19M)
--🇧🇷 Brazil (~14.6M)
--👉 These countries dominated global case counts
--Europe heavily impacted but spread out
--Countries like 🇫🇷 France, 🇮🇹 Italy, 🇪🇸 Spain, 🇩🇪 Germany all crossed 3M+ cases
--👉 Shows widespread regional transmission
--Emerging economies also hit hard
--🇨🇴 Colombia, 🇮🇷 Iran, 🇮🇩 Indonesia, 🇵🇭 Philippines
--👉 Pandemic was not limited to developed nations
--Late peak countries
--Some peaked slightly earlier/later (e.g., 🇳🇿 New Zealand, 🇹🇿 Tanzania)
--👉 Reflects different control strategies & timelines
--Low-case countries
--Small island nations (e.g., 🇻🇺 Vanuatu, 🇼🇸 Samoa) had extremely low cases
--👉 Strong isolation/geography advantage