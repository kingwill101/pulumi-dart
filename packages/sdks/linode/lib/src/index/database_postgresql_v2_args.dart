// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_v2_private_network.dart';
import 'database_postgresql_v2_timeouts.dart';
import 'database_postgresql_v2_updates.dart';

/// {@template pulumi_index_database_postgresql_v2_database_postgresql_v2_args_doc}
/// The set of arguments for DatabasePostgresqlV2.
/// {@endtemplate}
/// {@macro pulumi_index_database_postgresql_v2_database_postgresql_v2_args_doc}
class DatabasePostgresqlV2Args {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
  /// Specifies a fraction of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size)
  final pulumi.Input<double>? engineConfigPgAutovacuumAnalyzeScaleFactor;
  /// Specifies the minimum number of inserted, updated or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  final pulumi.Input<int>? engineConfigPgAutovacuumAnalyzeThreshold;
  /// Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  final pulumi.Input<int>? engineConfigPgAutovacuumMaxWorkers;
  /// Specifies the minimum delay between autovacuum runs on any given database. The delay is measured in seconds, and the default is one minute
  final pulumi.Input<int>? engineConfigPgAutovacuumNaptime;
  /// Specifies the cost delay value that will be used in automatic VACUUM operations. If -1 is specified, the regular vacuum_cost_delay value will be used. The default value is 20 milliseconds
  final pulumi.Input<int>? engineConfigPgAutovacuumVacuumCostDelay;
  /// Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  final pulumi.Input<int>? engineConfigPgAutovacuumVacuumCostLimit;
  /// Specifies a fraction of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size)
  final pulumi.Input<double>? engineConfigPgAutovacuumVacuumScaleFactor;
  /// Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  final pulumi.Input<int>? engineConfigPgAutovacuumVacuumThreshold;
  /// Specifies the delay between activity rounds for the background writer in milliseconds. Default is 200.
  final pulumi.Input<int>? engineConfigPgBgwriterDelay;
  /// Whenever more than bgwriter_flush_after bytes have been written by the background writer, attempt to force the OS to issue these writes to the underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  final pulumi.Input<int>? engineConfigPgBgwriterFlushAfter;
  /// In each round, no more than this many buffers will be written by the background writer. Setting this to zero disables background writing. Default is 100.
  final pulumi.Input<int>? engineConfigPgBgwriterLruMaxpages;
  /// The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  final pulumi.Input<double>? engineConfigPgBgwriterLruMultiplier;
  /// This is the amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  final pulumi.Input<int>? engineConfigPgDeadlockTimeout;
  /// Specifies the default TOAST compression method for values of compressible columns (the default is lz4).
  final pulumi.Input<String>? engineConfigPgDefaultToastCompression;
  /// Time out sessions with open transactions after this number of milliseconds.
  final pulumi.Input<int>? engineConfigPgIdleInTransactionSessionTimeout;
  /// Controls system-wide use of Just-in-Time Compilation (JIT).
  final pulumi.Input<bool>? engineConfigPgJit;
  /// PostgreSQL maximum number of files that can be open per process.
  final pulumi.Input<int>? engineConfigPgMaxFilesPerProcess;
  /// PostgreSQL maximum locks per transaction.
  final pulumi.Input<int>? engineConfigPgMaxLocksPerTransaction;
  /// PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  final pulumi.Input<int>? engineConfigPgMaxLogicalReplicationWorkers;
  /// Sets the maximum number of workers that the system can support for parallel queries.
  final pulumi.Input<int>? engineConfigPgMaxParallelWorkers;
  /// Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  final pulumi.Input<int>? engineConfigPgMaxParallelWorkersPerGather;
  /// PostgreSQL maximum predicate locks per transaction.
  final pulumi.Input<int>? engineConfigPgMaxPredLocksPerTransaction;
  /// PostgreSQL maximum replication slots.
  final pulumi.Input<int>? engineConfigPgMaxReplicationSlots;
  /// PostgreSQL maximum WAL size (MB) reserved for replication slots. Default is -1 (unlimited). wal_keep_size minimum WAL size setting takes precedence over this.
  final pulumi.Input<int>? engineConfigPgMaxSlotWalKeepSize;
  /// Maximum depth of the stack in bytes.
  final pulumi.Input<int>? engineConfigPgMaxStackDepth;
  /// Max standby archive delay in milliseconds.
  final pulumi.Input<int>? engineConfigPgMaxStandbyArchiveDelay;
  /// Max standby streaming delay in milliseconds.
  final pulumi.Input<int>? engineConfigPgMaxStandbyStreamingDelay;
  /// PostgreSQL maximum WAL senders.
  final pulumi.Input<int>? engineConfigPgMaxWalSenders;
  /// Sets the maximum number of background processes that the system can support.
  final pulumi.Input<int>? engineConfigPgMaxWorkerProcesses;
  /// Chooses the algorithm for encrypting passwords. (default `md5`)
  final pulumi.Input<String>? engineConfigPgPasswordEncryption;
  /// Sets the time interval to run pg_partman's scheduled tasks.
  final pulumi.Input<int>? engineConfigPgPgPartmanBgwInterval;
  /// Controls which role to use for pg_partman's scheduled background tasks.
  final pulumi.Input<String>? engineConfigPgPgPartmanBgwRole;
  /// Enables or disables query plan monitoring.
  final pulumi.Input<bool>? engineConfigPgPgStatMonitorPgsmEnableQueryPlan;
  /// Sets the maximum number of buckets.
  final pulumi.Input<int>? engineConfigPgPgStatMonitorPgsmMaxBuckets;
  /// Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
  final pulumi.Input<String>? engineConfigPgPgStatStatementsTrack;
  /// Enable the pg_stat_monitor extension. Enabling this extension will cause the cluster to be restarted. When this extension is enabled, pg_stat_statements results for utility commands are unreliable. (default `false`)
  final pulumi.Input<bool>? engineConfigPgStatMonitorEnable;
  /// PostgreSQL temporary file limit in KiB, -1 for unlimited.
  final pulumi.Input<int>? engineConfigPgTempFileLimit;
  /// PostgreSQL service timezone.
  final pulumi.Input<String>? engineConfigPgTimezone;
  /// Specifies the number of bytes reserved to track the currently executing command for each active session.
  final pulumi.Input<int>? engineConfigPgTrackActivityQuerySize;
  /// Record commit time of transactions.
  final pulumi.Input<String>? engineConfigPgTrackCommitTimestamp;
  /// Enables tracking of function call counts and time used.
  final pulumi.Input<String>? engineConfigPgTrackFunctions;
  /// Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
  final pulumi.Input<String>? engineConfigPgTrackIoTiming;
  /// Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
  final pulumi.Input<int>? engineConfigPgWalSenderTimeout;
  /// WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
  final pulumi.Input<int>? engineConfigPgWalWriterDelay;
  /// Number of seconds of master unavailability before triggering database failover to standby. (default `60`)
  final pulumi.Input<int>? engineConfigPglookoutMaxFailoverReplicationTimeLag;
  /// Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  final pulumi.Input<double>? engineConfigSharedBuffersPercentage;
  /// Sets the maximum amount of memory to be used by a query operation (such as a sort or hash table) before writing to temporary disk files, in MB. Default is 1MB + 0.075% of total RAM (up to 32MB).
  final pulumi.Input<int>? engineConfigWorkMem;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/16`)
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
  final pulumi.Input<DatabasePostgresqlV2PrivateNetwork>? privateNetwork;
  /// The region to use for the Managed Database.
  final pulumi.Input<String> region;
  /// Whether this Managed Database should be suspended.
  final pulumi.Input<bool>? suspended;
  final pulumi.Input<DatabasePostgresqlV2Timeouts>? timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  final pulumi.Input<String> type;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabasePostgresqlV2Updates>? updates;

  /// Creates a new [DatabasePostgresqlV2Args].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [engineConfigPgAutovacuumAnalyzeScaleFactor] Specifies a fraction of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size)
  /// [engineConfigPgAutovacuumAnalyzeThreshold] Specifies the minimum number of inserted, updated or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  /// [engineConfigPgAutovacuumMaxWorkers] Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  /// [engineConfigPgAutovacuumNaptime] Specifies the minimum delay between autovacuum runs on any given database. The delay is measured in seconds, and the default is one minute
  /// [engineConfigPgAutovacuumVacuumCostDelay] Specifies the cost delay value that will be used in automatic VACUUM operations. If -1 is specified, the regular vacuum_cost_delay value will be used. The default value is 20 milliseconds
  /// [engineConfigPgAutovacuumVacuumCostLimit] Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  /// [engineConfigPgAutovacuumVacuumScaleFactor] Specifies a fraction of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size)
  /// [engineConfigPgAutovacuumVacuumThreshold] Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  /// [engineConfigPgBgwriterDelay] Specifies the delay between activity rounds for the background writer in milliseconds. Default is 200.
  /// [engineConfigPgBgwriterFlushAfter] Whenever more than bgwriter_flush_after bytes have been written by the background writer, attempt to force the OS to issue these writes to the underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  /// [engineConfigPgBgwriterLruMaxpages] In each round, no more than this many buffers will be written by the background writer. Setting this to zero disables background writing. Default is 100.
  /// [engineConfigPgBgwriterLruMultiplier] The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  /// [engineConfigPgDeadlockTimeout] This is the amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  /// [engineConfigPgDefaultToastCompression] Specifies the default TOAST compression method for values of compressible columns (the default is lz4).
  /// [engineConfigPgIdleInTransactionSessionTimeout] Time out sessions with open transactions after this number of milliseconds.
  /// [engineConfigPgJit] Controls system-wide use of Just-in-Time Compilation (JIT).
  /// [engineConfigPgMaxFilesPerProcess] PostgreSQL maximum number of files that can be open per process.
  /// [engineConfigPgMaxLocksPerTransaction] PostgreSQL maximum locks per transaction.
  /// [engineConfigPgMaxLogicalReplicationWorkers] PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  /// [engineConfigPgMaxParallelWorkers] Sets the maximum number of workers that the system can support for parallel queries.
  /// [engineConfigPgMaxParallelWorkersPerGather] Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  /// [engineConfigPgMaxPredLocksPerTransaction] PostgreSQL maximum predicate locks per transaction.
  /// [engineConfigPgMaxReplicationSlots] PostgreSQL maximum replication slots.
  /// [engineConfigPgMaxSlotWalKeepSize] PostgreSQL maximum WAL size (MB) reserved for replication slots. Default is -1 (unlimited). wal_keep_size minimum WAL size setting takes precedence over this.
  /// [engineConfigPgMaxStackDepth] Maximum depth of the stack in bytes.
  /// [engineConfigPgMaxStandbyArchiveDelay] Max standby archive delay in milliseconds.
  /// [engineConfigPgMaxStandbyStreamingDelay] Max standby streaming delay in milliseconds.
  /// [engineConfigPgMaxWalSenders] PostgreSQL maximum WAL senders.
  /// [engineConfigPgMaxWorkerProcesses] Sets the maximum number of background processes that the system can support.
  /// [engineConfigPgPasswordEncryption] Chooses the algorithm for encrypting passwords. (default `md5`)
  /// [engineConfigPgPgPartmanBgwInterval] Sets the time interval to run pg_partman's scheduled tasks.
  /// [engineConfigPgPgPartmanBgwRole] Controls which role to use for pg_partman's scheduled background tasks.
  /// [engineConfigPgPgStatMonitorPgsmEnableQueryPlan] Enables or disables query plan monitoring.
  /// [engineConfigPgPgStatMonitorPgsmMaxBuckets] Sets the maximum number of buckets.
  /// [engineConfigPgPgStatStatementsTrack] Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
  /// [engineConfigPgStatMonitorEnable] Enable the pg_stat_monitor extension. Enabling this extension will cause the cluster to be restarted. When this extension is enabled, pg_stat_statements results for utility commands are unreliable. (default `false`)
  /// [engineConfigPgTempFileLimit] PostgreSQL temporary file limit in KiB, -1 for unlimited.
  /// [engineConfigPgTimezone] PostgreSQL service timezone.
  /// [engineConfigPgTrackActivityQuerySize] Specifies the number of bytes reserved to track the currently executing command for each active session.
  /// [engineConfigPgTrackCommitTimestamp] Record commit time of transactions.
  /// [engineConfigPgTrackFunctions] Enables tracking of function call counts and time used.
  /// [engineConfigPgTrackIoTiming] Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
  /// [engineConfigPgWalSenderTimeout] Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
  /// [engineConfigPgWalWriterDelay] WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
  /// [engineConfigPglookoutMaxFailoverReplicationTimeLag] Number of seconds of master unavailability before triggering database failover to standby. (default `60`)
  /// [engineConfigSharedBuffersPercentage] Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  /// [engineConfigWorkMem] Sets the maximum amount of memory to be used by a query operation (such as a sort or hash table) before writing to temporary disk files, in MB. Default is 1MB + 0.075% of total RAM (up to 32MB).
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `postgresql/16`)
  /// [forkRestoreTime] The database timestamp from which it was restored.
  /// [forkSource] The ID of the database that was forked from.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [privateNetwork] Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  /// [region] The region to use for the Managed Database.
  /// [suspended] Whether this Managed Database should be suspended.
  /// [timeouts] Optional.
  /// [type] The Linode Instance type used for the nodes of the Managed Database.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  const DatabasePostgresqlV2Args({
    this.allowLists,
    this.clusterSize,
    this.engineConfigPgAutovacuumAnalyzeScaleFactor,
    this.engineConfigPgAutovacuumAnalyzeThreshold,
    this.engineConfigPgAutovacuumMaxWorkers,
    this.engineConfigPgAutovacuumNaptime,
    this.engineConfigPgAutovacuumVacuumCostDelay,
    this.engineConfigPgAutovacuumVacuumCostLimit,
    this.engineConfigPgAutovacuumVacuumScaleFactor,
    this.engineConfigPgAutovacuumVacuumThreshold,
    this.engineConfigPgBgwriterDelay,
    this.engineConfigPgBgwriterFlushAfter,
    this.engineConfigPgBgwriterLruMaxpages,
    this.engineConfigPgBgwriterLruMultiplier,
    this.engineConfigPgDeadlockTimeout,
    this.engineConfigPgDefaultToastCompression,
    this.engineConfigPgIdleInTransactionSessionTimeout,
    this.engineConfigPgJit,
    this.engineConfigPgMaxFilesPerProcess,
    this.engineConfigPgMaxLocksPerTransaction,
    this.engineConfigPgMaxLogicalReplicationWorkers,
    this.engineConfigPgMaxParallelWorkers,
    this.engineConfigPgMaxParallelWorkersPerGather,
    this.engineConfigPgMaxPredLocksPerTransaction,
    this.engineConfigPgMaxReplicationSlots,
    this.engineConfigPgMaxSlotWalKeepSize,
    this.engineConfigPgMaxStackDepth,
    this.engineConfigPgMaxStandbyArchiveDelay,
    this.engineConfigPgMaxStandbyStreamingDelay,
    this.engineConfigPgMaxWalSenders,
    this.engineConfigPgMaxWorkerProcesses,
    this.engineConfigPgPasswordEncryption,
    this.engineConfigPgPgPartmanBgwInterval,
    this.engineConfigPgPgPartmanBgwRole,
    this.engineConfigPgPgStatMonitorPgsmEnableQueryPlan,
    this.engineConfigPgPgStatMonitorPgsmMaxBuckets,
    this.engineConfigPgPgStatStatementsTrack,
    this.engineConfigPgStatMonitorEnable,
    this.engineConfigPgTempFileLimit,
    this.engineConfigPgTimezone,
    this.engineConfigPgTrackActivityQuerySize,
    this.engineConfigPgTrackCommitTimestamp,
    this.engineConfigPgTrackFunctions,
    this.engineConfigPgTrackIoTiming,
    this.engineConfigPgWalSenderTimeout,
    this.engineConfigPgWalWriterDelay,
    this.engineConfigPglookoutMaxFailoverReplicationTimeLag,
    this.engineConfigSharedBuffersPercentage,
    this.engineConfigWorkMem,
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
      'engineConfigPgAutovacuumAnalyzeScaleFactor': ?engineConfigPgAutovacuumAnalyzeScaleFactor,
      'engineConfigPgAutovacuumAnalyzeThreshold': ?engineConfigPgAutovacuumAnalyzeThreshold,
      'engineConfigPgAutovacuumMaxWorkers': ?engineConfigPgAutovacuumMaxWorkers,
      'engineConfigPgAutovacuumNaptime': ?engineConfigPgAutovacuumNaptime,
      'engineConfigPgAutovacuumVacuumCostDelay': ?engineConfigPgAutovacuumVacuumCostDelay,
      'engineConfigPgAutovacuumVacuumCostLimit': ?engineConfigPgAutovacuumVacuumCostLimit,
      'engineConfigPgAutovacuumVacuumScaleFactor': ?engineConfigPgAutovacuumVacuumScaleFactor,
      'engineConfigPgAutovacuumVacuumThreshold': ?engineConfigPgAutovacuumVacuumThreshold,
      'engineConfigPgBgwriterDelay': ?engineConfigPgBgwriterDelay,
      'engineConfigPgBgwriterFlushAfter': ?engineConfigPgBgwriterFlushAfter,
      'engineConfigPgBgwriterLruMaxpages': ?engineConfigPgBgwriterLruMaxpages,
      'engineConfigPgBgwriterLruMultiplier': ?engineConfigPgBgwriterLruMultiplier,
      'engineConfigPgDeadlockTimeout': ?engineConfigPgDeadlockTimeout,
      'engineConfigPgDefaultToastCompression': ?engineConfigPgDefaultToastCompression,
      'engineConfigPgIdleInTransactionSessionTimeout': ?engineConfigPgIdleInTransactionSessionTimeout,
      'engineConfigPgJit': ?engineConfigPgJit,
      'engineConfigPgMaxFilesPerProcess': ?engineConfigPgMaxFilesPerProcess,
      'engineConfigPgMaxLocksPerTransaction': ?engineConfigPgMaxLocksPerTransaction,
      'engineConfigPgMaxLogicalReplicationWorkers': ?engineConfigPgMaxLogicalReplicationWorkers,
      'engineConfigPgMaxParallelWorkers': ?engineConfigPgMaxParallelWorkers,
      'engineConfigPgMaxParallelWorkersPerGather': ?engineConfigPgMaxParallelWorkersPerGather,
      'engineConfigPgMaxPredLocksPerTransaction': ?engineConfigPgMaxPredLocksPerTransaction,
      'engineConfigPgMaxReplicationSlots': ?engineConfigPgMaxReplicationSlots,
      'engineConfigPgMaxSlotWalKeepSize': ?engineConfigPgMaxSlotWalKeepSize,
      'engineConfigPgMaxStackDepth': ?engineConfigPgMaxStackDepth,
      'engineConfigPgMaxStandbyArchiveDelay': ?engineConfigPgMaxStandbyArchiveDelay,
      'engineConfigPgMaxStandbyStreamingDelay': ?engineConfigPgMaxStandbyStreamingDelay,
      'engineConfigPgMaxWalSenders': ?engineConfigPgMaxWalSenders,
      'engineConfigPgMaxWorkerProcesses': ?engineConfigPgMaxWorkerProcesses,
      'engineConfigPgPasswordEncryption': ?engineConfigPgPasswordEncryption,
      'engineConfigPgPgPartmanBgwInterval': ?engineConfigPgPgPartmanBgwInterval,
      'engineConfigPgPgPartmanBgwRole': ?engineConfigPgPgPartmanBgwRole,
      'engineConfigPgPgStatMonitorPgsmEnableQueryPlan': ?engineConfigPgPgStatMonitorPgsmEnableQueryPlan,
      'engineConfigPgPgStatMonitorPgsmMaxBuckets': ?engineConfigPgPgStatMonitorPgsmMaxBuckets,
      'engineConfigPgPgStatStatementsTrack': ?engineConfigPgPgStatStatementsTrack,
      'engineConfigPgStatMonitorEnable': ?engineConfigPgStatMonitorEnable,
      'engineConfigPgTempFileLimit': ?engineConfigPgTempFileLimit,
      'engineConfigPgTimezone': ?engineConfigPgTimezone,
      'engineConfigPgTrackActivityQuerySize': ?engineConfigPgTrackActivityQuerySize,
      'engineConfigPgTrackCommitTimestamp': ?engineConfigPgTrackCommitTimestamp,
      'engineConfigPgTrackFunctions': ?engineConfigPgTrackFunctions,
      'engineConfigPgTrackIoTiming': ?engineConfigPgTrackIoTiming,
      'engineConfigPgWalSenderTimeout': ?engineConfigPgWalSenderTimeout,
      'engineConfigPgWalWriterDelay': ?engineConfigPgWalWriterDelay,
      'engineConfigPglookoutMaxFailoverReplicationTimeLag': ?engineConfigPglookoutMaxFailoverReplicationTimeLag,
      'engineConfigSharedBuffersPercentage': ?engineConfigSharedBuffersPercentage,
      'engineConfigWorkMem': ?engineConfigWorkMem,
      'engineId': engineId,
      'forkRestoreTime': ?forkRestoreTime,
      'forkSource': ?forkSource,
      'label': label,
      'privateNetwork': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2PrivateNetwork, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'region': region,
      'suspended': ?suspended,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2Timeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': type,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory DatabasePostgresqlV2Args.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlV2Args(
      allowLists: (() { final guardedValue = map['allowLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumAnalyzeScaleFactor: (() { final guardedValue = map['engineConfigPgAutovacuumAnalyzeScaleFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engineConfigPgAutovacuumAnalyzeThreshold: (() { final guardedValue = map['engineConfigPgAutovacuumAnalyzeThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumMaxWorkers: (() { final guardedValue = map['engineConfigPgAutovacuumMaxWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumNaptime: (() { final guardedValue = map['engineConfigPgAutovacuumNaptime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumVacuumCostDelay: (() { final guardedValue = map['engineConfigPgAutovacuumVacuumCostDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumVacuumCostLimit: (() { final guardedValue = map['engineConfigPgAutovacuumVacuumCostLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgAutovacuumVacuumScaleFactor: (() { final guardedValue = map['engineConfigPgAutovacuumVacuumScaleFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engineConfigPgAutovacuumVacuumThreshold: (() { final guardedValue = map['engineConfigPgAutovacuumVacuumThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgBgwriterDelay: (() { final guardedValue = map['engineConfigPgBgwriterDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgBgwriterFlushAfter: (() { final guardedValue = map['engineConfigPgBgwriterFlushAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgBgwriterLruMaxpages: (() { final guardedValue = map['engineConfigPgBgwriterLruMaxpages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgBgwriterLruMultiplier: (() { final guardedValue = map['engineConfigPgBgwriterLruMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engineConfigPgDeadlockTimeout: (() { final guardedValue = map['engineConfigPgDeadlockTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgDefaultToastCompression: (() { final guardedValue = map['engineConfigPgDefaultToastCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgIdleInTransactionSessionTimeout: (() { final guardedValue = map['engineConfigPgIdleInTransactionSessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgJit: (() { final guardedValue = map['engineConfigPgJit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineConfigPgMaxFilesPerProcess: (() { final guardedValue = map['engineConfigPgMaxFilesPerProcess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxLocksPerTransaction: (() { final guardedValue = map['engineConfigPgMaxLocksPerTransaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxLogicalReplicationWorkers: (() { final guardedValue = map['engineConfigPgMaxLogicalReplicationWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxParallelWorkers: (() { final guardedValue = map['engineConfigPgMaxParallelWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxParallelWorkersPerGather: (() { final guardedValue = map['engineConfigPgMaxParallelWorkersPerGather']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxPredLocksPerTransaction: (() { final guardedValue = map['engineConfigPgMaxPredLocksPerTransaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxReplicationSlots: (() { final guardedValue = map['engineConfigPgMaxReplicationSlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxSlotWalKeepSize: (() { final guardedValue = map['engineConfigPgMaxSlotWalKeepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxStackDepth: (() { final guardedValue = map['engineConfigPgMaxStackDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxStandbyArchiveDelay: (() { final guardedValue = map['engineConfigPgMaxStandbyArchiveDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxStandbyStreamingDelay: (() { final guardedValue = map['engineConfigPgMaxStandbyStreamingDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxWalSenders: (() { final guardedValue = map['engineConfigPgMaxWalSenders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgMaxWorkerProcesses: (() { final guardedValue = map['engineConfigPgMaxWorkerProcesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgPasswordEncryption: (() { final guardedValue = map['engineConfigPgPasswordEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgPgPartmanBgwInterval: (() { final guardedValue = map['engineConfigPgPgPartmanBgwInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgPgPartmanBgwRole: (() { final guardedValue = map['engineConfigPgPgPartmanBgwRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgPgStatMonitorPgsmEnableQueryPlan: (() { final guardedValue = map['engineConfigPgPgStatMonitorPgsmEnableQueryPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineConfigPgPgStatMonitorPgsmMaxBuckets: (() { final guardedValue = map['engineConfigPgPgStatMonitorPgsmMaxBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgPgStatStatementsTrack: (() { final guardedValue = map['engineConfigPgPgStatStatementsTrack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgStatMonitorEnable: (() { final guardedValue = map['engineConfigPgStatMonitorEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineConfigPgTempFileLimit: (() { final guardedValue = map['engineConfigPgTempFileLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgTimezone: (() { final guardedValue = map['engineConfigPgTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgTrackActivityQuerySize: (() { final guardedValue = map['engineConfigPgTrackActivityQuerySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgTrackCommitTimestamp: (() { final guardedValue = map['engineConfigPgTrackCommitTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgTrackFunctions: (() { final guardedValue = map['engineConfigPgTrackFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgTrackIoTiming: (() { final guardedValue = map['engineConfigPgTrackIoTiming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineConfigPgWalSenderTimeout: (() { final guardedValue = map['engineConfigPgWalSenderTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPgWalWriterDelay: (() { final guardedValue = map['engineConfigPgWalWriterDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigPglookoutMaxFailoverReplicationTimeLag: (() { final guardedValue = map['engineConfigPglookoutMaxFailoverReplicationTimeLag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineConfigSharedBuffersPercentage: (() { final guardedValue = map['engineConfigSharedBuffersPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      engineConfigWorkMem: (() { final guardedValue = map['engineConfigWorkMem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      forkRestoreTime: (() { final guardedValue = map['forkRestoreTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forkSource: (() { final guardedValue = map['forkSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      privateNetwork: (() { final guardedValue = map['privateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabasePostgresqlV2PrivateNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabasePostgresqlV2Timeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      updates: (() { final guardedValue = map['updates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabasePostgresqlV2Updates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

