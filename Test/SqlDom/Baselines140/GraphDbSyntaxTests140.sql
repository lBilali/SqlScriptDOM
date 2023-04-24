﻿CREATE TABLE PersonTable (
    name VARCHAR (32)
) AS NODE;

CREATE TABLE LikesTable (
    howmuch INT
) AS EDGE;

CREATE TABLE LikesTable AS EDGE;

CREATE TABLE NODE (
    name VARCHAR (32)
) AS NODE;

CREATE TABLE edge (
    howmuch INT
) AS EDGE;

CREATE TABLE PersonTable (
    name VARCHAR (32)
) AS NODE;

CREATE TABLE LikesTable (
    howmuch INT
) AS EDGE;

CREATE TABLE LikesTable (
    id           INT                                     PRIMARY KEY,
    SysStartTime DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
    SysEndTime   DATETIME2 GENERATED ALWAYS AS ROW END   NOT NULL,
    PERIOD FOR SYSTEM_TIME (SysStartTime, SysEndTime)
) AS EDGE
WITH (SYSTEM_VERSIONING = ON);

SELECT *
FROM NODE;

SELECT *
FROM node;

SELECT *
FROM [NODE];

SELECT *
FROM EDGE;

SELECT *
FROM edge;

SELECT *
FROM [EDGE];

CREATE INDEX IX1
    ON PersonTable($NODE_ID);

CREATE INDEX IX1
    ON LikesTable($EDGE_ID, $FROM_ID, $TO_ID);

CREATE NONCLUSTERED COLUMNSTORE INDEX IX1
    ON PersonTable($NODE_ID);

CREATE NONCLUSTERED COLUMNSTORE INDEX IX1
    ON LikesTable($EDGE_ID, $FROM_ID, $TO_ID);

SELECT *
FROM NODE AS N, EDGE AS E, EDGE AS E2, NODE AS N2
WHERE MATCH(N-(E)->N2
            AND N2<-(E2)-N);

SELECT *
FROM ANYTHING
WHERE MATCH(A-(B)->C
            AND C-(D)->E
            AND E-(F)->G
            AND G-(H)->I);

SELECT *
FROM NODE AS N, EDGE AS E, EDGE AS E2, NODE AS N2
WHERE MATCH(N<-(E)-N2
            AND N2-(E2)->N
            AND N-(E)->N2
            AND N2<-(E)-N);

SELECT *
FROM NODE AS N, EDGE AS E, EDGE AS E2, NODE AS N2
WHERE (MATCH(N<-(E)-N2
             AND N2-(E2)->N)
       AND MATCH(N-(E)->N2
                 AND N2<-(E)-N));

SELECT *
FROM NODETABLE, MATCH() AS X
WHERE MATCH(A-(B)->C);

SELECT *
FROM NODE AS N, EDGE AS E, EDGE AS E2, NODE AS N2
WHERE MATCH(N<-(E)-N2
            AND N2-(E2)->N)
      OR MATCH(N-(E)->N2
               AND N2<-(E)-N);

SELECT *
FROM NODE AS N, EDGE AS E, EDGE AS E2, NODE AS N2
WHERE MATCH(N<-(E)-N2
            AND N2-(E2)->N)
      AND NOT MATCH(N-(E)->N2
                    AND N2<-(E)-N);

CREATE TABLE [dbo].[node_1] (
    c1 INT,
    INDEX idx NONCLUSTERED ($NODE_ID)
) AS NODE;

CREATE TABLE [dbo].[node_2] (
    c1 INT,
    INDEX idx NONCLUSTERED ($NODE_ID, c1)
) AS NODE;

CREATE TABLE [dbo].[node_3] (
    c1 INT,
    INDEX idx NONCLUSTERED COLUMNSTORE ($NODE_ID)
) AS NODE;

CREATE TABLE [dbo].[node_4] (
    c1 INT,
    INDEX idx NONCLUSTERED COLUMNSTORE (c1, $NODE_ID)
) AS NODE;

CREATE TABLE [dbo].[edge_1] (
    c1 INT,
    INDEX idx NONCLUSTERED ($EDGE_ID)
) AS EDGE;

CREATE TABLE [dbo].[edge_2] (
    c1 INT,
    INDEX idx NONCLUSTERED ($FROM_ID, c1)
) AS EDGE;

CREATE TABLE [dbo].[edge_3] (
    c1 INT,
    INDEX idx NONCLUSTERED ($TO_ID, $FROM_ID, $EDGE_ID, c1)
) AS EDGE;

CREATE TABLE [dbo].[edge_4] (
    c1 INT,
    INDEX idx NONCLUSTERED COLUMNSTORE ($EDGE_ID, c1)
) AS EDGE;

CREATE TABLE [dbo].[edge_5] (
    c1 INT,
    INDEX idx NONCLUSTERED COLUMNSTORE ($FROM_ID, $TO_ID, $EDGE_ID, c1)
) AS EDGE;
