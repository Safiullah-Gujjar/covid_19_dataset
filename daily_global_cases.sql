SELECT date,
       SUM(new_cases) AS total_cases
FROM covid_deaths
WHERE total_cases IS NOT NULL
GROUP BY date
ORDER BY date;

--📈 1. Clear exponential growth early on
Jan → March 2020: cases rise from 0 → ~100K/day
Shows the initial outbreak spread rapidly worldwide
🚀 2. First major global wave (March–April 2020)
Rapid jump to 200K–400K daily cases
Marks the first global peak
🌊 3. Multiple waves pattern
Mid 2020 → steady rise (500K–900K daily)
Late 2020 → crosses 1M+ daily cases
Early 2021 → peaks around 2M–2.8M cases/day

👉 COVID didn’t happen once — it came in waves

🔺 4. Highest peak (early–mid 2021)
Around April 2021 (~2.8M cases/day)
Likely due to:
New variants
Increased testing
🔻 5. Repeated rises and drops
Cases spike → fall → spike again
Indicates:
Lockdowns working temporarily
Then reopening → cases rise again
⚠️ 6. Data inconsistencies early on
Sudden drops/spikes (e.g., Feb 2020)
Likely due to:
Reporting delays
Changes in testing/definitions
🧠 Final Insight

👉 COVID spread in waves, with increasing peaks over time, driven by policy changes, variants, and testing expansion—not a single continuous rise