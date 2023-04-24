﻿-- Create Index Resumable Option tests
CREATE INDEX ind1 ON db.t1(c1) WITH(ONLINE = ON, RESUMABLE = ON);
CREATE INDEX ind1 ON db.t1(c1) WITH(ONLINE = ON, RESUMABLE = OFF);
CREATE INDEX ind1 ON [db].t1(c1,    c2) WITH(ONLINE = ON, RESUMABLE = OFF);
CREATE INDEX ind1 ON db.t1(c1) WITH(ONLINE = ON, RESUMABLE = ON, MAX_DURATION = 1);
CREATE INDEX ind1 ON db.t1(c1) WITH(ONLINE = ON, RESUMABLE = ON, MAX_DURATION = 10 MINUTES);

-- Create Index with OPTIMIZE_FOR_SEQUENTIAL_KEY option
CREATE INDEX ind1 ON db.t1(c1) WITH (OPTIMIZE_FOR_SEQUENTIAL_KEY = ON);
CREATE INDEX ind1 ON db.t1(c1) WITH (OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF);
CREATE INDEX ind1 ON db.t1(c1) WITH (ONLINE = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = ON);
CREATE INDEX ind1 ON db.t1(c1) WITH (ONLINE = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF);