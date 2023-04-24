CREATE MATERIALIZED VIEW View1  
WITH (DISTRIBUTION = HASH(Col5), FOR_APPEND)
AS
SELECT MAX(Col1) as Max_Col1, MIN(Col2) as Min_Col2, Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
CREATE MATERIALIZED VIEW View1  
WITH (DISTRIBUTION = ROUND_ROBIN, FOR_APPEND)
AS
SELECT MAX(Col1) as Max_Col1, MIN(Col2) as Min_Col2, Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
CREATE MATERIALIZED VIEW View1  
WITH (FOR_APPEND, DISTRIBUTION = HASH(Col5))
AS
SELECT MAX(Col1) as Max_Col1, MIN(Col2) as Min_Col2, Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
CREATE MATERIALIZED VIEW View1  
WITH (FOR_APPEND, DISTRIBUTION = ROUND_ROBIN)
AS
SELECT MAX(Col1) as Max_Col1, MIN(Col2) as Min_Col2, Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
CREATE MATERIALIZED VIEW View1  
WITH (DISTRIBUTION = HASH(Col5))
AS
SELECT Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
CREATE MATERIALIZED VIEW View1  
WITH (DISTRIBUTION = ROUND_ROBIN)
AS
SELECT Col3, Col4, Col5
FROM dbo.Table1  
GROUP BY Col3, Col4, Col5


GO
ALTER MATERIALIZED VIEW View1 REBUILD;


GO
ALTER MATERIALIZED VIEW View1 DISABLE;


GO
CREATE PROCEDURE Proc1 AS
BEGIN
ALTER MATERIALIZED VIEW View1 REBUILD;
END


GO
CREATE PROCEDURE Proc1 AS
BEGIN
ALTER MATERIALIZED VIEW View1 DISABLE;
END