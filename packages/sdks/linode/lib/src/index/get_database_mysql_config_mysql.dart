// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_mysql_config_mysql_connect_timeout.dart';
import 'get_database_mysql_config_mysql_default_time_zone.dart';
import 'get_database_mysql_config_mysql_group_concat_max_len.dart';
import 'get_database_mysql_config_mysql_information_schema_stats_expiry.dart';
import 'get_database_mysql_config_mysql_innodb_change_buffer_max_size.dart';
import 'get_database_mysql_config_mysql_innodb_flush_neighbors.dart';
import 'get_database_mysql_config_mysql_innodb_ft_min_token_size.dart';
import 'get_database_mysql_config_mysql_innodb_ft_server_stopword_table.dart';
import 'get_database_mysql_config_mysql_innodb_lock_wait_timeout.dart';
import 'get_database_mysql_config_mysql_innodb_log_buffer_size.dart';
import 'get_database_mysql_config_mysql_innodb_online_alter_log_max_size.dart';
import 'get_database_mysql_config_mysql_innodb_read_io_threads.dart';
import 'get_database_mysql_config_mysql_innodb_rollback_on_timeout.dart';
import 'get_database_mysql_config_mysql_innodb_thread_concurrency.dart';
import 'get_database_mysql_config_mysql_innodb_write_io_threads.dart';
import 'get_database_mysql_config_mysql_interactive_timeout.dart';
import 'get_database_mysql_config_mysql_internal_tmp_mem_storage_engine.dart';
import 'get_database_mysql_config_mysql_max_allowed_packet.dart';
import 'get_database_mysql_config_mysql_max_heap_table_size.dart';
import 'get_database_mysql_config_mysql_net_buffer_length.dart';
import 'get_database_mysql_config_mysql_net_read_timeout.dart';
import 'get_database_mysql_config_mysql_net_write_timeout.dart';
import 'get_database_mysql_config_mysql_sort_buffer_size.dart';
import 'get_database_mysql_config_mysql_sql_mode.dart';
import 'get_database_mysql_config_mysql_sql_require_primary_key.dart';
import 'get_database_mysql_config_mysql_tmp_table_size.dart';
import 'get_database_mysql_config_mysql_wait_timeout.dart';

class GetDatabaseMysqlConfigMysql {
  final pulumi.Input<GetDatabaseMysqlConfigMysqlConnectTimeout> connectTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlDefaultTimeZone> defaultTimeZone;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlGroupConcatMaxLen> groupConcatMaxLen;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInformationSchemaStatsExpiry> informationSchemaStatsExpiry;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbChangeBufferMaxSize> innodbChangeBufferMaxSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbFlushNeighbors> innodbFlushNeighbors;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbFtMinTokenSize> innodbFtMinTokenSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable> innodbFtServerStopwordTable;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout> innodbLockWaitTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbLogBufferSize> innodbLogBufferSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbOnlineAlterLogMaxSize> innodbOnlineAlterLogMaxSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbReadIoThreads> innodbReadIoThreads;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout> innodbRollbackOnTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency> innodbThreadConcurrency;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInnodbWriteIoThreads> innodbWriteIoThreads;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInteractiveTimeout> interactiveTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine> internalTmpMemStorageEngine;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlMaxAllowedPacket> maxAllowedPacket;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlMaxHeapTableSize> maxHeapTableSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlNetBufferLength> netBufferLength;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlNetReadTimeout> netReadTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlNetWriteTimeout> netWriteTimeout;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlSortBufferSize> sortBufferSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlSqlMode> sqlMode;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey> sqlRequirePrimaryKey;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlTmpTableSize> tmpTableSize;
  final pulumi.Input<GetDatabaseMysqlConfigMysqlWaitTimeout> waitTimeout;

  /// Creates a new [GetDatabaseMysqlConfigMysql].
  /// [connectTimeout] Required.
  /// [defaultTimeZone] Required.
  /// [groupConcatMaxLen] Required.
  /// [informationSchemaStatsExpiry] Required.
  /// [innodbChangeBufferMaxSize] Required.
  /// [innodbFlushNeighbors] Required.
  /// [innodbFtMinTokenSize] Required.
  /// [innodbFtServerStopwordTable] Required.
  /// [innodbLockWaitTimeout] Required.
  /// [innodbLogBufferSize] Required.
  /// [innodbOnlineAlterLogMaxSize] Required.
  /// [innodbReadIoThreads] Required.
  /// [innodbRollbackOnTimeout] Required.
  /// [innodbThreadConcurrency] Required.
  /// [innodbWriteIoThreads] Required.
  /// [interactiveTimeout] Required.
  /// [internalTmpMemStorageEngine] Required.
  /// [maxAllowedPacket] Required.
  /// [maxHeapTableSize] Required.
  /// [netBufferLength] Required.
  /// [netReadTimeout] Required.
  /// [netWriteTimeout] Required.
  /// [sortBufferSize] Required.
  /// [sqlMode] Required.
  /// [sqlRequirePrimaryKey] Required.
  /// [tmpTableSize] Required.
  /// [waitTimeout] Required.
  GetDatabaseMysqlConfigMysql({
    required this.connectTimeout,
    required this.defaultTimeZone,
    required this.groupConcatMaxLen,
    required this.informationSchemaStatsExpiry,
    required this.innodbChangeBufferMaxSize,
    required this.innodbFlushNeighbors,
    required this.innodbFtMinTokenSize,
    required this.innodbFtServerStopwordTable,
    required this.innodbLockWaitTimeout,
    required this.innodbLogBufferSize,
    required this.innodbOnlineAlterLogMaxSize,
    required this.innodbReadIoThreads,
    required this.innodbRollbackOnTimeout,
    required this.innodbThreadConcurrency,
    required this.innodbWriteIoThreads,
    required this.interactiveTimeout,
    required this.internalTmpMemStorageEngine,
    required this.maxAllowedPacket,
    required this.maxHeapTableSize,
    required this.netBufferLength,
    required this.netReadTimeout,
    required this.netWriteTimeout,
    required this.sortBufferSize,
    required this.sqlMode,
    required this.sqlRequirePrimaryKey,
    required this.tmpTableSize,
    required this.waitTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlConnectTimeout, Map<String, dynamic>>(connectTimeout, (value) => value.toMap()),
      'defaultTimeZone': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlDefaultTimeZone, Map<String, dynamic>>(defaultTimeZone, (value) => value.toMap()),
      'groupConcatMaxLen': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlGroupConcatMaxLen, Map<String, dynamic>>(groupConcatMaxLen, (value) => value.toMap()),
      'informationSchemaStatsExpiry': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInformationSchemaStatsExpiry, Map<String, dynamic>>(informationSchemaStatsExpiry, (value) => value.toMap()),
      'innodbChangeBufferMaxSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbChangeBufferMaxSize, Map<String, dynamic>>(innodbChangeBufferMaxSize, (value) => value.toMap()),
      'innodbFlushNeighbors': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbFlushNeighbors, Map<String, dynamic>>(innodbFlushNeighbors, (value) => value.toMap()),
      'innodbFtMinTokenSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbFtMinTokenSize, Map<String, dynamic>>(innodbFtMinTokenSize, (value) => value.toMap()),
      'innodbFtServerStopwordTable': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable, Map<String, dynamic>>(innodbFtServerStopwordTable, (value) => value.toMap()),
      'innodbLockWaitTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout, Map<String, dynamic>>(innodbLockWaitTimeout, (value) => value.toMap()),
      'innodbLogBufferSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbLogBufferSize, Map<String, dynamic>>(innodbLogBufferSize, (value) => value.toMap()),
      'innodbOnlineAlterLogMaxSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbOnlineAlterLogMaxSize, Map<String, dynamic>>(innodbOnlineAlterLogMaxSize, (value) => value.toMap()),
      'innodbReadIoThreads': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbReadIoThreads, Map<String, dynamic>>(innodbReadIoThreads, (value) => value.toMap()),
      'innodbRollbackOnTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout, Map<String, dynamic>>(innodbRollbackOnTimeout, (value) => value.toMap()),
      'innodbThreadConcurrency': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency, Map<String, dynamic>>(innodbThreadConcurrency, (value) => value.toMap()),
      'innodbWriteIoThreads': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInnodbWriteIoThreads, Map<String, dynamic>>(innodbWriteIoThreads, (value) => value.toMap()),
      'interactiveTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInteractiveTimeout, Map<String, dynamic>>(interactiveTimeout, (value) => value.toMap()),
      'internalTmpMemStorageEngine': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine, Map<String, dynamic>>(internalTmpMemStorageEngine, (value) => value.toMap()),
      'maxAllowedPacket': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlMaxAllowedPacket, Map<String, dynamic>>(maxAllowedPacket, (value) => value.toMap()),
      'maxHeapTableSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlMaxHeapTableSize, Map<String, dynamic>>(maxHeapTableSize, (value) => value.toMap()),
      'netBufferLength': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlNetBufferLength, Map<String, dynamic>>(netBufferLength, (value) => value.toMap()),
      'netReadTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlNetReadTimeout, Map<String, dynamic>>(netReadTimeout, (value) => value.toMap()),
      'netWriteTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlNetWriteTimeout, Map<String, dynamic>>(netWriteTimeout, (value) => value.toMap()),
      'sortBufferSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlSortBufferSize, Map<String, dynamic>>(sortBufferSize, (value) => value.toMap()),
      'sqlMode': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlSqlMode, Map<String, dynamic>>(sqlMode, (value) => value.toMap()),
      'sqlRequirePrimaryKey': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey, Map<String, dynamic>>(sqlRequirePrimaryKey, (value) => value.toMap()),
      'tmpTableSize': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlTmpTableSize, Map<String, dynamic>>(tmpTableSize, (value) => value.toMap()),
      'waitTimeout': pulumi.Input.mapInputValue<GetDatabaseMysqlConfigMysqlWaitTimeout, Map<String, dynamic>>(waitTimeout, (value) => value.toMap()),
    };
  }

  factory GetDatabaseMysqlConfigMysql.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysql(
      connectTimeout: (GetDatabaseMysqlConfigMysqlConnectTimeout.fromMap((map['connectTimeout'] as Map).cast<String, dynamic>())).input(),
      defaultTimeZone: (GetDatabaseMysqlConfigMysqlDefaultTimeZone.fromMap((map['defaultTimeZone'] as Map).cast<String, dynamic>())).input(),
      groupConcatMaxLen: (GetDatabaseMysqlConfigMysqlGroupConcatMaxLen.fromMap((map['groupConcatMaxLen'] as Map).cast<String, dynamic>())).input(),
      informationSchemaStatsExpiry: (GetDatabaseMysqlConfigMysqlInformationSchemaStatsExpiry.fromMap((map['informationSchemaStatsExpiry'] as Map).cast<String, dynamic>())).input(),
      innodbChangeBufferMaxSize: (GetDatabaseMysqlConfigMysqlInnodbChangeBufferMaxSize.fromMap((map['innodbChangeBufferMaxSize'] as Map).cast<String, dynamic>())).input(),
      innodbFlushNeighbors: (GetDatabaseMysqlConfigMysqlInnodbFlushNeighbors.fromMap((map['innodbFlushNeighbors'] as Map).cast<String, dynamic>())).input(),
      innodbFtMinTokenSize: (GetDatabaseMysqlConfigMysqlInnodbFtMinTokenSize.fromMap((map['innodbFtMinTokenSize'] as Map).cast<String, dynamic>())).input(),
      innodbFtServerStopwordTable: (GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable.fromMap((map['innodbFtServerStopwordTable'] as Map).cast<String, dynamic>())).input(),
      innodbLockWaitTimeout: (GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout.fromMap((map['innodbLockWaitTimeout'] as Map).cast<String, dynamic>())).input(),
      innodbLogBufferSize: (GetDatabaseMysqlConfigMysqlInnodbLogBufferSize.fromMap((map['innodbLogBufferSize'] as Map).cast<String, dynamic>())).input(),
      innodbOnlineAlterLogMaxSize: (GetDatabaseMysqlConfigMysqlInnodbOnlineAlterLogMaxSize.fromMap((map['innodbOnlineAlterLogMaxSize'] as Map).cast<String, dynamic>())).input(),
      innodbReadIoThreads: (GetDatabaseMysqlConfigMysqlInnodbReadIoThreads.fromMap((map['innodbReadIoThreads'] as Map).cast<String, dynamic>())).input(),
      innodbRollbackOnTimeout: (GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout.fromMap((map['innodbRollbackOnTimeout'] as Map).cast<String, dynamic>())).input(),
      innodbThreadConcurrency: (GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency.fromMap((map['innodbThreadConcurrency'] as Map).cast<String, dynamic>())).input(),
      innodbWriteIoThreads: (GetDatabaseMysqlConfigMysqlInnodbWriteIoThreads.fromMap((map['innodbWriteIoThreads'] as Map).cast<String, dynamic>())).input(),
      interactiveTimeout: (GetDatabaseMysqlConfigMysqlInteractiveTimeout.fromMap((map['interactiveTimeout'] as Map).cast<String, dynamic>())).input(),
      internalTmpMemStorageEngine: (GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine.fromMap((map['internalTmpMemStorageEngine'] as Map).cast<String, dynamic>())).input(),
      maxAllowedPacket: (GetDatabaseMysqlConfigMysqlMaxAllowedPacket.fromMap((map['maxAllowedPacket'] as Map).cast<String, dynamic>())).input(),
      maxHeapTableSize: (GetDatabaseMysqlConfigMysqlMaxHeapTableSize.fromMap((map['maxHeapTableSize'] as Map).cast<String, dynamic>())).input(),
      netBufferLength: (GetDatabaseMysqlConfigMysqlNetBufferLength.fromMap((map['netBufferLength'] as Map).cast<String, dynamic>())).input(),
      netReadTimeout: (GetDatabaseMysqlConfigMysqlNetReadTimeout.fromMap((map['netReadTimeout'] as Map).cast<String, dynamic>())).input(),
      netWriteTimeout: (GetDatabaseMysqlConfigMysqlNetWriteTimeout.fromMap((map['netWriteTimeout'] as Map).cast<String, dynamic>())).input(),
      sortBufferSize: (GetDatabaseMysqlConfigMysqlSortBufferSize.fromMap((map['sortBufferSize'] as Map).cast<String, dynamic>())).input(),
      sqlMode: (GetDatabaseMysqlConfigMysqlSqlMode.fromMap((map['sqlMode'] as Map).cast<String, dynamic>())).input(),
      sqlRequirePrimaryKey: (GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey.fromMap((map['sqlRequirePrimaryKey'] as Map).cast<String, dynamic>())).input(),
      tmpTableSize: (GetDatabaseMysqlConfigMysqlTmpTableSize.fromMap((map['tmpTableSize'] as Map).cast<String, dynamic>())).input(),
      waitTimeout: (GetDatabaseMysqlConfigMysqlWaitTimeout.fromMap((map['waitTimeout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

