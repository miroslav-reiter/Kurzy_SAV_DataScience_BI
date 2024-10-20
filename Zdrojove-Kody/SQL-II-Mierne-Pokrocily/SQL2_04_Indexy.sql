
SHOW INDEXES from world;
show databases;

SELECT 
    TABLE_NAME, 
    INDEX_NAME, 
    NON_UNIQUE, 
    COLUMN_NAME, 
    SEQ_IN_INDEX
FROM 
    INFORMATION_SCHEMA.STATISTICS
WHERE 
    TABLE_SCHEMA = 'DB_MySQL';
