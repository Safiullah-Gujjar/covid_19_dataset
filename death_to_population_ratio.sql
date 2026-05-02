SELECT 
    location AS country,
    SUM(total_deaths) AS total_deaths,
    population,
    (SUM(total_deaths) * 100.0 / NULLIF(SUM(population), 0)) AS death_percentage
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
ORDER BY death_percentage DESC;

--📊 Key Patterns
Death % ranges from ~0.146% (San Marino) to near 0% (Burundi, Tanzania)
Most countries fall between 0.01% – 0.06%
🔍 Insights
Highest death % in Europe & small states
(San Marino, Belgium, Italy, UK)
→ older populations + accurate reporting
Large countries = lower death %
(India, China, Nigeria)
→ huge population lowers percentage
Very low % often = underreporting
(many African & low-income countries)
Developed countries cluster mid-high
→ better tracking of deaths
Small countries = unstable %
→ small population exaggerates numbers
🧠 Final Insight

👉 Death % per population shows reporting quality, demographics, and healthcare impact—not just disease severity