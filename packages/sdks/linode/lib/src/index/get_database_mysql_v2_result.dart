// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_mysql_v2_pending_update.dart';
import 'get_database_mysql_v2_private_network.dart';
import 'get_database_mysql_v2_updates.dart';

/// Result data returned by getDatabaseMysqlV2.
class GetDatabaseMysqlV2Result {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final List<String> allowLists;

  /// The base64-encoded SSL CA certificate for the Managed Database.
  final String caCert;

  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final int clusterSize;

  /// When this Managed Database was created.
  final String created;

  /// Whether the Managed Databases is encrypted.
  final bool encrypted;

  /// The Managed Database engine. (e.g. `mysql`)
  final String engine;

  /// The minimum amount of time in seconds to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  final int engineConfigBinlogRetentionPeriod;

  /// The number of seconds that the mysqld server waits for a connect packet before responding with "Bad handshake".
  final int engineConfigMysqlConnectTimeout;

  /// Default server time zone as an offset from UTC (from -12:00 to +12:00), a time zone name, or `SYSTEM` to use the MySQL server default.
  final String engineConfigMysqlDefaultTimeZone;

  /// The maximum permitted result length in bytes for the `GROUP_CONCAT()` function.
  final double engineConfigMysqlGroupConcatMaxLen;

  /// The time, in seconds, before cached statistics expire.
  final int engineConfigMysqlInformationSchemaStatsExpiry;

  /// Maximum size for the InnoDB change buffer, as a percentage of the total size of the buffer pool. Default is 25.
  final int engineConfigMysqlInnodbChangeBufferMaxSize;

  /// Specifies whether flushing a page from the InnoDB buffer pool also flushes other dirty pages in the same extent (default is 1): 0 - dirty pages in the same extent are not flushed, 1 - flush contiguous dirty pages in the same extent, 2 - flush dirty pages in the same extent.
  final int engineConfigMysqlInnodbFlushNeighbors;

  /// Minimum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service.
  final int engineConfigMysqlInnodbFtMinTokenSize;

  /// This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables.
  final String engineConfigMysqlInnodbFtServerStopwordTable;

  /// The length of time in seconds an InnoDB transaction waits for a row lock before giving up. Default is 120.
  final int engineConfigMysqlInnodbLockWaitTimeout;

  /// The size in bytes of the buffer that InnoDB uses to write to the log files on disk.
  final int engineConfigMysqlInnodbLogBufferSize;

  /// The upper limit in bytes on the size of the temporary log files used during online DDL operations for InnoDB tables.
  final int engineConfigMysqlInnodbOnlineAlterLogMaxSize;

  /// The number of I/O threads for read operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  final int engineConfigMysqlInnodbReadIoThreads;

  /// When enabled, a transaction timeout causes InnoDB to abort and roll back the entire transaction. Changing this parameter will lead to a restart of the MySQL service.
  final bool engineConfigMysqlInnodbRollbackOnTimeout;

  /// Defines the maximum number of threads permitted inside of InnoDB. Default is 0 (infinite concurrency - no limit).
  final int engineConfigMysqlInnodbThreadConcurrency;

  /// The number of I/O threads for write operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  final int engineConfigMysqlInnodbWriteIoThreads;

  /// The number of seconds the server waits for activity on an interactive connection before closing it.
  final int engineConfigMysqlInteractiveTimeout;

  /// The storage engine for in-memory internal temporary tables.
  final String engineConfigMysqlInternalTmpMemStorageEngine;

  /// Size of the largest message in bytes that can be received by the server. Default is 67108864 (64M).
  final int engineConfigMysqlMaxAllowedPacket;

  /// Limits the size of internal in-memory tables. Also set tmp_table_size. Default is 16777216 (16M).
  final int engineConfigMysqlMaxHeapTableSize;

  /// Start sizes of connection buffer and result buffer. Default is 16384 (16K). Changing this parameter will lead to a restart of the MySQL service.
  final int engineConfigMysqlNetBufferLength;

  /// The number of seconds to wait for more data from a connection before aborting the read.
  final int engineConfigMysqlNetReadTimeout;

  /// The number of seconds to wait for a block to be written to a connection before aborting the write.
  final int engineConfigMysqlNetWriteTimeout;

  /// Sort buffer size in bytes for ORDER BY optimization. Default is 262144 (256K).
  final int engineConfigMysqlSortBufferSize;

  /// Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned.
  final String engineConfigMysqlSqlMode;

  /// Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
  final bool engineConfigMysqlSqlRequirePrimaryKey;

  /// Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
  final int engineConfigMysqlTmpTableSize;

  /// The number of seconds the server waits for activity on a noninteractive connection before closing it.
  final int engineConfigMysqlWaitTimeout;

  /// The Managed Database engine in engine/version format. (e.g. `mysql`)
  final String engineId;

  /// The database timestamp from which it was restored.
  final String forkRestoreTime;

  /// The ID of the database that was forked from.
  final int forkSource;

  /// The primary host for the Managed Database.
  final String hostPrimary;

  /// The secondary/private host for the managed database.
  final String hostSecondary;
  final String id;

  /// A unique, user-defined string referring to the Managed Database.
  final String label;
  final Map<String, String> members;
  final String oldestRestoreTime;
  final List<GetDatabaseMysqlV2PendingUpdate> pendingUpdates;

  /// The back-end platform for relational databases used by the service.
  final String platform;

  /// The access port for this Managed Database.
  final int port;
  final GetDatabaseMysqlV2PrivateNetwork privateNetwork;

  /// The region to use for the Managed Database.
  final String region;

  /// The randomly-generated root password for the Managed Database instance.
  final String rootPassword;

  /// The root username for the Managed Database instance.
  final String rootUsername;

  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  final bool sslConnection;

  /// The operating status of the Managed Database.
  final String status;

  /// Whether this Managed Database is suspended.
  final bool suspended;

  /// The Linode Instance type used for the nodes of the Managed Database.
  final String type;

  /// When this Managed Database was last updated.
  final String updated;
  final GetDatabaseMysqlV2Updates updates;

  /// The Managed Database engine version. (e.g. `13.2`)
  final String version;

  /// Creates a new [GetDatabaseMysqlV2Result].
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
  /// [engineConfigMysqlInnodbFtServerStopwordTable] This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables.
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
  /// [engineConfigMysqlSqlMode] Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned.
  /// [engineConfigMysqlSqlRequirePrimaryKey] Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
  /// [engineConfigMysqlTmpTableSize] Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
  /// [engineConfigMysqlWaitTimeout] The number of seconds the server waits for activity on a noninteractive connection before closing it.
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `mysql`)
  /// [forkRestoreTime] The database timestamp from which it was restored.
  /// [forkSource] The ID of the database that was forked from.
  /// [hostPrimary] The primary host for the Managed Database.
  /// [hostSecondary] The secondary/private host for the managed database.
  /// [id] Required.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [members] Required.
  /// [oldestRestoreTime] Required.
  /// [pendingUpdates] Required.
  /// [platform] The back-end platform for relational databases used by the service.
  /// [port] The access port for this Managed Database.
  /// [privateNetwork] Required.
  /// [region] The region to use for the Managed Database.
  /// [rootPassword] The randomly-generated root password for the Managed Database instance.
  /// [rootUsername] The root username for the Managed Database instance.
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database.
  /// [status] The operating status of the Managed Database.
  /// [suspended] Whether this Managed Database is suspended.
  /// [type] The Linode Instance type used for the nodes of the Managed Database.
  /// [updated] When this Managed Database was last updated.
  /// [updates] Required.
  /// [version] The Managed Database engine version. (e.g. `13.2`)
  GetDatabaseMysqlV2Result({
    required this.allowLists,
    required this.caCert,
    required this.clusterSize,
    required this.created,
    required this.encrypted,
    required this.engine,
    required this.engineConfigBinlogRetentionPeriod,
    required this.engineConfigMysqlConnectTimeout,
    required this.engineConfigMysqlDefaultTimeZone,
    required this.engineConfigMysqlGroupConcatMaxLen,
    required this.engineConfigMysqlInformationSchemaStatsExpiry,
    required this.engineConfigMysqlInnodbChangeBufferMaxSize,
    required this.engineConfigMysqlInnodbFlushNeighbors,
    required this.engineConfigMysqlInnodbFtMinTokenSize,
    required this.engineConfigMysqlInnodbFtServerStopwordTable,
    required this.engineConfigMysqlInnodbLockWaitTimeout,
    required this.engineConfigMysqlInnodbLogBufferSize,
    required this.engineConfigMysqlInnodbOnlineAlterLogMaxSize,
    required this.engineConfigMysqlInnodbReadIoThreads,
    required this.engineConfigMysqlInnodbRollbackOnTimeout,
    required this.engineConfigMysqlInnodbThreadConcurrency,
    required this.engineConfigMysqlInnodbWriteIoThreads,
    required this.engineConfigMysqlInteractiveTimeout,
    required this.engineConfigMysqlInternalTmpMemStorageEngine,
    required this.engineConfigMysqlMaxAllowedPacket,
    required this.engineConfigMysqlMaxHeapTableSize,
    required this.engineConfigMysqlNetBufferLength,
    required this.engineConfigMysqlNetReadTimeout,
    required this.engineConfigMysqlNetWriteTimeout,
    required this.engineConfigMysqlSortBufferSize,
    required this.engineConfigMysqlSqlMode,
    required this.engineConfigMysqlSqlRequirePrimaryKey,
    required this.engineConfigMysqlTmpTableSize,
    required this.engineConfigMysqlWaitTimeout,
    required this.engineId,
    required this.forkRestoreTime,
    required this.forkSource,
    required this.hostPrimary,
    required this.hostSecondary,
    required this.id,
    required this.label,
    required this.members,
    required this.oldestRestoreTime,
    required this.pendingUpdates,
    required this.platform,
    required this.port,
    required this.privateNetwork,
    required this.region,
    required this.rootPassword,
    required this.rootUsername,
    required this.sslConnection,
    required this.status,
    required this.suspended,
    required this.type,
    required this.updated,
    required this.updates,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': allowLists,
      'caCert': caCert,
      'clusterSize': clusterSize,
      'created': created,
      'encrypted': encrypted,
      'engine': engine,
      'engineConfigBinlogRetentionPeriod': engineConfigBinlogRetentionPeriod,
      'engineConfigMysqlConnectTimeout': engineConfigMysqlConnectTimeout,
      'engineConfigMysqlDefaultTimeZone': engineConfigMysqlDefaultTimeZone,
      'engineConfigMysqlGroupConcatMaxLen': engineConfigMysqlGroupConcatMaxLen,
      'engineConfigMysqlInformationSchemaStatsExpiry':
          engineConfigMysqlInformationSchemaStatsExpiry,
      'engineConfigMysqlInnodbChangeBufferMaxSize':
          engineConfigMysqlInnodbChangeBufferMaxSize,
      'engineConfigMysqlInnodbFlushNeighbors':
          engineConfigMysqlInnodbFlushNeighbors,
      'engineConfigMysqlInnodbFtMinTokenSize':
          engineConfigMysqlInnodbFtMinTokenSize,
      'engineConfigMysqlInnodbFtServerStopwordTable':
          engineConfigMysqlInnodbFtServerStopwordTable,
      'engineConfigMysqlInnodbLockWaitTimeout':
          engineConfigMysqlInnodbLockWaitTimeout,
      'engineConfigMysqlInnodbLogBufferSize':
          engineConfigMysqlInnodbLogBufferSize,
      'engineConfigMysqlInnodbOnlineAlterLogMaxSize':
          engineConfigMysqlInnodbOnlineAlterLogMaxSize,
      'engineConfigMysqlInnodbReadIoThreads':
          engineConfigMysqlInnodbReadIoThreads,
      'engineConfigMysqlInnodbRollbackOnTimeout':
          engineConfigMysqlInnodbRollbackOnTimeout,
      'engineConfigMysqlInnodbThreadConcurrency':
          engineConfigMysqlInnodbThreadConcurrency,
      'engineConfigMysqlInnodbWriteIoThreads':
          engineConfigMysqlInnodbWriteIoThreads,
      'engineConfigMysqlInteractiveTimeout':
          engineConfigMysqlInteractiveTimeout,
      'engineConfigMysqlInternalTmpMemStorageEngine':
          engineConfigMysqlInternalTmpMemStorageEngine,
      'engineConfigMysqlMaxAllowedPacket': engineConfigMysqlMaxAllowedPacket,
      'engineConfigMysqlMaxHeapTableSize': engineConfigMysqlMaxHeapTableSize,
      'engineConfigMysqlNetBufferLength': engineConfigMysqlNetBufferLength,
      'engineConfigMysqlNetReadTimeout': engineConfigMysqlNetReadTimeout,
      'engineConfigMysqlNetWriteTimeout': engineConfigMysqlNetWriteTimeout,
      'engineConfigMysqlSortBufferSize': engineConfigMysqlSortBufferSize,
      'engineConfigMysqlSqlMode': engineConfigMysqlSqlMode,
      'engineConfigMysqlSqlRequirePrimaryKey':
          engineConfigMysqlSqlRequirePrimaryKey,
      'engineConfigMysqlTmpTableSize': engineConfigMysqlTmpTableSize,
      'engineConfigMysqlWaitTimeout': engineConfigMysqlWaitTimeout,
      'engineId': engineId,
      'forkRestoreTime': forkRestoreTime,
      'forkSource': forkSource,
      'hostPrimary': hostPrimary,
      'hostSecondary': hostSecondary,
      'id': id,
      'label': label,
      'members': members,
      'oldestRestoreTime': oldestRestoreTime,
      'pendingUpdates':
          pulumi.Input.encodeList<
            GetDatabaseMysqlV2PendingUpdate,
            Map<String, dynamic>
          >(pendingUpdates, (value) => value.toMap()),
      'platform': platform,
      'port': port,
      'privateNetwork': privateNetwork.toMap(),
      'region': region,
      'rootPassword': rootPassword,
      'rootUsername': rootUsername,
      'sslConnection': sslConnection,
      'status': status,
      'suspended': suspended,
      'type': type,
      'updated': updated,
      'updates': updates.toMap(),
      'version': version,
    };
  }

  factory GetDatabaseMysqlV2Result.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlV2Result(
      allowLists: (map['allowLists'] as List).cast<String>(),
      caCert: map['caCert'] as String,
      clusterSize: map['clusterSize'] as int,
      created: map['created'] as String,
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      engineConfigBinlogRetentionPeriod:
          map['engineConfigBinlogRetentionPeriod'] as int,
      engineConfigMysqlConnectTimeout:
          map['engineConfigMysqlConnectTimeout'] as int,
      engineConfigMysqlDefaultTimeZone:
          map['engineConfigMysqlDefaultTimeZone'] as String,
      engineConfigMysqlGroupConcatMaxLen:
          map['engineConfigMysqlGroupConcatMaxLen'] as double,
      engineConfigMysqlInformationSchemaStatsExpiry:
          map['engineConfigMysqlInformationSchemaStatsExpiry'] as int,
      engineConfigMysqlInnodbChangeBufferMaxSize:
          map['engineConfigMysqlInnodbChangeBufferMaxSize'] as int,
      engineConfigMysqlInnodbFlushNeighbors:
          map['engineConfigMysqlInnodbFlushNeighbors'] as int,
      engineConfigMysqlInnodbFtMinTokenSize:
          map['engineConfigMysqlInnodbFtMinTokenSize'] as int,
      engineConfigMysqlInnodbFtServerStopwordTable:
          map['engineConfigMysqlInnodbFtServerStopwordTable'] as String,
      engineConfigMysqlInnodbLockWaitTimeout:
          map['engineConfigMysqlInnodbLockWaitTimeout'] as int,
      engineConfigMysqlInnodbLogBufferSize:
          map['engineConfigMysqlInnodbLogBufferSize'] as int,
      engineConfigMysqlInnodbOnlineAlterLogMaxSize:
          map['engineConfigMysqlInnodbOnlineAlterLogMaxSize'] as int,
      engineConfigMysqlInnodbReadIoThreads:
          map['engineConfigMysqlInnodbReadIoThreads'] as int,
      engineConfigMysqlInnodbRollbackOnTimeout:
          map['engineConfigMysqlInnodbRollbackOnTimeout'] as bool,
      engineConfigMysqlInnodbThreadConcurrency:
          map['engineConfigMysqlInnodbThreadConcurrency'] as int,
      engineConfigMysqlInnodbWriteIoThreads:
          map['engineConfigMysqlInnodbWriteIoThreads'] as int,
      engineConfigMysqlInteractiveTimeout:
          map['engineConfigMysqlInteractiveTimeout'] as int,
      engineConfigMysqlInternalTmpMemStorageEngine:
          map['engineConfigMysqlInternalTmpMemStorageEngine'] as String,
      engineConfigMysqlMaxAllowedPacket:
          map['engineConfigMysqlMaxAllowedPacket'] as int,
      engineConfigMysqlMaxHeapTableSize:
          map['engineConfigMysqlMaxHeapTableSize'] as int,
      engineConfigMysqlNetBufferLength:
          map['engineConfigMysqlNetBufferLength'] as int,
      engineConfigMysqlNetReadTimeout:
          map['engineConfigMysqlNetReadTimeout'] as int,
      engineConfigMysqlNetWriteTimeout:
          map['engineConfigMysqlNetWriteTimeout'] as int,
      engineConfigMysqlSortBufferSize:
          map['engineConfigMysqlSortBufferSize'] as int,
      engineConfigMysqlSqlMode: map['engineConfigMysqlSqlMode'] as String,
      engineConfigMysqlSqlRequirePrimaryKey:
          map['engineConfigMysqlSqlRequirePrimaryKey'] as bool,
      engineConfigMysqlTmpTableSize:
          map['engineConfigMysqlTmpTableSize'] as int,
      engineConfigMysqlWaitTimeout: map['engineConfigMysqlWaitTimeout'] as int,
      engineId: map['engineId'] as String,
      forkRestoreTime: map['forkRestoreTime'] as String,
      forkSource: map['forkSource'] as int,
      hostPrimary: map['hostPrimary'] as String,
      hostSecondary: map['hostSecondary'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      members: (map['members'] as Map).cast<String, String>(),
      oldestRestoreTime: map['oldestRestoreTime'] as String,
      pendingUpdates: pulumi.Input.decodeList<GetDatabaseMysqlV2PendingUpdate>(
        map['pendingUpdates']!,
        (value) => GetDatabaseMysqlV2PendingUpdate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      platform: map['platform'] as String,
      port: map['port'] as int,
      privateNetwork: GetDatabaseMysqlV2PrivateNetwork.fromMap(
        (map['privateNetwork']! as Map).cast<String, dynamic>(),
      ),
      region: map['region'] as String,
      rootPassword: map['rootPassword'] as String,
      rootUsername: map['rootUsername'] as String,
      sslConnection: map['sslConnection'] as bool,
      status: map['status'] as String,
      suspended: map['suspended'] as bool,
      type: map['type'] as String,
      updated: map['updated'] as String,
      updates: GetDatabaseMysqlV2Updates.fromMap(
        (map['updates']! as Map).cast<String, dynamic>(),
      ),
      version: map['version'] as String,
    );
  }
}
