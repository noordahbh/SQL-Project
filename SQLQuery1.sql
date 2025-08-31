-- Explore All Objects in The Database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Explore All Columns in Gold Schema
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'