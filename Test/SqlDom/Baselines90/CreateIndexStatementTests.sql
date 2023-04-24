CREATE INDEX ind1
    ON t1(c1);

CREATE UNIQUE INDEX ind1
    ON t1(c1 ASC);

CREATE UNIQUE CLUSTERED INDEX ind1
    ON t1(c1 ASC, c2, c3 DESC);

CREATE UNIQUE NONCLUSTERED INDEX ind1
    ON tempdb.dbo.t1(c1) WITH (FILLFACTOR = 23, PAD_INDEX = ON);

CREATE UNIQUE NONCLUSTERED INDEX ind1
    ON tempdb.dbo.t1(c1) WITH (FILLFACTOR = 23, PAD_INDEX = ON)
    ON [default];


GO
CREATE UNIQUE NONCLUSTERED INDEX ind1
    ON tempdb.dbo.t1(c1) WITH (PAD_INDEX = ON, FILLFACTOR = 23, IGNORE_DUP_KEY = ON, DROP_EXISTING = ON, STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = ON);

CREATE INDEX ind1
    ON t1(c1)
    ON myFileGroup;

CREATE INDEX ind1
    ON t1(c1)
    ON 'myFileGroup';
