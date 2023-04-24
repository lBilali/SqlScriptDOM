﻿-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options
CREATE TABLE table1 (
    a INT,
    b INT,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    SEQUENCENUMBER_START BIGINT GENERATED ALWAYS AS SEQUENCE_NUMBER START HIDDEN NOT NULL, 
    SEQUENCENUMBER_END BIGINT GENERATED ALWAYS AS SEQUENCE_NUMBER END HIDDEN NULL
);
-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (TRANSACTION_ID_COLUMN_NAME = transactionId, SEQUENCE_NUMBER_COLUMN_NAME = SequenceNumber, OPERATION_TYPE_COLUMN_NAME = OperationId, OPERATION_TYPE_DESC_COLUMN_NAME = OperationTypeDescription)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (TRANSACTION_ID_COLUMN_NAME = transactionId)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options  - TRANSACTION_ID_COLUMN_NAME, SEQUENCE_NUMBER_COLUMN_NAME
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (TRANSACTION_ID_COLUMN_NAME = transactionId, SEQUENCE_NUMBER_COLUMN_NAME = SequenceNumber)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options - TRANSACTION_ID_COLUMN_NAME, SEQUENCE_NUMBER_COLUMN_NAME etc
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (TRANSACTION_ID_COLUMN_NAME = transactionId, SEQUENCE_NUMBER_COLUMN_NAME = SequenceNumber, OPERATION_TYPE_COLUMN_NAME = OperationId)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW 
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER ON 
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON);

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER OFF
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = OFF);

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options - TRANSACTION_ID_COLUMN_NAME, SEQUENCE_NUMBER_COLUMN_NAME etc
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (SEQUENCE_NUMBER_COLUMN_NAME = SequenceNumber, OPERATION_TYPE_COLUMN_NAME = OperationId, OPERATION_TYPE_DESC_COLUMN_NAME = OperationTypeDescription)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW options - TRANSACTION_ID_COLUMN_NAME, SEQUENCE_NUMBER_COLUMN_NAME etc
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger (SEQUENCE_NUMBER_COLUMN_NAME = SequenceNumber, TRANSACTION_ID_COLUMN_NAME = transactionId, OPERATION_TYPE_COLUMN_NAME = OperationId, OPERATION_TYPE_DESC_COLUMN_NAME = OperationTypeDescription)));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW & APPEND_ONLY ON
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger, APPEND_ONLY = ON));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW & APPEND_ONLY OFF
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (LEDGER_VIEW=dbo.t_ledger, APPEND_ONLY = OFF));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with LEDGER_VIEW & APPEND_ONLY
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (APPEND_ONLY = ON, LEDGER_VIEW=dbo.t_ledger));

-- CREATE TABLE .. with TRANSACTION_ID, SEQUENCE_NUMBER options and LEDGER on/off with APPEND_ONLY
CREATE TABLE t (
    COL0      INT,
    COL1      XML,
    COL2      FLOAT,
    COL3      NVARCHAR (64),
    SYS_START DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    SYS_END   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    TRANSACTIONID_START BIGINT GENERATED ALWAYS AS TRANSACTION_ID START NOT NULL,
    TRANSACTIONID_END   BIGINT GENERATED ALWAYS AS TRANSACTION_ID END,
    CONSTRAINT PK_MY_PRIMARY_KEY PRIMARY KEY CLUSTERED (COL0),
    PERIOD FOR SYSTEM_TIME (SYS_START, SYS_END)
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=dbo.t_history), LEDGER = ON (APPEND_ONLY = ON));
