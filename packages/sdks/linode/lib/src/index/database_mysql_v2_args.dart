// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_v2_private_network.dart';
import 'database_mysql_v2_timeouts.dart';
import 'database_mysql_v2_updates.dart';

/// {@template pulumi_index_database_mysql_v2_database_mysql_v2_args_doc}
/// The set of arguments for DatabaseMysqlV2.
/// {@endtemplate}
/// {@macro pulumi_index_database_mysql_v2_database_mysql_v2_args_doc}
class DatabaseMysqlV2Args {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
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
  final pulumi.Input<String> engineId;
  /// The database timestamp from which it was restored.
  final pulumi.Input<String>? forkRestoreTime;
  /// The ID of the database that was forked from.
  ///
  /// * `private_network` - (Optional) Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<int>? forkSource;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String> label;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  final pulumi.Input<DatabaseMysqlV2PrivateNetwork>? privateNetwork;
  /// The region to use for the Managed Database.
  final pulumi.Input<String> region;
  /// Whether this Managed Database should be suspended.
  final pulumi.Input<bool>? suspended;
  final pulumi.Input<DatabaseMysqlV2Timeouts>? timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  final pulumi.Input<String> type;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabaseMysqlV2Updates>? updates;

  /// Creates a new [DatabaseMysqlV2Args].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
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
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [privateNetwork] Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  /// [region] The region to use for the Managed Database.
  /// [suspended] Whether this Managed Database should be suspended.
  /// [timeouts] Optional.
  /// [type] The Linode Instance type used for the nodes of the Managed Database.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  DatabaseMysqlV2Args({
    this.allowLists,
    this.clusterSize,
    this.engineConfigBinlogRetentionPeriod,
    this.engineConfigMysqlConnectTimeout,
    this.engineConfigMysqlDefaultTimeZone,
    this.engineConfigMysqlGroupConcatMaxLen,
    this.engineConfigMysqlInformationSchemaStatsExpiry,
    this.engineConfigMysqlInnodbChangeBufferMaxSize,
    this.engineConfigMysqlInnodbFlushNeighbors,
    this.engineConfigMysqlInnodbFtMinTokenSize,
    this.engineConfigMysqlInnodbFtServerStopwordTable,
    this.engineConfigMysqlInnodbLockWaitTimeout,
    this.engineConfigMysqlInnodbLogBufferSize,
    this.engineConfigMysqlInnodbOnlineAlterLogMaxSize,
    this.engineConfigMysqlInnodbReadIoThreads,
    this.engineConfigMysqlInnodbRollbackOnTimeout,
    this.engineConfigMysqlInnodbThreadConcurrency,
    this.engineConfigMysqlInnodbWriteIoThreads,
    this.engineConfigMysqlInteractiveTimeout,
    this.engineConfigMysqlInternalTmpMemStorageEngine,
    this.engineConfigMysqlMaxAllowedPacket,
    this.engineConfigMysqlMaxHeapTableSize,
    this.engineConfigMysqlNetBufferLength,
    this.engineConfigMysqlNetReadTimeout,
    this.engineConfigMysqlNetWriteTimeout,
    this.engineConfigMysqlSortBufferSize,
    this.engineConfigMysqlSqlMode,
    this.engineConfigMysqlSqlRequirePrimaryKey,
    this.engineConfigMysqlTmpTableSize,
    this.engineConfigMysqlWaitTimeout,
    required this.engineId,
    this.forkRestoreTime,
    this.forkSource,
    required this.label,
    this.privateNetwork,
    required this.region,
    this.suspended,
    this.timeouts,
    required this.type,
    this.updates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'clusterSize': ?clusterSize,
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
      'engineId': engineId,
      'forkRestoreTime': ?forkRestoreTime,
      'forkSource': ?forkSource,
      'label': label,
      'privateNetwork': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2PrivateNetwork, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'region': region,
      'suspended': ?suspended,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2Timeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': type,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory DatabaseMysqlV2Args.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlV2Args(
      allowLists: (() { final guardedValue = map['allowLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigBinlogRetentionPeriod: (() { final guardedValue = map['engineConfigBinlogRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlConnectTimeout: (() { final guardedValue = map['engineConfigMysqlConnectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlDefaultTimeZone: (() { final guardedValue = map['engineConfigMysqlDefaultTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigMysqlGroupConcatMaxLen: (() { final guardedValue = map['engineConfigMysqlGroupConcatMaxLen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engineConfigMysqlInformationSchemaStatsExpiry: (() { final guardedValue = map['engineConfigMysqlInformationSchemaStatsExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbChangeBufferMaxSize: (() { final guardedValue = map['engineConfigMysqlInnodbChangeBufferMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbFlushNeighbors: (() { final guardedValue = map['engineConfigMysqlInnodbFlushNeighbors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbFtMinTokenSize: (() { final guardedValue = map['engineConfigMysqlInnodbFtMinTokenSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbFtServerStopwordTable: (() { final guardedValue = map['engineConfigMysqlInnodbFtServerStopwordTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigMysqlInnodbLockWaitTimeout: (() { final guardedValue = map['engineConfigMysqlInnodbLockWaitTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbLogBufferSize: (() { final guardedValue = map['engineConfigMysqlInnodbLogBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbOnlineAlterLogMaxSize: (() { final guardedValue = map['engineConfigMysqlInnodbOnlineAlterLogMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbReadIoThreads: (() { final guardedValue = map['engineConfigMysqlInnodbReadIoThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbRollbackOnTimeout: (() { final guardedValue = map['engineConfigMysqlInnodbRollbackOnTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineConfigMysqlInnodbThreadConcurrency: (() { final guardedValue = map['engineConfigMysqlInnodbThreadConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInnodbWriteIoThreads: (() { final guardedValue = map['engineConfigMysqlInnodbWriteIoThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInteractiveTimeout: (() { final guardedValue = map['engineConfigMysqlInteractiveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlInternalTmpMemStorageEngine: (() { final guardedValue = map['engineConfigMysqlInternalTmpMemStorageEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigMysqlMaxAllowedPacket: (() { final guardedValue = map['engineConfigMysqlMaxAllowedPacket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlMaxHeapTableSize: (() { final guardedValue = map['engineConfigMysqlMaxHeapTableSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlNetBufferLength: (() { final guardedValue = map['engineConfigMysqlNetBufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlNetReadTimeout: (() { final guardedValue = map['engineConfigMysqlNetReadTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlNetWriteTimeout: (() { final guardedValue = map['engineConfigMysqlNetWriteTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlSortBufferSize: (() { final guardedValue = map['engineConfigMysqlSortBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlSqlMode: (() { final guardedValue = map['engineConfigMysqlSqlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigMysqlSqlRequirePrimaryKey: (() { final guardedValue = map['engineConfigMysqlSqlRequirePrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineConfigMysqlTmpTableSize: (() { final guardedValue = map['engineConfigMysqlTmpTableSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigMysqlWaitTimeout: (() { final guardedValue = map['engineConfigMysqlWaitTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      forkRestoreTime: (() { final guardedValue = map['forkRestoreTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forkSource: (() { final guardedValue = map['forkSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      privateNetwork: (() { final guardedValue = map['privateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseMysqlV2PrivateNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseMysqlV2Timeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      updates: (() { final guardedValue = map['updates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseMysqlV2Updates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

