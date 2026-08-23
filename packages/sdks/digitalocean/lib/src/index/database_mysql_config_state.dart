// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseMysqlConfig resources.
class DatabaseMysqlConfigState {
  /// The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  final pulumi.Input<int>? backupHour;
  /// The minute of the backup hour when backup for the service starts. New backup only starts if previous backup has already completed.
  final pulumi.Input<int>? backupMinute;
  /// The minimum amount of time, in seconds, to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  final pulumi.Input<int>? binlogRetentionPeriod;
  /// The ID of the target MySQL cluster.
  final pulumi.Input<String>? clusterId;
  /// The number of seconds that the mysqld server waits for a connect packet before responding with bad handshake.
  final pulumi.Input<int>? connectTimeout;
  /// Default server time zone, in the form of an offset from UTC (from -12:00 to +12:00), a time zone name (EST), or `SYSTEM` to use the MySQL server default.
  final pulumi.Input<String>? defaultTimeZone;
  /// The maximum permitted result length, in bytes, for the `GROUP_CONCAT()` function.
  final pulumi.Input<int>? groupConcatMaxLen;
  /// The time, in seconds, before cached statistics expire.
  final pulumi.Input<int>? informationSchemaStatsExpiry;
  /// The minimum length of words that an InnoDB FULLTEXT index stores.
  final pulumi.Input<int>? innodbFtMinTokenSize;
  /// The InnoDB FULLTEXT index stopword list for all InnoDB tables.
  final pulumi.Input<String>? innodbFtServerStopwordTable;
  /// The time, in seconds, that an InnoDB transaction waits for a row lock. before giving up.
  final pulumi.Input<int>? innodbLockWaitTimeout;
  /// The size of the buffer, in bytes, that InnoDB uses to write to the log files. on disk.
  final pulumi.Input<int>? innodbLogBufferSize;
  /// The upper limit, in bytes, of the size of the temporary log files used during online DDL operations for InnoDB tables.
  final pulumi.Input<int>? innodbOnlineAlterLogMaxSize;
  /// When enabled, records information about all deadlocks in InnoDB user transactions in the error log. Disabled by default.
  final pulumi.Input<bool>? innodbPrintAllDeadlocks;
  /// When enabled, transaction timeouts cause InnoDB to abort and roll back the entire transaction.
  final pulumi.Input<bool>? innodbRollbackOnTimeout;
  /// The time, in seconds, the server waits for activity on an interactive. connection before closing it.
  final pulumi.Input<int>? interactiveTimeout;
  /// The storage engine for in-memory internal temporary tables. Supported values are: `TempTable`, `MEMORY`.
  final pulumi.Input<String>? internalTmpMemStorageEngine;
  /// The time, in seconds, for a query to take to execute before being captured by `slowQueryLogs`. Default is `10` seconds.
  final pulumi.Input<double>? longQueryTime;
  /// The size of the largest message, in bytes, that can be received by the server. Default is `67108864` (64M).
  final pulumi.Input<int>? maxAllowedPacket;
  /// The maximum size, in bytes, of internal in-memory tables. Also set `tmpTableSize`. Default is `16777216` (16M)
  final pulumi.Input<int>? maxHeapTableSize;
  /// The time, in seconds, to wait for more data from an existing connection. aborting the read.
  final pulumi.Input<int>? netReadTimeout;
  /// The number of seconds to wait for a block to be written to a connection before aborting the write.
  final pulumi.Input<int>? netWriteTimeout;
  /// When enabled, captures slow queries. When disabled, also truncates the mysql.slow_log table. Default is false.
  final pulumi.Input<bool>? slowQueryLog;
  /// The sort buffer size, in bytes, for `ORDER BY` optimization. Default is `262144`. (256K).
  final pulumi.Input<int>? sortBufferSize;
  /// Global SQL mode. If empty, uses MySQL server defaults. Must only include uppercase alphabetic characters, underscores, and commas.
  final pulumi.Input<String>? sqlMode;
  /// Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
  final pulumi.Input<bool>? sqlRequirePrimaryKey;
  /// The maximum size, in bytes, of internal in-memory tables. Also set `maxHeapTableSize`. Default is `16777216` (16M).
  final pulumi.Input<int>? tmpTableSize;
  /// The number of seconds the server waits for activity on a noninteractive connection before closing it.
  final pulumi.Input<int>? waitTimeout;

  /// Creates a new [DatabaseMysqlConfigState].
  /// [backupHour] The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  /// [backupMinute] The minute of the backup hour when backup for the service starts. New backup only starts if previous backup has already completed.
  /// [binlogRetentionPeriod] The minimum amount of time, in seconds, to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  /// [clusterId] The ID of the target MySQL cluster.
  /// [connectTimeout] The number of seconds that the mysqld server waits for a connect packet before responding with bad handshake.
  /// [defaultTimeZone] Default server time zone, in the form of an offset from UTC (from -12:00 to +12:00), a time zone name (EST), or `SYSTEM` to use the MySQL server default.
  /// [groupConcatMaxLen] The maximum permitted result length, in bytes, for the `GROUP_CONCAT()` function.
  /// [informationSchemaStatsExpiry] The time, in seconds, before cached statistics expire.
  /// [innodbFtMinTokenSize] The minimum length of words that an InnoDB FULLTEXT index stores.
  /// [innodbFtServerStopwordTable] The InnoDB FULLTEXT index stopword list for all InnoDB tables.
  /// [innodbLockWaitTimeout] The time, in seconds, that an InnoDB transaction waits for a row lock. before giving up.
  /// [innodbLogBufferSize] The size of the buffer, in bytes, that InnoDB uses to write to the log files. on disk.
  /// [innodbOnlineAlterLogMaxSize] The upper limit, in bytes, of the size of the temporary log files used during online DDL operations for InnoDB tables.
  /// [innodbPrintAllDeadlocks] When enabled, records information about all deadlocks in InnoDB user transactions in the error log. Disabled by default.
  /// [innodbRollbackOnTimeout] When enabled, transaction timeouts cause InnoDB to abort and roll back the entire transaction.
  /// [interactiveTimeout] The time, in seconds, the server waits for activity on an interactive. connection before closing it.
  /// [internalTmpMemStorageEngine] The storage engine for in-memory internal temporary tables. Supported values are: `TempTable`, `MEMORY`.
  /// [longQueryTime] The time, in seconds, for a query to take to execute before being captured by `slowQueryLogs`. Default is `10` seconds.
  /// [maxAllowedPacket] The size of the largest message, in bytes, that can be received by the server. Default is `67108864` (64M).
  /// [maxHeapTableSize] The maximum size, in bytes, of internal in-memory tables. Also set `tmpTableSize`. Default is `16777216` (16M)
  /// [netReadTimeout] The time, in seconds, to wait for more data from an existing connection. aborting the read.
  /// [netWriteTimeout] The number of seconds to wait for a block to be written to a connection before aborting the write.
  /// [slowQueryLog] When enabled, captures slow queries. When disabled, also truncates the mysql.slow_log table. Default is false.
  /// [sortBufferSize] The sort buffer size, in bytes, for `ORDER BY` optimization. Default is `262144`. (256K).
  /// [sqlMode] Global SQL mode. If empty, uses MySQL server defaults. Must only include uppercase alphabetic characters, underscores, and commas.
  /// [sqlRequirePrimaryKey] Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
  /// [tmpTableSize] The maximum size, in bytes, of internal in-memory tables. Also set `maxHeapTableSize`. Default is `16777216` (16M).
  /// [waitTimeout] The number of seconds the server waits for activity on a noninteractive connection before closing it.
  const DatabaseMysqlConfigState({
    this.backupHour,
    this.backupMinute,
    this.binlogRetentionPeriod,
    this.clusterId,
    this.connectTimeout,
    this.defaultTimeZone,
    this.groupConcatMaxLen,
    this.informationSchemaStatsExpiry,
    this.innodbFtMinTokenSize,
    this.innodbFtServerStopwordTable,
    this.innodbLockWaitTimeout,
    this.innodbLogBufferSize,
    this.innodbOnlineAlterLogMaxSize,
    this.innodbPrintAllDeadlocks,
    this.innodbRollbackOnTimeout,
    this.interactiveTimeout,
    this.internalTmpMemStorageEngine,
    this.longQueryTime,
    this.maxAllowedPacket,
    this.maxHeapTableSize,
    this.netReadTimeout,
    this.netWriteTimeout,
    this.slowQueryLog,
    this.sortBufferSize,
    this.sqlMode,
    this.sqlRequirePrimaryKey,
    this.tmpTableSize,
    this.waitTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupHour': ?backupHour,
      'backupMinute': ?backupMinute,
      'binlogRetentionPeriod': ?binlogRetentionPeriod,
      'clusterId': ?clusterId,
      'connectTimeout': ?connectTimeout,
      'defaultTimeZone': ?defaultTimeZone,
      'groupConcatMaxLen': ?groupConcatMaxLen,
      'informationSchemaStatsExpiry': ?informationSchemaStatsExpiry,
      'innodbFtMinTokenSize': ?innodbFtMinTokenSize,
      'innodbFtServerStopwordTable': ?innodbFtServerStopwordTable,
      'innodbLockWaitTimeout': ?innodbLockWaitTimeout,
      'innodbLogBufferSize': ?innodbLogBufferSize,
      'innodbOnlineAlterLogMaxSize': ?innodbOnlineAlterLogMaxSize,
      'innodbPrintAllDeadlocks': ?innodbPrintAllDeadlocks,
      'innodbRollbackOnTimeout': ?innodbRollbackOnTimeout,
      'interactiveTimeout': ?interactiveTimeout,
      'internalTmpMemStorageEngine': ?internalTmpMemStorageEngine,
      'longQueryTime': ?longQueryTime,
      'maxAllowedPacket': ?maxAllowedPacket,
      'maxHeapTableSize': ?maxHeapTableSize,
      'netReadTimeout': ?netReadTimeout,
      'netWriteTimeout': ?netWriteTimeout,
      'slowQueryLog': ?slowQueryLog,
      'sortBufferSize': ?sortBufferSize,
      'sqlMode': ?sqlMode,
      'sqlRequirePrimaryKey': ?sqlRequirePrimaryKey,
      'tmpTableSize': ?tmpTableSize,
      'waitTimeout': ?waitTimeout,
    };
  }

  factory DatabaseMysqlConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlConfigState(
      backupHour: (() { final guardedValue = map['backupHour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupMinute: (() { final guardedValue = map['backupMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      binlogRetentionPeriod: (() { final guardedValue = map['binlogRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTimeZone: (() { final guardedValue = map['defaultTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupConcatMaxLen: (() { final guardedValue = map['groupConcatMaxLen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      informationSchemaStatsExpiry: (() { final guardedValue = map['informationSchemaStatsExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      innodbFtMinTokenSize: (() { final guardedValue = map['innodbFtMinTokenSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      innodbFtServerStopwordTable: (() { final guardedValue = map['innodbFtServerStopwordTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      innodbLockWaitTimeout: (() { final guardedValue = map['innodbLockWaitTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      innodbLogBufferSize: (() { final guardedValue = map['innodbLogBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      innodbOnlineAlterLogMaxSize: (() { final guardedValue = map['innodbOnlineAlterLogMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      innodbPrintAllDeadlocks: (() { final guardedValue = map['innodbPrintAllDeadlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      innodbRollbackOnTimeout: (() { final guardedValue = map['innodbRollbackOnTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interactiveTimeout: (() { final guardedValue = map['interactiveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internalTmpMemStorageEngine: (() { final guardedValue = map['internalTmpMemStorageEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longQueryTime: (() { final guardedValue = map['longQueryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxAllowedPacket: (() { final guardedValue = map['maxAllowedPacket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxHeapTableSize: (() { final guardedValue = map['maxHeapTableSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netReadTimeout: (() { final guardedValue = map['netReadTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      netWriteTimeout: (() { final guardedValue = map['netWriteTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      slowQueryLog: (() { final guardedValue = map['slowQueryLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sortBufferSize: (() { final guardedValue = map['sortBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlMode: (() { final guardedValue = map['sqlMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlRequirePrimaryKey: (() { final guardedValue = map['sqlRequirePrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tmpTableSize: (() { final guardedValue = map['tmpTableSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      waitTimeout: (() { final guardedValue = map['waitTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
