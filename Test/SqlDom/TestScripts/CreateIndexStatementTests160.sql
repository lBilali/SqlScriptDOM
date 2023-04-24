-- filter expression using IS [NOT] DISTINCT FROM
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS NOT DISTINCT FROM NULL;
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS DISTINCT FROM NULL;
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS NULL;
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS NOT NULL;
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS NOT DISTINCT FROM 10;
CREATE NONCLUSTERED INDEX ind1 ON t1(c1) WHERE c1 IS DISTINCT FROM 10;

-- xml_compression

-- XML Compression on Unique clusterd index
CREATE UNIQUE CLUSTERED INDEX ind2 
    ON dbo.tb1(c1) WITH (XML_COMPRESSION = ON);

-- XML Compression on Unique Non clustered
CREATE UNIQUE NONCLUSTERED INDEX ind2
    ON dbo.tb1(c2) WITH (XML_COMPRESSION = ON);

-- xml_compression and data_compression
CREATE UNIQUE CLUSTERED INDEX ind2 
    ON dbo.tb1(c1) WITH (XML_COMPRESSION = ON, DATA_COMPRESSION = ROW);

-- XML And DATA Comrpession both enabled on partitions
CREATE UNIQUE NONCLUSTERED INDEX ind2
    ON dbo.tb1(c2) WITH (XML_COMPRESSION = ON ON PARTITIONS (2, 3 TO 5, 4) , DATA_COMPRESSION = ROW ON PARTITIONS (1));

-- XML Index
CREATE PRIMARY XML INDEX ind2
    ON dbo.tb1 (c2) WITH (XML_COMPRESSION = ON);

CREATE XML INDEX ind2
    ON dbo.tb1 (c2) USING XML INDEX ind1 FOR PATH WITH (XML_COMPRESSION = ON);

-- XML Compression OFF 
CREATE UNIQUE CLUSTERED INDEX ind2 
    ON dbo.tb1(c1) WITH (XML_COMPRESSION = OFF);

-- Non clusted index
CREATE INDEX tableWithIndex_index ON dbo.tableWithIndex (c1) WITH (XML_COMPRESSION = ON);

-- Clusted index
CREATE CLUSTERED INDEX tableWithClusteredIndex_index ON dbo.tableWithClusteredIndex (c1) WITH (XML_COMPRESSION = ON);

-- Unique index
CREATE UNIQUE INDEX tableWithUniqueIndex_index ON dbo.tableWithUniqueIndex (c1) WITH (XML_COMPRESSION = ON);