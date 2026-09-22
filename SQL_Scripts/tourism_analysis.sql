USE tourism_db;

-- =========================================================================
-- STEP 1: VERIFY ROW COUNT & INTEGRITY
-- =========================================================================
SELECT '1. Total Records Check' AS Query_Name, COUNT(*) AS total_records 
FROM tourism_interactions;


-- =========================================================================
-- STEP 2: CLASS IMBALANCE ANALYSIS (Target Variable Breakdown)
-- =========================================================================
SELECT 
    '2. Class Distribution' AS Query_Name,
    Taken_product,
    COUNT(*) AS total_customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM tourism_interactions), 2) AS percentage_share
FROM tourism_interactions
GROUP BY Taken_product;


-- =========================================================================
-- STEP 3: BEHAVIORAL ANALYSIS BY DEVICE & LOCATION TYPE
-- =========================================================================
SELECT 
    '3. Device & Location Conversion Breakdown' AS Query_Name,
    preferred_device,
    preferred_location_type,
    COUNT(UserID) AS total_users,
    SUM(CASE WHEN Taken_product = 'Yes' THEN 1 ELSE 0 END) AS converted_users,
    ROUND(SUM(CASE WHEN Taken_product = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(UserID), 2) AS conversion_rate_pct
FROM tourism_interactions
WHERE preferred_device IS NOT NULL AND preferred_location_type IS NOT NULL
GROUP BY preferred_device, preferred_location_type
ORDER BY conversion_rate_pct DESC;


-- =========================================================================
-- STEP 4: ENGAGEMENT & REVENUE METRICS SUMMARY
-- =========================================================================
SELECT 
    '4. Averages by Product Conversion' AS Query_Name,
    Taken_product,
    ROUND(AVG(Yearly_avg_view_on_travel_page), 2) AS avg_travel_page_views,
    ROUND(AVG(total_likes_on_outstation_checkin_given), 2) AS avg_likes_given,
    ROUND(AVG(Yearly_avg_comment_on_travel_page), 2) AS avg_comments
FROM tourism_interactions
GROUP BY Taken_product;
