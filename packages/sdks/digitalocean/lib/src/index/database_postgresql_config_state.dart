// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_config_pgbouncer.dart';
import 'database_postgresql_config_timescaledb.dart';

/// Input properties used for looking up and filtering DatabasePostgresqlConfig resources.
class DatabasePostgresqlConfigState {
  /// Specifies a fraction, in a decimal value, of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size).
  final pulumi.Input<double>? autovacuumAnalyzeScaleFactor;
  /// Specifies the minimum number of inserted, updated, or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  final pulumi.Input<int>? autovacuumAnalyzeThreshold;
  /// Specifies the maximum age (in transactions) that a table's pg_class.relfrozenxid field can attain before a VACUUM operation is forced to prevent transaction ID wraparound within the table. Note that the system will launch autovacuum processes to prevent wraparound even when autovacuum is otherwise disabled. This parameter will cause the server to be restarted.
  final pulumi.Input<int>? autovacuumFreezeMaxAge;
  /// Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  final pulumi.Input<int>? autovacuumMaxWorkers;
  /// Specifies the minimum delay, in seconds, between autovacuum runs on any given database. The default is one minute.
  final pulumi.Input<int>? autovacuumNaptime;
  /// Specifies the cost delay value, in milliseconds, that will be used in automatic VACUUM operations. If -1, uses the regular vacuum_cost_delay value, which is 20 milliseconds.
  final pulumi.Input<int>? autovacuumVacuumCostDelay;
  /// Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  final pulumi.Input<int>? autovacuumVacuumCostLimit;
  /// Specifies a fraction, in a decimal value, of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size).
  final pulumi.Input<double>? autovacuumVacuumScaleFactor;
  /// Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  final pulumi.Input<int>? autovacuumVacuumThreshold;
  /// The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  final pulumi.Input<int>? backupHour;
  /// The minute of the backup hour when backup for the service starts. New backup is only started if previous backup has already completed.
  final pulumi.Input<int>? backupMinute;
  /// Specifies the delay, in milliseconds, between activity rounds for the background writer. Default is 200 ms.
  final pulumi.Input<int>? bgwriterDelay;
  /// The amount of kilobytes that need to be written by the background writer before attempting to force the OS to issue these writes to underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  final pulumi.Input<int>? bgwriterFlushAfter;
  /// The maximum number of buffers that the background writer can write. Setting this to zero disables background writing. Default is 100.
  final pulumi.Input<int>? bgwriterLruMaxpages;
  /// The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  final pulumi.Input<double>? bgwriterLruMultiplier;
  /// The ID of the target PostgreSQL cluster.
  final pulumi.Input<String>? clusterId;
  /// The amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  final pulumi.Input<int>? deadlockTimeout;
  /// Specifies the default TOAST compression method for values of compressible columns (the default is lz4). Supported values are: `lz4`, `pglz`.
  final pulumi.Input<String>? defaultToastCompression;
  /// Time out sessions with open transactions after this number of milliseconds
  final pulumi.Input<int>? idleInTransactionSessionTimeout;
  /// Activates, in a boolean, the system-wide use of Just-in-Time Compilation (JIT).
  final pulumi.Input<bool>? jit;
  /// Causes each action executed by autovacuum to be logged if it ran for at least the specified number of milliseconds. Setting this to zero logs all autovacuum actions. Minus-one (the default) disables logging autovacuum actions.
  final pulumi.Input<int>? logAutovacuumMinDuration;
  /// Controls the amount of detail written in the server log for each message that is logged. Supported values are: `TERSE`, `DEFAULT`, `VERBOSE`.
  final pulumi.Input<String>? logErrorVerbosity;
  /// Selects one of the available log-formats. These can support popular log analyzers like pgbadger, pganalyze, etc. Supported values are: `pid=%p,user=%u,db=%d,app=%a,client=%h`, `%m [%p] %q[user=%u,db=%d,app=%a]`, `%t [%p]: [%l-1] user=%u,db=%d,app=%a,client=%h`.
  final pulumi.Input<String>? logLinePrefix;
  /// Log statements that take more than this number of milliseconds to run. If -1, disables.
  final pulumi.Input<int>? logMinDurationStatement;
  /// PostgreSQL maximum number of files that can be open per process.
  final pulumi.Input<int>? maxFilesPerProcess;
  /// PostgreSQL maximum locks per transaction. Once increased, this parameter cannot be lowered from its set value.
  final pulumi.Input<int>? maxLocksPerTransaction;
  /// PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  final pulumi.Input<int>? maxLogicalReplicationWorkers;
  /// Sets the maximum number of workers that the system can support for parallel queries.
  final pulumi.Input<int>? maxParallelWorkers;
  /// Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  final pulumi.Input<int>? maxParallelWorkersPerGather;
  /// PostgreSQL maximum predicate locks per transaction.
  final pulumi.Input<int>? maxPredLocksPerTransaction;
  /// PostgreSQL maximum prepared transactions. Once increased, this parameter cannot be lowered from its set value.
  final pulumi.Input<int>? maxPreparedTransactions;
  /// PostgreSQL maximum replication slots.
  final pulumi.Input<int>? maxReplicationSlots;
  /// Maximum depth of the stack in bytes.
  final pulumi.Input<int>? maxStackDepth;
  /// Max standby archive delay in milliseconds.
  final pulumi.Input<int>? maxStandbyArchiveDelay;
  /// Max standby streaming delay in milliseconds.
  final pulumi.Input<int>? maxStandbyStreamingDelay;
  /// PostgreSQL maximum WAL senders. Once increased, this parameter cannot be lowered from its set value.
  final pulumi.Input<int>? maxWalSenders;
  /// Sets the maximum number of background processes that the system can support. Once increased, this parameter cannot be lowered from its set value.
  final pulumi.Input<int>? maxWorkerProcesses;
  /// Sets the time interval to run pg_partman's scheduled tasks.
  final pulumi.Input<int>? pgPartmanBgwInterval;
  /// Controls which role to use for pg_partman's scheduled background tasks. Must consist of alpha-numeric characters, dots, underscores, or dashes. May not start with dash or dot. Maximum of 64 characters.
  final pulumi.Input<String>? pgPartmanBgwRole;
  /// Controls which statements are counted. Specify 'top' to track top-level statements (those issued directly by clients), 'all' to also track nested statements (such as statements invoked within functions), or 'none' to disable statement statistics collection. The default value is top. Supported values are: `all`, `top`, `none`.
  final pulumi.Input<String>? pgStatStatementsTrack;
  /// PGBouncer connection pooling settings
  final pulumi.Input<List<DatabasePostgresqlConfigPgbouncer>>? pgbouncers;
  /// Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  final pulumi.Input<double>? sharedBuffersPercentage;
  /// PostgreSQL temporary file limit in KiB. If -1, sets to unlimited.
  final pulumi.Input<int>? tempFileLimit;
  /// TimescaleDB extension configuration values
  final pulumi.Input<List<DatabasePostgresqlConfigTimescaledb>>? timescaledbs;
  /// PostgreSQL service timezone
  final pulumi.Input<String>? timezone;
  /// Specifies the number of bytes reserved to track the currently executing command for each active session.
  final pulumi.Input<int>? trackActivityQuerySize;
  /// Record commit time of transactions. The default value is top. Supported values are: `off`, `on`.
  final pulumi.Input<String>? trackCommitTimestamp;
  /// Enables tracking of function call counts and time used. The default value is top. Supported values are: `all`, `pl`, `none`.
  final pulumi.Input<String>? trackFunctions;
  /// Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms. The default value is top. Supported values are: `off`, `on`.
  final pulumi.Input<String>? trackIoTiming;
  /// Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout. Must be either 0 or between 5000 and 10800000.
  final pulumi.Input<int>? walSenderTimeout;
  /// WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance
  final pulumi.Input<int>? walWriterDelay;
  /// The maximum amount of memory, in MB, used by a query operation (such as a sort or hash table) before writing to temporary disk files. Default is 1MB + 0.075% of total RAM (up to 32MB).
  final pulumi.Input<int>? workMem;

  /// Creates a new [DatabasePostgresqlConfigState].
  /// [autovacuumAnalyzeScaleFactor] Specifies a fraction, in a decimal value, of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size).
  /// [autovacuumAnalyzeThreshold] Specifies the minimum number of inserted, updated, or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  /// [autovacuumFreezeMaxAge] Specifies the maximum age (in transactions) that a table's pg_class.relfrozenxid field can attain before a VACUUM operation is forced to prevent transaction ID wraparound within the table. Note that the system will launch autovacuum processes to prevent wraparound even when autovacuum is otherwise disabled. This parameter will cause the server to be restarted.
  /// [autovacuumMaxWorkers] Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  /// [autovacuumNaptime] Specifies the minimum delay, in seconds, between autovacuum runs on any given database. The default is one minute.
  /// [autovacuumVacuumCostDelay] Specifies the cost delay value, in milliseconds, that will be used in automatic VACUUM operations. If -1, uses the regular vacuum_cost_delay value, which is 20 milliseconds.
  /// [autovacuumVacuumCostLimit] Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  /// [autovacuumVacuumScaleFactor] Specifies a fraction, in a decimal value, of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size).
  /// [autovacuumVacuumThreshold] Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  /// [backupHour] The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  /// [backupMinute] The minute of the backup hour when backup for the service starts. New backup is only started if previous backup has already completed.
  /// [bgwriterDelay] Specifies the delay, in milliseconds, between activity rounds for the background writer. Default is 200 ms.
  /// [bgwriterFlushAfter] The amount of kilobytes that need to be written by the background writer before attempting to force the OS to issue these writes to underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  /// [bgwriterLruMaxpages] The maximum number of buffers that the background writer can write. Setting this to zero disables background writing. Default is 100.
  /// [bgwriterLruMultiplier] The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  /// [clusterId] The ID of the target PostgreSQL cluster.
  /// [deadlockTimeout] The amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  /// [defaultToastCompression] Specifies the default TOAST compression method for values of compressible columns (the default is lz4). Supported values are: `lz4`, `pglz`.
  /// [idleInTransactionSessionTimeout] Time out sessions with open transactions after this number of milliseconds
  /// [jit] Activates, in a boolean, the system-wide use of Just-in-Time Compilation (JIT).
  /// [logAutovacuumMinDuration] Causes each action executed by autovacuum to be logged if it ran for at least the specified number of milliseconds. Setting this to zero logs all autovacuum actions. Minus-one (the default) disables logging autovacuum actions.
  /// [logErrorVerbosity] Controls the amount of detail written in the server log for each message that is logged. Supported values are: `TERSE`, `DEFAULT`, `VERBOSE`.
  /// [logLinePrefix] Selects one of the available log-formats. These can support popular log analyzers like pgbadger, pganalyze, etc. Supported values are: `pid=%p,user=%u,db=%d,app=%a,client=%h`, `%m [%p] %q[user=%u,db=%d,app=%a]`, `%t [%p]: [%l-1] user=%u,db=%d,app=%a,client=%h`.
  /// [logMinDurationStatement] Log statements that take more than this number of milliseconds to run. If -1, disables.
  /// [maxFilesPerProcess] PostgreSQL maximum number of files that can be open per process.
  /// [maxLocksPerTransaction] PostgreSQL maximum locks per transaction. Once increased, this parameter cannot be lowered from its set value.
  /// [maxLogicalReplicationWorkers] PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  /// [maxParallelWorkers] Sets the maximum number of workers that the system can support for parallel queries.
  /// [maxParallelWorkersPerGather] Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  /// [maxPredLocksPerTransaction] PostgreSQL maximum predicate locks per transaction.
  /// [maxPreparedTransactions] PostgreSQL maximum prepared transactions. Once increased, this parameter cannot be lowered from its set value.
  /// [maxReplicationSlots] PostgreSQL maximum replication slots.
  /// [maxStackDepth] Maximum depth of the stack in bytes.
  /// [maxStandbyArchiveDelay] Max standby archive delay in milliseconds.
  /// [maxStandbyStreamingDelay] Max standby streaming delay in milliseconds.
  /// [maxWalSenders] PostgreSQL maximum WAL senders. Once increased, this parameter cannot be lowered from its set value.
  /// [maxWorkerProcesses] Sets the maximum number of background processes that the system can support. Once increased, this parameter cannot be lowered from its set value.
  /// [pgPartmanBgwInterval] Sets the time interval to run pg_partman's scheduled tasks.
  /// [pgPartmanBgwRole] Controls which role to use for pg_partman's scheduled background tasks. Must consist of alpha-numeric characters, dots, underscores, or dashes. May not start with dash or dot. Maximum of 64 characters.
  /// [pgStatStatementsTrack] Controls which statements are counted. Specify 'top' to track top-level statements (those issued directly by clients), 'all' to also track nested statements (such as statements invoked within functions), or 'none' to disable statement statistics collection. The default value is top. Supported values are: `all`, `top`, `none`.
  /// [pgbouncers] PGBouncer connection pooling settings
  /// [sharedBuffersPercentage] Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  /// [tempFileLimit] PostgreSQL temporary file limit in KiB. If -1, sets to unlimited.
  /// [timescaledbs] TimescaleDB extension configuration values
  /// [timezone] PostgreSQL service timezone
  /// [trackActivityQuerySize] Specifies the number of bytes reserved to track the currently executing command for each active session.
  /// [trackCommitTimestamp] Record commit time of transactions. The default value is top. Supported values are: `off`, `on`.
  /// [trackFunctions] Enables tracking of function call counts and time used. The default value is top. Supported values are: `all`, `pl`, `none`.
  /// [trackIoTiming] Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms. The default value is top. Supported values are: `off`, `on`.
  /// [walSenderTimeout] Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout. Must be either 0 or between 5000 and 10800000.
  /// [walWriterDelay] WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance
  /// [workMem] The maximum amount of memory, in MB, used by a query operation (such as a sort or hash table) before writing to temporary disk files. Default is 1MB + 0.075% of total RAM (up to 32MB).
  DatabasePostgresqlConfigState({
    this.autovacuumAnalyzeScaleFactor,
    this.autovacuumAnalyzeThreshold,
    this.autovacuumFreezeMaxAge,
    this.autovacuumMaxWorkers,
    this.autovacuumNaptime,
    this.autovacuumVacuumCostDelay,
    this.autovacuumVacuumCostLimit,
    this.autovacuumVacuumScaleFactor,
    this.autovacuumVacuumThreshold,
    this.backupHour,
    this.backupMinute,
    this.bgwriterDelay,
    this.bgwriterFlushAfter,
    this.bgwriterLruMaxpages,
    this.bgwriterLruMultiplier,
    this.clusterId,
    this.deadlockTimeout,
    this.defaultToastCompression,
    this.idleInTransactionSessionTimeout,
    this.jit,
    this.logAutovacuumMinDuration,
    this.logErrorVerbosity,
    this.logLinePrefix,
    this.logMinDurationStatement,
    this.maxFilesPerProcess,
    this.maxLocksPerTransaction,
    this.maxLogicalReplicationWorkers,
    this.maxParallelWorkers,
    this.maxParallelWorkersPerGather,
    this.maxPredLocksPerTransaction,
    this.maxPreparedTransactions,
    this.maxReplicationSlots,
    this.maxStackDepth,
    this.maxStandbyArchiveDelay,
    this.maxStandbyStreamingDelay,
    this.maxWalSenders,
    this.maxWorkerProcesses,
    this.pgPartmanBgwInterval,
    this.pgPartmanBgwRole,
    this.pgStatStatementsTrack,
    this.pgbouncers,
    this.sharedBuffersPercentage,
    this.tempFileLimit,
    this.timescaledbs,
    this.timezone,
    this.trackActivityQuerySize,
    this.trackCommitTimestamp,
    this.trackFunctions,
    this.trackIoTiming,
    this.walSenderTimeout,
    this.walWriterDelay,
    this.workMem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autovacuumAnalyzeScaleFactor': ?autovacuumAnalyzeScaleFactor,
      'autovacuumAnalyzeThreshold': ?autovacuumAnalyzeThreshold,
      'autovacuumFreezeMaxAge': ?autovacuumFreezeMaxAge,
      'autovacuumMaxWorkers': ?autovacuumMaxWorkers,
      'autovacuumNaptime': ?autovacuumNaptime,
      'autovacuumVacuumCostDelay': ?autovacuumVacuumCostDelay,
      'autovacuumVacuumCostLimit': ?autovacuumVacuumCostLimit,
      'autovacuumVacuumScaleFactor': ?autovacuumVacuumScaleFactor,
      'autovacuumVacuumThreshold': ?autovacuumVacuumThreshold,
      'backupHour': ?backupHour,
      'backupMinute': ?backupMinute,
      'bgwriterDelay': ?bgwriterDelay,
      'bgwriterFlushAfter': ?bgwriterFlushAfter,
      'bgwriterLruMaxpages': ?bgwriterLruMaxpages,
      'bgwriterLruMultiplier': ?bgwriterLruMultiplier,
      'clusterId': ?clusterId,
      'deadlockTimeout': ?deadlockTimeout,
      'defaultToastCompression': ?defaultToastCompression,
      'idleInTransactionSessionTimeout': ?idleInTransactionSessionTimeout,
      'jit': ?jit,
      'logAutovacuumMinDuration': ?logAutovacuumMinDuration,
      'logErrorVerbosity': ?logErrorVerbosity,
      'logLinePrefix': ?logLinePrefix,
      'logMinDurationStatement': ?logMinDurationStatement,
      'maxFilesPerProcess': ?maxFilesPerProcess,
      'maxLocksPerTransaction': ?maxLocksPerTransaction,
      'maxLogicalReplicationWorkers': ?maxLogicalReplicationWorkers,
      'maxParallelWorkers': ?maxParallelWorkers,
      'maxParallelWorkersPerGather': ?maxParallelWorkersPerGather,
      'maxPredLocksPerTransaction': ?maxPredLocksPerTransaction,
      'maxPreparedTransactions': ?maxPreparedTransactions,
      'maxReplicationSlots': ?maxReplicationSlots,
      'maxStackDepth': ?maxStackDepth,
      'maxStandbyArchiveDelay': ?maxStandbyArchiveDelay,
      'maxStandbyStreamingDelay': ?maxStandbyStreamingDelay,
      'maxWalSenders': ?maxWalSenders,
      'maxWorkerProcesses': ?maxWorkerProcesses,
      'pgPartmanBgwInterval': ?pgPartmanBgwInterval,
      'pgPartmanBgwRole': ?pgPartmanBgwRole,
      'pgStatStatementsTrack': ?pgStatStatementsTrack,
      'pgbouncers': ?pulumi.Input.mapOptionalInputValue<List<DatabasePostgresqlConfigPgbouncer>, List<Map<String, dynamic>>>(pgbouncers, (value) => pulumi.Input.encodeList<DatabasePostgresqlConfigPgbouncer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharedBuffersPercentage': ?sharedBuffersPercentage,
      'tempFileLimit': ?tempFileLimit,
      'timescaledbs': ?pulumi.Input.mapOptionalInputValue<List<DatabasePostgresqlConfigTimescaledb>, List<Map<String, dynamic>>>(timescaledbs, (value) => pulumi.Input.encodeList<DatabasePostgresqlConfigTimescaledb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': ?timezone,
      'trackActivityQuerySize': ?trackActivityQuerySize,
      'trackCommitTimestamp': ?trackCommitTimestamp,
      'trackFunctions': ?trackFunctions,
      'trackIoTiming': ?trackIoTiming,
      'walSenderTimeout': ?walSenderTimeout,
      'walWriterDelay': ?walWriterDelay,
      'workMem': ?workMem,
    };
  }

  factory DatabasePostgresqlConfigState.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlConfigState(
      autovacuumAnalyzeScaleFactor: map['autovacuumAnalyzeScaleFactor'] == null ? null : (map['autovacuumAnalyzeScaleFactor']! as double).input(),
      autovacuumAnalyzeThreshold: map['autovacuumAnalyzeThreshold'] == null ? null : (map['autovacuumAnalyzeThreshold']! as int).input(),
      autovacuumFreezeMaxAge: map['autovacuumFreezeMaxAge'] == null ? null : (map['autovacuumFreezeMaxAge']! as int).input(),
      autovacuumMaxWorkers: map['autovacuumMaxWorkers'] == null ? null : (map['autovacuumMaxWorkers']! as int).input(),
      autovacuumNaptime: map['autovacuumNaptime'] == null ? null : (map['autovacuumNaptime']! as int).input(),
      autovacuumVacuumCostDelay: map['autovacuumVacuumCostDelay'] == null ? null : (map['autovacuumVacuumCostDelay']! as int).input(),
      autovacuumVacuumCostLimit: map['autovacuumVacuumCostLimit'] == null ? null : (map['autovacuumVacuumCostLimit']! as int).input(),
      autovacuumVacuumScaleFactor: map['autovacuumVacuumScaleFactor'] == null ? null : (map['autovacuumVacuumScaleFactor']! as double).input(),
      autovacuumVacuumThreshold: map['autovacuumVacuumThreshold'] == null ? null : (map['autovacuumVacuumThreshold']! as int).input(),
      backupHour: map['backupHour'] == null ? null : (map['backupHour']! as int).input(),
      backupMinute: map['backupMinute'] == null ? null : (map['backupMinute']! as int).input(),
      bgwriterDelay: map['bgwriterDelay'] == null ? null : (map['bgwriterDelay']! as int).input(),
      bgwriterFlushAfter: map['bgwriterFlushAfter'] == null ? null : (map['bgwriterFlushAfter']! as int).input(),
      bgwriterLruMaxpages: map['bgwriterLruMaxpages'] == null ? null : (map['bgwriterLruMaxpages']! as int).input(),
      bgwriterLruMultiplier: map['bgwriterLruMultiplier'] == null ? null : (map['bgwriterLruMultiplier']! as double).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      deadlockTimeout: map['deadlockTimeout'] == null ? null : (map['deadlockTimeout']! as int).input(),
      defaultToastCompression: map['defaultToastCompression'] == null ? null : (map['defaultToastCompression']! as String).input(),
      idleInTransactionSessionTimeout: map['idleInTransactionSessionTimeout'] == null ? null : (map['idleInTransactionSessionTimeout']! as int).input(),
      jit: map['jit'] == null ? null : (map['jit']! as bool).input(),
      logAutovacuumMinDuration: map['logAutovacuumMinDuration'] == null ? null : (map['logAutovacuumMinDuration']! as int).input(),
      logErrorVerbosity: map['logErrorVerbosity'] == null ? null : (map['logErrorVerbosity']! as String).input(),
      logLinePrefix: map['logLinePrefix'] == null ? null : (map['logLinePrefix']! as String).input(),
      logMinDurationStatement: map['logMinDurationStatement'] == null ? null : (map['logMinDurationStatement']! as int).input(),
      maxFilesPerProcess: map['maxFilesPerProcess'] == null ? null : (map['maxFilesPerProcess']! as int).input(),
      maxLocksPerTransaction: map['maxLocksPerTransaction'] == null ? null : (map['maxLocksPerTransaction']! as int).input(),
      maxLogicalReplicationWorkers: map['maxLogicalReplicationWorkers'] == null ? null : (map['maxLogicalReplicationWorkers']! as int).input(),
      maxParallelWorkers: map['maxParallelWorkers'] == null ? null : (map['maxParallelWorkers']! as int).input(),
      maxParallelWorkersPerGather: map['maxParallelWorkersPerGather'] == null ? null : (map['maxParallelWorkersPerGather']! as int).input(),
      maxPredLocksPerTransaction: map['maxPredLocksPerTransaction'] == null ? null : (map['maxPredLocksPerTransaction']! as int).input(),
      maxPreparedTransactions: map['maxPreparedTransactions'] == null ? null : (map['maxPreparedTransactions']! as int).input(),
      maxReplicationSlots: map['maxReplicationSlots'] == null ? null : (map['maxReplicationSlots']! as int).input(),
      maxStackDepth: map['maxStackDepth'] == null ? null : (map['maxStackDepth']! as int).input(),
      maxStandbyArchiveDelay: map['maxStandbyArchiveDelay'] == null ? null : (map['maxStandbyArchiveDelay']! as int).input(),
      maxStandbyStreamingDelay: map['maxStandbyStreamingDelay'] == null ? null : (map['maxStandbyStreamingDelay']! as int).input(),
      maxWalSenders: map['maxWalSenders'] == null ? null : (map['maxWalSenders']! as int).input(),
      maxWorkerProcesses: map['maxWorkerProcesses'] == null ? null : (map['maxWorkerProcesses']! as int).input(),
      pgPartmanBgwInterval: map['pgPartmanBgwInterval'] == null ? null : (map['pgPartmanBgwInterval']! as int).input(),
      pgPartmanBgwRole: map['pgPartmanBgwRole'] == null ? null : (map['pgPartmanBgwRole']! as String).input(),
      pgStatStatementsTrack: map['pgStatStatementsTrack'] == null ? null : (map['pgStatStatementsTrack']! as String).input(),
      pgbouncers: map['pgbouncers'] == null ? null : (pulumi.Input.decodeList<DatabasePostgresqlConfigPgbouncer>(map['pgbouncers']!, (value) => DatabasePostgresqlConfigPgbouncer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sharedBuffersPercentage: map['sharedBuffersPercentage'] == null ? null : (map['sharedBuffersPercentage']! as double).input(),
      tempFileLimit: map['tempFileLimit'] == null ? null : (map['tempFileLimit']! as int).input(),
      timescaledbs: map['timescaledbs'] == null ? null : (pulumi.Input.decodeList<DatabasePostgresqlConfigTimescaledb>(map['timescaledbs']!, (value) => DatabasePostgresqlConfigTimescaledb.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      trackActivityQuerySize: map['trackActivityQuerySize'] == null ? null : (map['trackActivityQuerySize']! as int).input(),
      trackCommitTimestamp: map['trackCommitTimestamp'] == null ? null : (map['trackCommitTimestamp']! as String).input(),
      trackFunctions: map['trackFunctions'] == null ? null : (map['trackFunctions']! as String).input(),
      trackIoTiming: map['trackIoTiming'] == null ? null : (map['trackIoTiming']! as String).input(),
      walSenderTimeout: map['walSenderTimeout'] == null ? null : (map['walSenderTimeout']! as int).input(),
      walWriterDelay: map['walWriterDelay'] == null ? null : (map['walWriterDelay']! as int).input(),
      workMem: map['workMem'] == null ? null : (map['workMem']! as int).input(),
    );
  }
}

