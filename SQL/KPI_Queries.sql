#KPI 1 Total Spend
SELECT
ROUND(SUM(Spend),2) AS Total_Spend
FROM Campaign_Performance;


#KPI 2 Total Revenue
SELECT
ROUND(SUM(Revenue),2) AS Revenue
FROM Campaign_Performance;


#KPI 3 Total Impressions
SELECT
SUM(Impressions) Total_Impressions
FROM Campaign_Performance;


#KPI 4 Total Clicks
SELECT
SUM(Clicks) Total_Clicks
FROM Campaign_Performance;


#KPI 5 Total Conversions
SELECT
SUM(Conversions) Total_Conversions
FROM Campaign_Performance;


#KPI 6 CTR
SELECT
ROUND(
SUM(Clicks)*100/
SUM(Impressions),2
) CTR;


#KPI 7 Conversion Rate
SELECT
ROUND(
SUM(Conversions)*100/
SUM(Clicks),2
) Conversion_Rate
FROM Campaign_Performance;


#KPI 8 CAC
SELECT
ROUND(
SUM(Spend)/SUM(Conversions)
) CAC
FROM Campaign_Performance;


#KPI 9 ROI
SELECT
ROUND(
((SUM(Revenue)-SUM(Spend))
/
SUM(Spend))*100,2
) ROI
FROM Campaign_Performance;


#KPI 10 ROAS
SELECT
ROUND(
SUM(Revenue)/SUM(Spend),2
) ROAS
FROM Campaign_Performance;