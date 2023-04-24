ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG ON;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG OFF;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG MAX_SIZE = 852 MB;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG MAX_FILES = 24;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG PATH = 'hello';

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG MAX_SIZE = DEFAULT;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG MAX_FILES = DEFAULT;

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG PATH = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY VerboseLogging = 2;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpFlags = 0x0118124deadbeef;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpPath = 'c:\foo';

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpTimeout = 600;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY FailureConditionLevel = 1;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY HealthCheckTimeout = 1200;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY VerboseLogging = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpFlags = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpPath = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY SqlDumperDumpTimeout = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY FailureConditionLevel = DEFAULT;

ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY HealthCheckTimeout = DEFAULT;

ALTER SERVER CONFIGURATION SET BUFFER POOL EXTENSION ON (FILENAME = 'foo', SIZE = 4349 KB);

ALTER SERVER CONFIGURATION SET BUFFER POOL EXTENSION ON (FILENAME = 'foo', SIZE = 654 MB);

ALTER SERVER CONFIGURATION SET BUFFER POOL EXTENSION ON (FILENAME = 'foo', SIZE = 42 GB);

ALTER SERVER CONFIGURATION SET BUFFER POOL EXTENSION OFF;

ALTER SERVER CONFIGURATION SET HADR CLUSTER CONTEXT = 'foo';

ALTER SERVER CONFIGURATION SET HADR CLUSTER CONTEXT = LOCAL;