-- xml compression
CREATE TABLE t1 (c1 INT) 
	WITH (XML_COMPRESSION = ON ON PARTITIONS (1))
		
CREATE TABLE t1 (c1 INT) 
	WITH (XML_COMPRESSION = ON ON PARTITIONS (2, 3 TO 5, 4)) 

CREATE TABLE t3 (c1 INT) 
	WITH (XML_COMPRESSION = ON);

CREATE TABLE t1 (c1 INT) 
	WITH (XML_COMPRESSION = OFF ON PARTITIONS (1))

-- xml compression and data_compression
CREATE TABLE t1 (c1 INT) 
	WITH (XML_COMPRESSION = ON ON PARTITIONS (1), DATA_COMPRESSION = ROW ON PARTITIONS (1))
		
CREATE TABLE t1 (c1 INT) 
	WITH (XML_COMPRESSION = ON ON PARTITIONS (2, 3 TO 5, 4), DATA_COMPRESSION = ROW ON PARTITIONS (2, 3 TO 5, 4)) 

CREATE TABLE t3 (c1 INT) 
	WITH (XML_COMPRESSION = ON, DATA_COMPRESSION = PAGE);