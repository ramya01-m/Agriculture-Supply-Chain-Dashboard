CREATE DATABASE AgriSupplyChainDB;

USE AgriSupplyChainDB;

CREATE TABLE agri_supplychain (
    batch_id VARCHAR(50),
    crop_type VARCHAR(50),
    region VARCHAR(50),
    season VARCHAR(50),
    yield_quantity_kg DECIMAL(12,2),
    moisture_content_percent DECIMAL(8,4),
    avg_temperature_celsius DECIMAL(8,2),
    transport_delay_hours DECIMAL(8,2),
    equipment_downtime_hours DECIMAL(8,2),
    storage_duration_days DECIMAL(8,2),
    quality_grade VARCHAR(20),
    spoilage_loss_percent DECIMAL(8,4),
    supply_chain_stage VARCHAR(50),
    resource_utilization_percent DECIMAL(8,4),
    climate_risk_level VARCHAR(30),
    input_cost_per_kg DECIMAL(12,2),
    final_market_price_per_kg DECIMAL(12,2),
    total_input_cost DECIMAL(15,2),
    total_revenue DECIMAL(15,2),
    estimated_profit DECIMAL(15,2),
    profit_margin_percent DECIMAL(10,6),
    spoilage_quantity_kg DECIMAL(12,2)
);

SELECT *
FROM agri_supplychain;

SELECT COUNT(*) AS total_records
FROM dbo.agri_supplychain_cleaned;

SELECT TOP 10 *
FROM dbo.agri_supplychain_cleaned;

sp_help 'dbo.agri_supplychain_cleaned';

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN batch_id IS NULL THEN 1 ELSE 0 END) AS missing_batch_id,
    SUM(CASE WHEN crop_type IS NULL THEN 1 ELSE 0 END) AS missing_crop_type,
    SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS missing_region,
    SUM(CASE WHEN total_revenue IS NULL THEN 1 ELSE 0 END) AS missing_revenue,
    SUM(CASE WHEN estimated_profit IS NULL THEN 1 ELSE 0 END) AS missing_profit
FROM dbo.agri_supplychain_cleaned;

SELECT
    batch_id,
    COUNT(*) AS duplicate_count
FROM dbo.agri_supplychain_cleaned
GROUP BY batch_id
HAVING COUNT(*) > 1;

SELECT
    SUM(total_revenue) AS total_revenue
FROM dbo.agri_supplychain_cleaned;

SELECT
    SUM(total_input_cost) AS total_cost
FROM dbo.agri_supplychain_cleaned;

SELECT
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned;

SELECT
    SUM(yield_quantity_kg) AS total_yield_kg
FROM dbo.agri_supplychain_cleaned;

SELECT
    crop_type,
    SUM(total_revenue) AS total_revenue,
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY total_revenue DESC;

SELECT
    region,
    SUM(total_revenue) AS total_revenue,
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY region
ORDER BY total_revenue DESC;

SELECT
    season,
    COUNT(*) AS total_batches,
    SUM(yield_quantity_kg) AS total_yield_kg,
    SUM(total_revenue) AS total_revenue,
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY season
ORDER BY total_profit DESC;

SELECT
    quality_grade,
    COUNT(*) AS total_batches,
    SUM(yield_quantity_kg) AS total_yield_kg,
    SUM(total_revenue) AS total_revenue,
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY quality_grade
ORDER BY total_profit DESC;

SELECT
    supply_chain_stage,
    COUNT(*) AS total_batches,
    AVG(transport_delay_hours) AS avg_transport_delay,
    AVG(equipment_downtime_hours) AS avg_equipment_downtime,
    AVG(storage_duration_days) AS avg_storage_duration
FROM dbo.agri_supplychain_cleaned
GROUP BY supply_chain_stage
ORDER BY avg_transport_delay DESC;


SELECT
    crop_type,
    SUM(spoilage_quantity_kg) AS total_spoilage_kg,
    AVG(spoilage_loss) AS avg_spoilage
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY total_spoilage_kg DESC;

SELECT
    climate_risk_level,
    COUNT(*) AS total_batches,
    SUM(total_revenue) AS total_revenue,
    SUM(estimated_profit) AS total_profit,
    AVG(spoilage_loss) AS avg_spoilage
FROM dbo.agri_supplychain_cleaned
GROUP BY climate_risk_level
ORDER BY avg_spoilage DESC;

SELECT TOP 5
    crop_type,
    SUM(estimated_profit) AS total_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY total_profit DESC;

SELECT 
    crop_type,
    SUM(total_revenue) AS total_revenue
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY total_revenue DESC;

SELECT 
    crop_type,
    SUM(spoilage_quantity_kg) AS total_spoilage_kg
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY total_spoilage_kg DESC;

SELECT
    crop_type,
    AVG(profit_margin) AS avg_profit
FROM dbo.agri_supplychain_cleaned
GROUP BY crop_type
ORDER BY avg_profit DESC;

alter table dbo.agri_supplychain_cleaned
alter column profit_margin float not null;

select profit_margin
from dbo.agri_supplychain_cleaned
where TRY_CONVERT(float,profit_margin) is
null;

update dbo.agri_supplychain_cleaned
set profit_margin=REPLACE(profit_margin,'%', '');

SELECT
    batch_id,
    crop_type,
    region,
    transport_delay_hours,
    spoilage_loss,
    estimated_profit
FROM dbo.agri_supplychain_cleaned
WHERE transport_delay_hours > 20
   OR spoilage_loss > 10
ORDER BY spoilage_loss DESC;

SELECT
    region,
    COUNT(*) AS total_batches,
    SUM(total_revenue) AS total_revenue,
    SUM(total_input_cost) AS total_cost,
    SUM(estimated_profit) AS total_profit,
    AVG(profit_margin) AS avg_profit_margin
FROM dbo.agri_supplychain_cleaned
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    COUNT(*) AS total_batches,
    SUM(yield_quantity_kg) AS total_yield_kg,
    SUM(total_revenue) AS total_revenue,
    SUM(total_input_cost) AS total_cost,
    SUM(estimated_profit) AS total_profit,
    AVG(profit_margin) AS avg_profit_margin,
    AVG(spoilage_loss) AS avg_spoilage,
    AVG(resource_utilization) AS avg_resource_utilization
FROM dbo.agri_supplychain_cleaned;