CREATE EVENT NOTIFICATION log_ddl1
    ON SERVER
    FOR OBJECT_CREATED
    TO SERVICE 'NotifyService', '8140';

CREATE EVENT NOTIFICATION [log_ddl1]
    ON DATABASE
    WITH FAN_IN
    FOR ALTER_TABLE, OBJECT_CREATED
    TO SERVICE 'NotifyService', '123';

CREATE EVENT NOTIFICATION log_ddl1
    ON QUEUE [myQueue]
    FOR OBJECT_CREATED
    TO SERVICE 'NotifyService', '8140a771-3c4b-4479-8ac0-81008ab17984';

CREATE EVENT NOTIFICATION log_ddl1
    ON SERVER
    FOR CREATE_APPLICATION_ROLE, ALTER_APPLICATION_ROLE, DROP_APPLICATION_ROLE, CREATE_ASSEMBLY, ALTER_ASSEMBLY, DROP_ASSEMBLY, ALTER_AUTHORIZATION_DATABASE, CREATE_CERTIFICATE, ALTER_CERTIFICATE, DROP_CERTIFICATE, CREATE_CONTRACT, DROP_CONTRACT, GRANT_DATABASE, DENY_DATABASE, REVOKE_DATABASE, CREATE_EVENT_NOTIFICATION, DROP_EVENT_NOTIFICATION, CREATE_FUNCTION, ALTER_FUNCTION, DROP_FUNCTION, CREATE_INDEX, ALTER_INDEX, DROP_INDEX, CREATE_MESSAGE_TYPE, ALTER_MESSAGE_TYPE, DROP_MESSAGE_TYPE, CREATE_PARTITION_FUNCTION, ALTER_PARTITION_FUNCTION, DROP_PARTITION_FUNCTION, CREATE_PARTITION_SCHEME, ALTER_PARTITION_SCHEME, DROP_PARTITION_SCHEME, CREATE_PROCEDURE, ALTER_PROCEDURE, DROP_PROCEDURE, CREATE_QUEUE, ALTER_QUEUE, DROP_QUEUE, CREATE_REMOTE_SERVICE_BINDING, ALTER_REMOTE_SERVICE_BINDING, DROP_REMOTE_SERVICE_BINDING, CREATE_ROLE, ALTER_ROLE, DROP_ROLE, CREATE_ROUTE, ALTER_ROUTE, DROP_ROUTE, CREATE_SCHEMA, ALTER_SCHEMA, DROP_SCHEMA, CREATE_SERVICE, ALTER_SERVICE, DROP_SERVICE, CREATE_STATISTICS, DROP_STATISTICS, UPDATE_STATISTICS, CREATE_SYNONYM, DROP_SYNONYM, CREATE_TABLE, ALTER_TABLE, DROP_TABLE, CREATE_TRIGGER, ALTER_TRIGGER, DROP_TRIGGER, CREATE_TYPE, DROP_TYPE, CREATE_USER, ALTER_USER, DROP_USER, CREATE_VIEW, ALTER_VIEW, DROP_VIEW, CREATE_XML_SCHEMA_COLLECTION, ALTER_XML_SCHEMA_COLLECTION, DROP_XML_SCHEMA_COLLECTION, ALTER_AUTHORIZATION_SERVER, CREATE_DATABASE, ALTER_DATABASE, DROP_DATABASE, CREATE_ENDPOINT, DROP_ENDPOINT, ALTER_ENDPOINT, CREATE_LOGIN, ALTER_LOGIN, DROP_LOGIN, GRANT_SERVER, DENY_SERVER, REVOKE_SERVER, ADD_ROLE_MEMBER, ADD_SERVER_ROLE_MEMBER, DROP_ROLE_MEMBER, DROP_SERVER_ROLE_MEMBER, CREATE_XML_INDEX, QUEUE_ACTIVATION, BROKER_QUEUE_DISABLED, ASSEMBLY_LOAD, AUDIT_ADD_DB_USER_EVENT, AUDIT_ADDLOGIN_EVENT, AUDIT_ADD_LOGIN_TO_SERVER_ROLE_EVENT, AUDIT_ADD_MEMBER_TO_DB_ROLE_EVENT, AUDIT_ADD_ROLE_EVENT, AUDIT_APP_ROLE_CHANGE_PASSWORD_EVENT, AUDIT_BACKUP_RESTORE_EVENT, AUDIT_CHANGE_AUDIT_EVENT, AUDIT_CHANGE_DATABASE_OWNER, AUDIT_DATABASE_MANAGEMENT_EVENT, AUDIT_DATABASE_OBJECT_ACCESS_EVENT, AUDIT_DATABASE_OBJECT_GDR_EVENT, AUDIT_DATABASE_OBJECT_MANAGEMENT_EVENT, AUDIT_DATABASE_OBJECT_TAKE_OWNERSHIP_EVENT, AUDIT_DATABASE_OPERATION_EVENT, AUDIT_DATABASE_PRINCIPAL_IMPERSONATION_EVENT, AUDIT_DATABASE_PRINCIPAL_MANAGEMENT_EVENT, AUDIT_DATABASE_SCOPE_GDR_EVENT, AUDIT_DBCC_EVENT, AUDIT_LOGIN, AUDIT_LOGIN_CHANGE_PASSWORD_EVENT, AUDIT_LOGIN_CHANGE_PROPERTY_EVENT, AUDIT_LOGIN_FAILED, AUDIT_LOGIN_GDR_EVENT, AUDIT_LOGOUT, AUDIT_SCHEMA_OBJECT_ACCESS_EVENT, AUDIT_SCHEMA_OBJECT_GDR_EVENT, AUDIT_SCHEMA_OBJECT_MANAGEMENT_EVENT, AUDIT_SCHEMA_OBJECT_TAKE_OWNERSHIP_EVENT, AUDIT_SERVER_ALTER_TRACE_EVENT, AUDIT_SERVER_OBJECT_GDR_EVENT, AUDIT_SERVER_OBJECT_MANAGEMENT_EVENT, AUDIT_SERVER_OBJECT_TAKE_OWNERSHIP_EVENT, AUDIT_SERVER_OPERATION_EVENT, AUDIT_SERVER_PRINCIPAL_IMPERSONATION_EVENT, AUDIT_SERVER_PRINCIPAL_MANAGEMENT_EVENT, AUDIT_SERVER_SCOPE_GDR_EVENT, BLOCKED_PROCESS_REPORT, DATA_FILE_AUTO_GROW, DATA_FILE_AUTO_SHRINK, DATABASE_MIRRORING_STATE_CHANGE, DEADLOCK_GRAPH, DEPRECATION_ANNOUNCEMENT, DEPRECATION_FINAL_SUPPORT, ERRORLOG, EVENTLOG, EXCEPTION, EXCHANGE_SPILL_EVENT, EXECUTION_WARNINGS, FT_CRAWL_ABORTED, FT_CRAWL_STARTED, FT_CRAWL_STOPPED, HASH_WARNING, LOCK_DEADLOCK, LOCK_DEADLOCK_CHAIN, LOCK_ESCALATION, LOG_FILE_AUTO_GROW, LOG_FILE_AUTO_SHRINK, MISSING_COLUMN_STATISTICS, MISSING_JOIN_PREDICATE, MOUNT_TAPE, OBJECT_ALTERED, OBJECT_CREATED, OBJECT_DELETED, OLEDB_CALL_EVENT, OLEDB_DATAREAD_EVENT, OLEDB_ERRORS, OLEDB_PROVIDER_INFORMATION, OLEDB_QUERYINTERFACE_EVENT, QN__DYNAMICS, QN__PARAMETER_TABLE, QN__SUBSCRIPTION, QN__TEMPLATE, SERVER_MEMORY_CHANGE, SHOWPLAN_ALL_FOR_QUERY_COMPILE, SHOWPLAN_XML_FOR_QUERY_COMPILE, SHOWPLAN_XML, SHOWPLAN_XML_STATISTICS_PROFILE, SORT_WARNINGS, SP_CACHEINSERT, SP_CACHEMISS, SP_CACHEREMOVE, SP_RECOMPILE, SQL_STMTRECOMPILE, TRACE_FILE_CLOSE, USER_ERROR_MESSAGE, USERCONFIGURABLE_0, USERCONFIGURABLE_1, USERCONFIGURABLE_2, USERCONFIGURABLE_3, USERCONFIGURABLE_4, USERCONFIGURABLE_5, USERCONFIGURABLE_6, USERCONFIGURABLE_7, USERCONFIGURABLE_8, USERCONFIGURABLE_9, XQUERY_STATIC_TYPE
    TO SERVICE 'NotifyService', '8140';

CREATE EVENT NOTIFICATION log_ddl1
    ON SERVER
    FOR DDL_APPLICATION_ROLE_EVENTS, DDL_ASSEMBLY_EVENTS, DDL_AUTHORIZATION_DATABASE_EVENTS, DDL_AUTHORIZATION_SERVER_EVENTS, DDL_CERTIFICATE_EVENTS, DDL_CONTRACT_EVENTS, DDL_DATABASE_LEVEL_EVENTS, DDL_DATABASE_SECURITY_EVENTS, DDL_ENDPOINT_EVENTS, DDL_EVENT_NOTIFICATION_EVENTS, DDL_FUNCTION_EVENTS, DDL_GDR_DATABASE_EVENTS, DDL_GDR_SERVER_EVENTS, DDL_INDEX_EVENTS, DDL_LOGIN_EVENTS, DDL_MESSAGE_TYPE_EVENTS, DDL_PARTITION_EVENTS, DDL_PARTITION_FUNCTION_EVENTS, DDL_PARTITION_SCHEME_EVENTS, DDL_PROCEDURE_EVENTS, DDL_QUEUE_EVENTS, DDL_REMOTE_SERVICE_BINDING_EVENTS, DDL_ROLE_EVENTS, DDL_ROUTE_EVENTS, DDL_SCHEMA_EVENTS, DDL_SERVER_LEVEL_EVENTS, DDL_SERVER_SECURITY_EVENTS, DDL_SERVICE_EVENTS, DDL_SSB_EVENTS, DDL_STATISTICS_EVENTS, DDL_SYNONYM_EVENTS, DDL_TABLE_EVENTS, DDL_TABLE_VIEW_EVENTS, DDL_TRIGGER_EVENTS, DDL_TYPE_EVENTS, DDL_USER_EVENTS, DDL_VIEW_EVENTS, DDL_XML_SCHEMA_COLLECTION_EVENTS, TRC_CLR, TRC_DATABASE, TRC_DEPRECATION, TRC_ERRORS_AND_WARNINGS, TRC_FULL_TEXT, TRC_LOCKS, TRC_OBJECTS, TRC_OLEDB, TRC_PERFORMANCE, TRC_QUERY_NOTIFICATIONS, TRC_SECURITY_AUDIT, TRC_SERVER, TRC_STORED_PROCEDURES, TRC_TSQL, TRC_USER_CONFIGURABLE
    TO SERVICE 'NotifyService', '8140';

CREATE EVENT NOTIFICATION CreateDatabaseNotification
    ON SERVER
    FOR QN__DYNAMICS, QN__PARAMETER_TABLE, QN__SUBSCRIPTION, QN__TEMPLATE
    TO SERVICE 'NotifyService', '8140a771-3c4b-4479-8ac0-81008ab17984';