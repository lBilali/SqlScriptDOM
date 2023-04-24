DBCC myDll;

DBCC TRACESTATUS ();

DBCC TRACESTATUS (2528, 3205);

DBCC CLEANTABLE ('AdventureWorks', 'Production.Document', 0);

DBCC Something (a = NULL);

DBCC Something (b = -100);

DBCC myDll
    WITH ALL_ERRORMSGS, COUNT_ROWS, NO_INFOMSGS, TABLERESULTS;

DBCC myDll
    WITH TABLOCK, STAT_HEADER, DENSITY_VECTOR, HISTOGRAM_STEPS;

DBCC myDll
    WITH ESTIMATEONLY, FAST, ALL_LEVELS, ALL_INDEXES, PHYSICAL_ONLY;

DBCC myDll
    WITH ALL_CONSTRAINTS, STATS_STREAM, HISTOGRAM, DATA_PURITY, MARK_IN_USE_FOR_REMOVAL;

DBCC myDll
    WITH STAT_HEADER JOIN DENSITY_VECTOR JOIN STAT_HEADER;