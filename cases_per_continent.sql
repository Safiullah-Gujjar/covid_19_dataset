SELECT continent,
       MAX(total_cases) AS total_cases,
       MAX(total_deaths) AS total_deaths
FROM covid_deaths
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY total_cases DESC;

--Key Insights (Continent-Level)


North America leads in impact


Highest cases (32.3M) and deaths (576K) → major global hotspot.




Asia has high cases but lower death ratio


19.1M cases, 211K deaths → lower deaths relative to population/cases.




South America has high severity


14.6M cases, 403K deaths → very high death rate compared to cases.




Europe shows moderate totals


5.6M cases, 127K deaths → significant but lower than Americas.




Africa relatively lower impact


1.58M cases, 54K deaths → lower numbers (could reflect underreporting/testing limits).




Oceania least affected


Very low cases (29K) and deaths (910) → strong containment.





🔥 Big Takeaways


The Americas (North + South) were the hardest hit regions.


South America stands out for higher death severity.


Oceania handled the pandemic best among all continents.