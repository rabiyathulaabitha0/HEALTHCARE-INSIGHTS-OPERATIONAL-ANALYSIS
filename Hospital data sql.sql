SELECT * FROM hospital_er_data.`hospital er_data`;
/*1,Total number of patients visiting the ER*/
SELECT COUNT(*) AS Total_Patients
FROM hospital_er_data.`hospital er_data`;
/*2,Daily trend of patient visits*/
SELECT `Patient Admission Date`,
       COUNT(*) AS Daily_Patients
FROM hospital_er_data.`hospital er_data`
GROUP BY `Patient Admission Date`
ORDER BY `Patient Admission Date`;
/*3,Average wait time of patients*/
SELECT ROUND(AVG(`Patient Waittime`),2) AS Avg_Wait_Time
FROM hospital_er_data.`hospital er_data`;
/*4,Average patient satisfaction score*/
SELECT ROUND(AVG(`Patient Satisfaction Score`),2) AS Avg_Satisfaction
FROM hospital_er_data.`hospital er_data`;
/*5,Number of patients referred to each department*/
SELECT `Department Referral`,
       COUNT(*) AS Total_Referrals
FROM hospital_er_data.`hospital er_data`
GROUP BY `Department Referral`
ORDER BY Total_Referrals DESC;
/*Monthly View*/
/*6,Admitted vs Non-Admitted patients*/
SELECT `Patient Admission Flag`,
       COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Patient Admission Flag`;
/*7,Patient age distribution*/
SELECT 
CASE
    WHEN `Patient Age` BETWEEN 0 AND 10 THEN '0-10'
    WHEN `Patient Age` BETWEEN 11 AND 20 THEN '11-20'
    WHEN `Patient Age` BETWEEN 21 AND 30 THEN '21-30'
    WHEN `Patient Age` BETWEEN 31 AND 40 THEN '31-40'
    WHEN `Patient Age` BETWEEN 41 AND 50 THEN '41-50'
    WHEN `Patient Age` BETWEEN 51 AND 60 THEN '51-60'
    ELSE '60+'
END AS Age_Group,
COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY Age_Group
ORDER BY Age_Group;
/*8,Department with highest referrals*/
SELECT `Department Referral`,
       COUNT(*) AS Referral_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Department Referral`
ORDER BY Referral_Count DESC;
/*9,Department with highest referrals*/
SELECT `Department Referral`,
       COUNT(*) AS Referral_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Department Referral`
ORDER BY Referral_Count DESC;
/*10,Percentage of patients attended within 30 minutes*/
SELECT 
COUNT(CASE WHEN `Patient Waittime` <= 30 THEN 1 END) * 100.0 / COUNT(*) 
AS Percent_Within_30_Min
FROM hospital_er_data.`hospital er_data`;
/*11,Gender distribution*/
SELECT `Patient Gender`,
       COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Patient Gender`;
/*12,Race distribution*/
SELECT `Patient Race`,
       COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Patient Race`
ORDER BY Patient_Count DESC;
/*13,Patient volume by hour*/
SELECT HOUR(`Patient Admission Date`) AS Hour,
       COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY Hour
ORDER BY Patient_Count DESC;
/*Insight Queries*/
/*14,Busiest days in ER*/
SELECT `Patient Admission Date`,
       COUNT(*) AS Patient_Count
FROM hospital_er_data.`hospital er_data`
GROUP BY `Patient Admission Date`
ORDER BY Patient_Count DESC
LIMIT 5;
/*15,Average wait time by department*/
SELECT `Department Referral`,
       ROUND(AVG(`Patient Waittime`),2) AS Avg_Wait_Time
FROM hospital_er_data.`hospital er_data`
GROUP BY `Department Referral`
ORDER BY Avg_Wait_Time DESC;
/*16,Rank departments based on referrals*/
SELECT `Department Referral`,
       COUNT(*) AS Referral_Count,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS Department_Rank
FROM hospital_er_data.`hospital er_data`
GROUP BY `Department Referral`;