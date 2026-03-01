// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_v2_pending_update.dart';
import 'database_mysql_v2_private_network.dart';
import 'database_mysql_v2_timeouts.dart';
import 'database_mysql_v2_updates.dart';

/// Input properties used for looking up and filtering DatabaseMysqlV2 resources.
class DatabaseMysqlV2State {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database.
  final pulumi.Input<String>? caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
  /// When this Managed Database was created.
  final pulumi.Input<String>? created;
  /// Whether the Managed Databases is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// The Managed Database engine. (e.g. `mysql`)
  final pulumi.Input<String>? engine;
  /// The minimum amount of time in seconds to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  final pulumi.Input<int>? engineConfigBinlogRetentionPeriod;
  /// The number of seconds that the mysqld server waits for a connect packet before responding with "Bad handshake".
  final pulumi.Input<int>? engineConfigMysqlConnectTimeout;
  /// Default server time zone as an offset from UTC (from -12:00 to +12:00), a time zone name, or `SYSTEM` to use the MySQL server default.
  final pulumi.Input<String>? engineConfigMysqlDefaultTimeZone;
  /// The maximum permitted result length in bytes for the `GROUP_CONCAT()` function.
  final pulumi.Input<double>? engineConfigMysqlGroupConcatMaxLen;
  /// The time, in seconds, before cached statistics expire.
  final pulumi.Input<int>? engineConfigMysqlInformationSchemaStatsExpiry;
  /// Maximum size for the InnoDB change buffer, as a percentage of the total size of the buffer pool. Default is 25.
  final pulumi.Input<int>? engineConfigMysqlInnodbChangeBufferMaxSize;
  /// Specifies whether flushing a page from the InnoDB buffer pool also flushes other dirty pages in the same extent (default is 1): 0 - dirty pages in the same extent are not flushed, 1 - flush contiguous dirty pages in the same extent, 2 - flush dirty pages in the same extent.
  final pulumi.Input<int>? engineConfigMysqlInnodbFlushNeighbors;
  /// Minimum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service.
  final pulumi.Input<int>? engineConfigMysqlInnodbFtMinTokenSize;
  /// This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables. This field is nullable.
  final pulumi.Input<String>? engineConfigMysqlInnodbFtServerStopwordTable;
  /// The length of time in seconds an InnoDB transaction waits for a row lock before giving up. Default is 120.
  final pulumi.Input<int>? engineConfigMysqlInnodbLockWaitTimeout;
  /// The size in bytes of the buffer that InnoDB uses to write to the log files on disk.
  final pulumi.Input<int>? engineConfigMysqlInnodbLogBufferSize;
  /// The upper limit in bytes on the size of the temporary log files used during online DDL operations for InnoDB tables.
  final pulumi.Input<int>? engineConfigMysqlInnodbOnlineAlterLogMaxSize;
  /// The number of I/O threads for read operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  final pulumi.Input<int>? engineConfigMysqlInnodbReadIoThreads;
  /// When enabled, a transaction timeout causes InnoDB to abort and roll back the entire transaction. Changing this parameter will lead to a restart of the MySQL service.
  final pulumi.Input<bool>? engineConfigMysqlInnodbRollbackOnTimeout;
  /// Defines the maximum number of threads permitted inside of InnoDB. Default is 0 (infinite concurrency - no limit).
  final pulumi.Input<int>? engineConfigMysqlInnodbThreadConcurrency;
  /// The number of I/O threads for write operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  final pulumi.Input<int>? engineConfigMysqlInnodbWriteIoThreads;
  /// The number of seconds the server waits for activity on an interactive connection before closing it.
  final pulumi.Input<int>? engineConfigMysqlInteractiveTimeout;
  /// The storage engine for in-memory internal temporary tables.
  final pulumi.Input<String>? engineConfigMysqlInternalTmpMemStorageEngine;
  /// Size of the largest message in bytes that can be received by the server. Default is 67108864 (64M).
  final pulumi.Input<int>? engineConfigMysqlMaxAllowedPacket;
  /// Limits the size of internal in-memory tables. Also set tmp_table_size. Default is 16777216 (16M).
  final pulumi.Input<int>? engineConfigMysqlMaxHeapTableSize;
  /// Start sizes of connection buffer and result buffer. Default is 16384 (16K). Changing this parameter will lead to a restart of the MySQL service.
  final pulumi.Input<int>? engineConfigMysqlNetBufferLength;
  /// The number of seconds to wait for more data from a connection before aborting the read.
  final pulumi.Input<int>? engineConfigMysqlNetReadTimeout;
  /// The number of seconds to wait for a block to be written to a connection before aborting the write.
  final pulumi.Input<int>? engineConfigMysqlNetWriteTimeout;
  /// Sort buffer size in bytes for ORDER BY optimization. Default is 262144 (256K).
  final pulumi.Input<int>? engineConfigMysqlSortBufferSize;
  /// Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned. (default `ANSI,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE,STRICT_ALL_TABLES`)
  final pulumi.Input<String>? engineConfigMysqlSqlMode;
  /// Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them. (default `true`)
  final pulumi.Input<bool>? engineConfigMysqlSqlRequirePrimaryKey;
  /// Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
  final pulumi.Input<int>? engineConfigMysqlTmpTableSize;
  /// The number of seconds the server waits for activity on a noninteractive connection before closing it.
  final pulumi.Input<int>? engineConfigMysqlWaitTimeout;
  /// The Managed Database engine in engine/version format. (e.g. `mysql`)
  final pulumi.Input<String>? engineId;
  /// The database timestamp from which it was restored.
  final pulumi.Input<String>? forkRestoreTime;
  /// The ID of the database that was forked from.
  ///
  /// * `private_network` - (Optional) Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<int>? forkSource;
  /// The primary host for the Managed Database.
  final pulumi.Input<String>? hostPrimary;
  /// The secondary/private host for the managed database.
  final pulumi.Input<String>? hostSecondary;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String>? label;
  /// A mapping between IP addresses and strings designating them as primary or failover.
  final pulumi.Input<Map<String, String>>? members;
  /// The oldest time to which a database can be restored.
  final pulumi.Input<String>? oldestRestoreTime;
  /// A set of pending updates.
  final pulumi.Input<List<DatabaseMysqlV2PendingUpdate>>? pendingUpdates;
  /// The back-end platform for relational databases used by the service.
  final pulumi.Input<String>? platform;
  /// The access port for this Managed Database.
  final pulumi.Input<int>? port;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  final pulumi.Input<DatabaseMysqlV2PrivateNetwork>? privateNetwork;
  /// The region to use for the Managed Database.
  final pulumi.Input<String>? region;
  /// The randomly-generated root password for the Managed Database instance.
  final pulumi.Input<String>? rootPassword;
  /// The root username for the Managed Database instance.
  final pulumi.Input<String>? rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  final pulumi.Input<bool>? sslConnection;
  /// The operating status of the Managed Database.
  final pulumi.Input<String>? status;
  /// Whether this Managed Database should be suspended.
  final pulumi.Input<bool>? suspended;
  final pulumi.Input<DatabaseMysqlV2Timeouts>? timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  final pulumi.Input<String>? type;
  /// When this Managed Database was last updated.
  final pulumi.Input<String>? updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabaseMysqlV2Updates>? updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  final pulumi.Input<String>? version;

  /// Creates a new [DatabaseMysqlV2State].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [caCert] The base64-encoded SSL CA certificate for the Managed Database.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [created] When this Managed Database was created.
  /// [encrypted] Whether the Managed Databases is encrypted.
  /// [engine] The Managed Database engine. (e.g. `mysql`)
  /// [engineConfigBinlogRetentionPeriod] The minimum amount of time in seconds to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  /// [engineConfigMysqlConnectTimeout] The number of seconds that the mysqld server waits for a connect packet before responding with "Bad handshake".
  /// [engineConfigMysqlDefaultTimeZone] Default server time zone as an offset from UTC (from -12:00 to +12:00), a time zone name, or `SYSTEM` to use the MySQL server default.
  /// [engineConfigMysqlGroupConcatMaxLen] The maximum permitted result length in bytes for the `GROUP_CONCAT()` function.
  /// [engineConfigMysqlInformationSchemaStatsExpiry] The time, in seconds, before cached statistics expire.
  /// [engineConfigMysqlInnodbChangeBufferMaxSize] Maximum size for the InnoDB change buffer, as a percentage of the total size of the buffer pool. Default is 25.
  /// [engineConfigMysqlInnodbFlushNeighbors] Specifies whether flushing a page from the InnoDB buffer pool also flushes other dirty pages in the same extent (default is 1): 0 - dirty pages in the same extent are not flushed, 1 - flush contiguous dirty pages in the same extent, 2 - flush dirty pages in the same extent.
  /// [engineConfigMysqlInnodbFtMinTokenSize] Minimum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service.
  /// [engineConfigMysqlInnodbFtServerStopwordTable] This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables. This field is nullable.
  /// [engineConfigMysqlInnodbLockWaitTimeout] The length of time in seconds an InnoDB transaction waits for a row lock before giving up. Default is 120.
  /// [engineConfigMysqlInnodbLogBufferSize] The size in bytes of the buffer that InnoDB uses to write to the log files on disk.
  /// [engineConfigMysqlInnodbOnlineAlterLogMaxSize] The upper limit in bytes on the size of the temporary log files used during online DDL operations for InnoDB tables.
  /// [engineConfigMysqlInnodbReadIoThreads] The number of I/O threads for read operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  /// [engineConfigMysqlInnodbRollbackOnTimeout] When enabled, a transaction timeout causes InnoDB to abort and roll back the entire transaction. Changing this parameter will lead to a restart of the MySQL service.
  /// [engineConfigMysqlInnodbThreadConcurrency] Defines the maximum number of threads permitted inside of InnoDB. Default is 0 (infinite concurrency - no limit).
  /// [engineConfigMysqlInnodbWriteIoThreads] The number of I/O threads for write operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  /// [engineConfigMysqlInteractiveTimeout] The number of seconds the server waits for activity on an interactive connection before closing it.
  /// [engineConfigMysqlInternalTmpMemStorageEngine] The storage engine for in-memory internal temporary tables.
  /// [engineConfigMysqlMaxAllowedPacket] Size of the largest message in bytes that can be received by the server. Default is 67108864 (64M).
  /// [engineConfigMysqlMaxHeapTableSize] Limits the size of internal in-memory tables. Also set tmp_table_size. Default is 16777216 (16M).
  /// [engineConfigMysqlNetBufferLength] Start sizes of connection buffer and result buffer. Default is 16384 (16K). Changing this parameter will lead to a restart of the MySQL service.
  /// [engineConfigMysqlNetReadTimeout] The number of seconds to wait for more data from a connection before aborting the read.
  /// [engineConfigMysqlNetWriteTimeout] The number of seconds to wait for a block to be written to a connection before aborting the write.
  /// [engineConfigMysqlSortBufferSize] Sort buffer size in bytes for ORDER BY optimization. Default is 262144 (256K).
  /// [engineConfigMysqlSqlMode] Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned. (default `ANSI,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE,STRICT_ALL_TABLES`)
  /// [engineConfigMysqlSqlRequirePrimaryKey] Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them. (default `true`)
  /// [engineConfigMysqlTmpTableSize] Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
  /// [engineConfigMysqlWaitTimeout] The number of seconds the server waits for activity on a noninteractive connection before closing it.
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `mysql`)
  /// [forkRestoreTime] The database timestamp from which it was restored.
  /// [forkSource] The ID of the database that was forked from.
  /// [hostPrimary] The primary host for the Managed Database.
  /// [hostSecondary] The secondary/private host for the managed database.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [members] A mapping between IP addresses and strings designating them as primary or failover.
  /// [oldestRestoreTime] The oldest time to which a database can be restored.
  /// [pendingUpdates] A set of pending updates.
  /// [platform] The back-end platform for relational databases used by the service.
  /// [port] The access port for this Managed Database.
  /// [privateNetwork] Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  /// [region] The region to use for the Managed Database.
  /// [rootPassword] The randomly-generated root password for the Managed Database instance.
  /// [rootUsername] The root username for the Managed Database instance.
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database.
  /// [status] The operating status of the Managed Database.
  /// [suspended] Whether this Managed Database should be suspended.
  /// [timeouts] Optional.
  /// [type] The Linode Instance type used for the nodes of the Managed Database.
  /// [updated] When this Managed Database was last updated.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  /// [version] The Managed Database engine version. (e.g. `13.2`)
  DatabaseMysqlV2State({
    pulumi.Output<List<String>>? allowLists,
    pulumi.Output<String>? caCert,
    pulumi.Output<int>? clusterSize,
    pulumi.Output<String>? created,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? engine,
    pulumi.Output<int>? engineConfigBinlogRetentionPeriod,
    pulumi.Output<int>? engineConfigMysqlConnectTimeout,
    pulumi.Output<String>? engineConfigMysqlDefaultTimeZone,
    pulumi.Output<double>? engineConfigMysqlGroupConcatMaxLen,
    pulumi.Output<int>? engineConfigMysqlInformationSchemaStatsExpiry,
    pulumi.Output<int>? engineConfigMysqlInnodbChangeBufferMaxSize,
    pulumi.Output<int>? engineConfigMysqlInnodbFlushNeighbors,
    pulumi.Output<int>? engineConfigMysqlInnodbFtMinTokenSize,
    pulumi.Output<String>? engineConfigMysqlInnodbFtServerStopwordTable,
    pulumi.Output<int>? engineConfigMysqlInnodbLockWaitTimeout,
    pulumi.Output<int>? engineConfigMysqlInnodbLogBufferSize,
    pulumi.Output<int>? engineConfigMysqlInnodbOnlineAlterLogMaxSize,
    pulumi.Output<int>? engineConfigMysqlInnodbReadIoThreads,
    pulumi.Output<bool>? engineConfigMysqlInnodbRollbackOnTimeout,
    pulumi.Output<int>? engineConfigMysqlInnodbThreadConcurrency,
    pulumi.Output<int>? engineConfigMysqlInnodbWriteIoThreads,
    pulumi.Output<int>? engineConfigMysqlInteractiveTimeout,
    pulumi.Output<String>? engineConfigMysqlInternalTmpMemStorageEngine,
    pulumi.Output<int>? engineConfigMysqlMaxAllowedPacket,
    pulumi.Output<int>? engineConfigMysqlMaxHeapTableSize,
    pulumi.Output<int>? engineConfigMysqlNetBufferLength,
    pulumi.Output<int>? engineConfigMysqlNetReadTimeout,
    pulumi.Output<int>? engineConfigMysqlNetWriteTimeout,
    pulumi.Output<int>? engineConfigMysqlSortBufferSize,
    pulumi.Output<String>? engineConfigMysqlSqlMode,
    pulumi.Output<bool>? engineConfigMysqlSqlRequirePrimaryKey,
    pulumi.Output<int>? engineConfigMysqlTmpTableSize,
    pulumi.Output<int>? engineConfigMysqlWaitTimeout,
    pulumi.Output<String>? engineId,
    pulumi.Output<String>? forkRestoreTime,
    pulumi.Output<int>? forkSource,
    pulumi.Output<String>? hostPrimary,
    pulumi.Output<String>? hostSecondary,
    pulumi.Output<String>? label,
    pulumi.Output<Map<String, String>>? members,
    pulumi.Output<String>? oldestRestoreTime,
    pulumi.Output<List<DatabaseMysqlV2PendingUpdate>>? pendingUpdates,
    pulumi.Output<String>? platform,
    pulumi.Output<int>? port,
    pulumi.Output<DatabaseMysqlV2PrivateNetwork>? privateNetwork,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootPassword,
    pulumi.Output<String>? rootUsername,
    pulumi.Output<bool>? sslConnection,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? suspended,
    pulumi.Output<DatabaseMysqlV2Timeouts>? timeouts,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updated,
    pulumi.Output<DatabaseMysqlV2Updates>? updates,
    pulumi.Output<String>? version,
  }) :
      allowLists = pulumi.Input.asOptionalInput<List<String>>(allowLists),
      caCert = pulumi.Input.asOptionalInput<String>(caCert),
      clusterSize = pulumi.Input.asOptionalInput<int>(clusterSize),
      created = pulumi.Input.asOptionalInput<String>(created),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineConfigBinlogRetentionPeriod = pulumi.Input.asOptionalInput<int>(engineConfigBinlogRetentionPeriod),
      engineConfigMysqlConnectTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlConnectTimeout),
      engineConfigMysqlDefaultTimeZone = pulumi.Input.asOptionalInput<String>(engineConfigMysqlDefaultTimeZone),
      engineConfigMysqlGroupConcatMaxLen = pulumi.Input.asOptionalInput<double>(engineConfigMysqlGroupConcatMaxLen),
      engineConfigMysqlInformationSchemaStatsExpiry = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInformationSchemaStatsExpiry),
      engineConfigMysqlInnodbChangeBufferMaxSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbChangeBufferMaxSize),
      engineConfigMysqlInnodbFlushNeighbors = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbFlushNeighbors),
      engineConfigMysqlInnodbFtMinTokenSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbFtMinTokenSize),
      engineConfigMysqlInnodbFtServerStopwordTable = pulumi.Input.asOptionalInput<String>(engineConfigMysqlInnodbFtServerStopwordTable),
      engineConfigMysqlInnodbLockWaitTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbLockWaitTimeout),
      engineConfigMysqlInnodbLogBufferSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbLogBufferSize),
      engineConfigMysqlInnodbOnlineAlterLogMaxSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbOnlineAlterLogMaxSize),
      engineConfigMysqlInnodbReadIoThreads = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbReadIoThreads),
      engineConfigMysqlInnodbRollbackOnTimeout = pulumi.Input.asOptionalInput<bool>(engineConfigMysqlInnodbRollbackOnTimeout),
      engineConfigMysqlInnodbThreadConcurrency = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbThreadConcurrency),
      engineConfigMysqlInnodbWriteIoThreads = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInnodbWriteIoThreads),
      engineConfigMysqlInteractiveTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlInteractiveTimeout),
      engineConfigMysqlInternalTmpMemStorageEngine = pulumi.Input.asOptionalInput<String>(engineConfigMysqlInternalTmpMemStorageEngine),
      engineConfigMysqlMaxAllowedPacket = pulumi.Input.asOptionalInput<int>(engineConfigMysqlMaxAllowedPacket),
      engineConfigMysqlMaxHeapTableSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlMaxHeapTableSize),
      engineConfigMysqlNetBufferLength = pulumi.Input.asOptionalInput<int>(engineConfigMysqlNetBufferLength),
      engineConfigMysqlNetReadTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlNetReadTimeout),
      engineConfigMysqlNetWriteTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlNetWriteTimeout),
      engineConfigMysqlSortBufferSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlSortBufferSize),
      engineConfigMysqlSqlMode = pulumi.Input.asOptionalInput<String>(engineConfigMysqlSqlMode),
      engineConfigMysqlSqlRequirePrimaryKey = pulumi.Input.asOptionalInput<bool>(engineConfigMysqlSqlRequirePrimaryKey),
      engineConfigMysqlTmpTableSize = pulumi.Input.asOptionalInput<int>(engineConfigMysqlTmpTableSize),
      engineConfigMysqlWaitTimeout = pulumi.Input.asOptionalInput<int>(engineConfigMysqlWaitTimeout),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      forkRestoreTime = pulumi.Input.asOptionalInput<String>(forkRestoreTime),
      forkSource = pulumi.Input.asOptionalInput<int>(forkSource),
      hostPrimary = pulumi.Input.asOptionalInput<String>(hostPrimary),
      hostSecondary = pulumi.Input.asOptionalInput<String>(hostSecondary),
      label = pulumi.Input.asOptionalInput<String>(label),
      members = pulumi.Input.asOptionalInput<Map<String, String>>(members),
      oldestRestoreTime = pulumi.Input.asOptionalInput<String>(oldestRestoreTime),
      pendingUpdates = pulumi.Input.asOptionalInput<List<DatabaseMysqlV2PendingUpdate>>(pendingUpdates),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      port = pulumi.Input.asOptionalInput<int>(port),
      privateNetwork = pulumi.Input.asOptionalInput<DatabaseMysqlV2PrivateNetwork>(privateNetwork),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootPassword = pulumi.Input.asOptionalInput<String>(rootPassword),
      rootUsername = pulumi.Input.asOptionalInput<String>(rootUsername),
      sslConnection = pulumi.Input.asOptionalInput<bool>(sslConnection),
      status = pulumi.Input.asOptionalInput<String>(status),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended),
      timeouts = pulumi.Input.asOptionalInput<DatabaseMysqlV2Timeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updates = pulumi.Input.asOptionalInput<DatabaseMysqlV2Updates>(updates),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'caCert': ?caCert,
      'clusterSize': ?clusterSize,
      'created': ?created,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineConfigBinlogRetentionPeriod': ?engineConfigBinlogRetentionPeriod,
      'engineConfigMysqlConnectTimeout': ?engineConfigMysqlConnectTimeout,
      'engineConfigMysqlDefaultTimeZone': ?engineConfigMysqlDefaultTimeZone,
      'engineConfigMysqlGroupConcatMaxLen': ?engineConfigMysqlGroupConcatMaxLen,
      'engineConfigMysqlInformationSchemaStatsExpiry': ?engineConfigMysqlInformationSchemaStatsExpiry,
      'engineConfigMysqlInnodbChangeBufferMaxSize': ?engineConfigMysqlInnodbChangeBufferMaxSize,
      'engineConfigMysqlInnodbFlushNeighbors': ?engineConfigMysqlInnodbFlushNeighbors,
      'engineConfigMysqlInnodbFtMinTokenSize': ?engineConfigMysqlInnodbFtMinTokenSize,
      'engineConfigMysqlInnodbFtServerStopwordTable': ?engineConfigMysqlInnodbFtServerStopwordTable,
      'engineConfigMysqlInnodbLockWaitTimeout': ?engineConfigMysqlInnodbLockWaitTimeout,
      'engineConfigMysqlInnodbLogBufferSize': ?engineConfigMysqlInnodbLogBufferSize,
      'engineConfigMysqlInnodbOnlineAlterLogMaxSize': ?engineConfigMysqlInnodbOnlineAlterLogMaxSize,
      'engineConfigMysqlInnodbReadIoThreads': ?engineConfigMysqlInnodbReadIoThreads,
      'engineConfigMysqlInnodbRollbackOnTimeout': ?engineConfigMysqlInnodbRollbackOnTimeout,
      'engineConfigMysqlInnodbThreadConcurrency': ?engineConfigMysqlInnodbThreadConcurrency,
      'engineConfigMysqlInnodbWriteIoThreads': ?engineConfigMysqlInnodbWriteIoThreads,
      'engineConfigMysqlInteractiveTimeout': ?engineConfigMysqlInteractiveTimeout,
      'engineConfigMysqlInternalTmpMemStorageEngine': ?engineConfigMysqlInternalTmpMemStorageEngine,
      'engineConfigMysqlMaxAllowedPacket': ?engineConfigMysqlMaxAllowedPacket,
      'engineConfigMysqlMaxHeapTableSize': ?engineConfigMysqlMaxHeapTableSize,
      'engineConfigMysqlNetBufferLength': ?engineConfigMysqlNetBufferLength,
      'engineConfigMysqlNetReadTimeout': ?engineConfigMysqlNetReadTimeout,
      'engineConfigMysqlNetWriteTimeout': ?engineConfigMysqlNetWriteTimeout,
      'engineConfigMysqlSortBufferSize': ?engineConfigMysqlSortBufferSize,
      'engineConfigMysqlSqlMode': ?engineConfigMysqlSqlMode,
      'engineConfigMysqlSqlRequirePrimaryKey': ?engineConfigMysqlSqlRequirePrimaryKey,
      'engineConfigMysqlTmpTableSize': ?engineConfigMysqlTmpTableSize,
      'engineConfigMysqlWaitTimeout': ?engineConfigMysqlWaitTimeout,
      'engineId': ?engineId,
      'forkRestoreTime': ?forkRestoreTime,
      'forkSource': ?forkSource,
      'hostPrimary': ?hostPrimary,
      'hostSecondary': ?hostSecondary,
      'label': ?label,
      'members': ?members,
      'oldestRestoreTime': ?oldestRestoreTime,
      'pendingUpdates': ?pulumi.Input.mapOptionalInputValue<List<DatabaseMysqlV2PendingUpdate>, List<Map<String, dynamic>>>(pendingUpdates, (value) => pulumi.Input.encodeList<DatabaseMysqlV2PendingUpdate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platform': ?platform,
      'port': ?port,
      'privateNetwork': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2PrivateNetwork, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'region': ?region,
      'rootPassword': ?rootPassword,
      'rootUsername': ?rootUsername,
      'sslConnection': ?sslConnection,
      'status': ?status,
      'suspended': ?suspended,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2Timeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'updated': ?updated,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory DatabaseMysqlV2State.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlV2State(
      allowLists: map['allowLists'] == null ? null : pulumi.Output.create<List<String>>((map['allowLists'] as List).cast<String>()),
      caCert: map['caCert'] == null ? null : pulumi.Output.create<String>(map['caCert'] as String),
      clusterSize: map['clusterSize'] == null ? null : pulumi.Output.create<int>(map['clusterSize'] as int),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineConfigBinlogRetentionPeriod: map['engineConfigBinlogRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['engineConfigBinlogRetentionPeriod'] as int),
      engineConfigMysqlConnectTimeout: map['engineConfigMysqlConnectTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlConnectTimeout'] as int),
      engineConfigMysqlDefaultTimeZone: map['engineConfigMysqlDefaultTimeZone'] == null ? null : pulumi.Output.create<String>(map['engineConfigMysqlDefaultTimeZone'] as String),
      engineConfigMysqlGroupConcatMaxLen: map['engineConfigMysqlGroupConcatMaxLen'] == null ? null : pulumi.Output.create<double>(map['engineConfigMysqlGroupConcatMaxLen'] as double),
      engineConfigMysqlInformationSchemaStatsExpiry: map['engineConfigMysqlInformationSchemaStatsExpiry'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInformationSchemaStatsExpiry'] as int),
      engineConfigMysqlInnodbChangeBufferMaxSize: map['engineConfigMysqlInnodbChangeBufferMaxSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbChangeBufferMaxSize'] as int),
      engineConfigMysqlInnodbFlushNeighbors: map['engineConfigMysqlInnodbFlushNeighbors'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbFlushNeighbors'] as int),
      engineConfigMysqlInnodbFtMinTokenSize: map['engineConfigMysqlInnodbFtMinTokenSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbFtMinTokenSize'] as int),
      engineConfigMysqlInnodbFtServerStopwordTable: map['engineConfigMysqlInnodbFtServerStopwordTable'] == null ? null : pulumi.Output.create<String>(map['engineConfigMysqlInnodbFtServerStopwordTable'] as String),
      engineConfigMysqlInnodbLockWaitTimeout: map['engineConfigMysqlInnodbLockWaitTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbLockWaitTimeout'] as int),
      engineConfigMysqlInnodbLogBufferSize: map['engineConfigMysqlInnodbLogBufferSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbLogBufferSize'] as int),
      engineConfigMysqlInnodbOnlineAlterLogMaxSize: map['engineConfigMysqlInnodbOnlineAlterLogMaxSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbOnlineAlterLogMaxSize'] as int),
      engineConfigMysqlInnodbReadIoThreads: map['engineConfigMysqlInnodbReadIoThreads'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbReadIoThreads'] as int),
      engineConfigMysqlInnodbRollbackOnTimeout: map['engineConfigMysqlInnodbRollbackOnTimeout'] == null ? null : pulumi.Output.create<bool>(map['engineConfigMysqlInnodbRollbackOnTimeout'] as bool),
      engineConfigMysqlInnodbThreadConcurrency: map['engineConfigMysqlInnodbThreadConcurrency'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbThreadConcurrency'] as int),
      engineConfigMysqlInnodbWriteIoThreads: map['engineConfigMysqlInnodbWriteIoThreads'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInnodbWriteIoThreads'] as int),
      engineConfigMysqlInteractiveTimeout: map['engineConfigMysqlInteractiveTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlInteractiveTimeout'] as int),
      engineConfigMysqlInternalTmpMemStorageEngine: map['engineConfigMysqlInternalTmpMemStorageEngine'] == null ? null : pulumi.Output.create<String>(map['engineConfigMysqlInternalTmpMemStorageEngine'] as String),
      engineConfigMysqlMaxAllowedPacket: map['engineConfigMysqlMaxAllowedPacket'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlMaxAllowedPacket'] as int),
      engineConfigMysqlMaxHeapTableSize: map['engineConfigMysqlMaxHeapTableSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlMaxHeapTableSize'] as int),
      engineConfigMysqlNetBufferLength: map['engineConfigMysqlNetBufferLength'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlNetBufferLength'] as int),
      engineConfigMysqlNetReadTimeout: map['engineConfigMysqlNetReadTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlNetReadTimeout'] as int),
      engineConfigMysqlNetWriteTimeout: map['engineConfigMysqlNetWriteTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlNetWriteTimeout'] as int),
      engineConfigMysqlSortBufferSize: map['engineConfigMysqlSortBufferSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlSortBufferSize'] as int),
      engineConfigMysqlSqlMode: map['engineConfigMysqlSqlMode'] == null ? null : pulumi.Output.create<String>(map['engineConfigMysqlSqlMode'] as String),
      engineConfigMysqlSqlRequirePrimaryKey: map['engineConfigMysqlSqlRequirePrimaryKey'] == null ? null : pulumi.Output.create<bool>(map['engineConfigMysqlSqlRequirePrimaryKey'] as bool),
      engineConfigMysqlTmpTableSize: map['engineConfigMysqlTmpTableSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlTmpTableSize'] as int),
      engineConfigMysqlWaitTimeout: map['engineConfigMysqlWaitTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigMysqlWaitTimeout'] as int),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      forkRestoreTime: map['forkRestoreTime'] == null ? null : pulumi.Output.create<String>(map['forkRestoreTime'] as String),
      forkSource: map['forkSource'] == null ? null : pulumi.Output.create<int>(map['forkSource'] as int),
      hostPrimary: map['hostPrimary'] == null ? null : pulumi.Output.create<String>(map['hostPrimary'] as String),
      hostSecondary: map['hostSecondary'] == null ? null : pulumi.Output.create<String>(map['hostSecondary'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<Map<String, String>>((map['members'] as Map).cast<String, String>()),
      oldestRestoreTime: map['oldestRestoreTime'] == null ? null : pulumi.Output.create<String>(map['oldestRestoreTime'] as String),
      pendingUpdates: map['pendingUpdates'] == null ? null : pulumi.Output.create<List<DatabaseMysqlV2PendingUpdate>>(pulumi.Input.decodeList<DatabaseMysqlV2PendingUpdate>(map['pendingUpdates'], (value) => DatabaseMysqlV2PendingUpdate.fromMap((value as Map).cast<String, dynamic>()))),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privateNetwork: map['privateNetwork'] == null ? null : pulumi.Output.create<DatabaseMysqlV2PrivateNetwork>(DatabaseMysqlV2PrivateNetwork.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootPassword: map['rootPassword'] == null ? null : pulumi.Output.create<String>(map['rootPassword'] as String),
      rootUsername: map['rootUsername'] == null ? null : pulumi.Output.create<String>(map['rootUsername'] as String),
      sslConnection: map['sslConnection'] == null ? null : pulumi.Output.create<bool>(map['sslConnection'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DatabaseMysqlV2Timeouts>(DatabaseMysqlV2Timeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updates: map['updates'] == null ? null : pulumi.Output.create<DatabaseMysqlV2Updates>(DatabaseMysqlV2Updates.fromMap((map['updates'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

