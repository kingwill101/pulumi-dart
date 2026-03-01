// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_postgresql_v2_pending_update.dart';
import 'get_database_postgresql_v2_private_network.dart';
import 'get_database_postgresql_v2_updates.dart';

/// Result data returned by getDatabasePostgresqlV2.
class GetDatabasePostgresqlV2Result {
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
  /// The Managed Database engine. (e.g. `postgresql`)
  final String engine;
  /// Specifies a fraction of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size)
  final double engineConfigPgAutovacuumAnalyzeScaleFactor;
  /// Specifies the minimum number of inserted, updated or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  final int engineConfigPgAutovacuumAnalyzeThreshold;
  /// Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  final int engineConfigPgAutovacuumMaxWorkers;
  /// Specifies the minimum delay between autovacuum runs on any given database. The delay is measured in seconds, and the default is one minute
  final int engineConfigPgAutovacuumNaptime;
  /// Specifies the cost delay value that will be used in automatic VACUUM operations. If -1 is specified, the regular vacuum_cost_delay value will be used. The default value is 20 milliseconds
  final int engineConfigPgAutovacuumVacuumCostDelay;
  /// Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  final int engineConfigPgAutovacuumVacuumCostLimit;
  /// Specifies a fraction of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size)
  final double engineConfigPgAutovacuumVacuumScaleFactor;
  /// Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  final int engineConfigPgAutovacuumVacuumThreshold;
  /// Specifies the delay between activity rounds for the background writer in milliseconds. Default is 200.
  final int engineConfigPgBgwriterDelay;
  /// Whenever more than bgwriter_flush_after bytes have been written by the background writer, attempt to force the OS to issue these writes to the underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  final int engineConfigPgBgwriterFlushAfter;
  /// In each round, no more than this many buffers will be written by the background writer. Setting this to zero disables background writing. Default is 100.
  final int engineConfigPgBgwriterLruMaxpages;
  /// The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  final double engineConfigPgBgwriterLruMultiplier;
  /// This is the amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  final int engineConfigPgDeadlockTimeout;
  /// Specifies the default TOAST compression method for values of compressible columns (the default is lz4).
  final String engineConfigPgDefaultToastCompression;
  /// Time out sessions with open transactions after this number of milliseconds.
  final int engineConfigPgIdleInTransactionSessionTimeout;
  /// Controls system-wide use of Just-in-Time Compilation (JIT).
  final bool engineConfigPgJit;
  /// PostgreSQL maximum number of files that can be open per process.
  final int engineConfigPgMaxFilesPerProcess;
  /// PostgreSQL maximum locks per transaction.
  final int engineConfigPgMaxLocksPerTransaction;
  /// PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  final int engineConfigPgMaxLogicalReplicationWorkers;
  /// Sets the maximum number of workers that the system can support for parallel queries.
  final int engineConfigPgMaxParallelWorkers;
  /// Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  final int engineConfigPgMaxParallelWorkersPerGather;
  /// PostgreSQL maximum predicate locks per transaction.
  final int engineConfigPgMaxPredLocksPerTransaction;
  /// PostgreSQL maximum replication slots.
  final int engineConfigPgMaxReplicationSlots;
  /// PostgreSQL maximum WAL size (MB) reserved for replication slots. Default is -1 (unlimited). wal_keep_size minimum WAL size setting takes precedence over this.
  final int engineConfigPgMaxSlotWalKeepSize;
  /// Maximum depth of the stack in bytes.
  final int engineConfigPgMaxStackDepth;
  /// Max standby archive delay in milliseconds.
  final int engineConfigPgMaxStandbyArchiveDelay;
  /// Max standby streaming delay in milliseconds.
  final int engineConfigPgMaxStandbyStreamingDelay;
  /// PostgreSQL maximum WAL senders.
  final int engineConfigPgMaxWalSenders;
  /// Sets the maximum number of background processes that the system can support.
  final int engineConfigPgMaxWorkerProcesses;
  /// Chooses the algorithm for encrypting passwords.
  final String engineConfigPgPasswordEncryption;
  /// Sets the time interval to run pg_partman's scheduled tasks.
  final int engineConfigPgPgPartmanBgwInterval;
  /// Controls which role to use for pg_partman's scheduled background tasks.
  final String engineConfigPgPgPartmanBgwRole;
  /// Enables or disables query plan monitoring.
  final bool engineConfigPgPgStatMonitorPgsmEnableQueryPlan;
  /// Sets the maximum number of buckets.
  final int engineConfigPgPgStatMonitorPgsmMaxBuckets;
  /// Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
  final String engineConfigPgPgStatStatementsTrack;
  /// Enable the pg_stat_monitor extension. Enabling this extension will cause the cluster to be restarted. When this extension is enabled, pg_stat_statements results for utility commands are unreliable.
  final bool engineConfigPgStatMonitorEnable;
  /// PostgreSQL temporary file limit in KiB, -1 for unlimited.
  final int engineConfigPgTempFileLimit;
  /// PostgreSQL service timezone.
  final String engineConfigPgTimezone;
  /// Specifies the number of bytes reserved to track the currently executing command for each active session.
  final int engineConfigPgTrackActivityQuerySize;
  /// Record commit time of transactions.
  final String engineConfigPgTrackCommitTimestamp;
  /// Enables tracking of function call counts and time used.
  final String engineConfigPgTrackFunctions;
  /// Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
  final String engineConfigPgTrackIoTiming;
  /// Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
  final int engineConfigPgWalSenderTimeout;
  /// WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
  final int engineConfigPgWalWriterDelay;
  /// Number of seconds of master unavailability before triggering database failover to standby.
  final int engineConfigPglookoutMaxFailoverReplicationTimeLag;
  /// Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  final double engineConfigSharedBuffersPercentage;
  /// Sets the maximum amount of memory to be used by a query operation (such as a sort or hash table) before writing to temporary disk files, in MB. Default is 1MB + 0.075% of total RAM (up to 32MB).
  final int engineConfigWorkMem;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/16`)
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
  final List<GetDatabasePostgresqlV2PendingUpdate> pendingUpdates;
  /// The back-end platform for relational databases used by the service.
  final String platform;
  /// The access port for this Managed Database.
  final int port;
  final GetDatabasePostgresqlV2PrivateNetwork privateNetwork;
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
  final GetDatabasePostgresqlV2Updates updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  final String version;

  /// Creates a new [GetDatabasePostgresqlV2Result].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [caCert] The base64-encoded SSL CA certificate for the Managed Database.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [created] When this Managed Database was created.
  /// [encrypted] Whether the Managed Databases is encrypted.
  /// [engine] The Managed Database engine. (e.g. `postgresql`)
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
  /// [engineConfigPgPasswordEncryption] Chooses the algorithm for encrypting passwords.
  /// [engineConfigPgPgPartmanBgwInterval] Sets the time interval to run pg_partman's scheduled tasks.
  /// [engineConfigPgPgPartmanBgwRole] Controls which role to use for pg_partman's scheduled background tasks.
  /// [engineConfigPgPgStatMonitorPgsmEnableQueryPlan] Enables or disables query plan monitoring.
  /// [engineConfigPgPgStatMonitorPgsmMaxBuckets] Sets the maximum number of buckets.
  /// [engineConfigPgPgStatStatementsTrack] Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
  /// [engineConfigPgStatMonitorEnable] Enable the pg_stat_monitor extension. Enabling this extension will cause the cluster to be restarted. When this extension is enabled, pg_stat_statements results for utility commands are unreliable.
  /// [engineConfigPgTempFileLimit] PostgreSQL temporary file limit in KiB, -1 for unlimited.
  /// [engineConfigPgTimezone] PostgreSQL service timezone.
  /// [engineConfigPgTrackActivityQuerySize] Specifies the number of bytes reserved to track the currently executing command for each active session.
  /// [engineConfigPgTrackCommitTimestamp] Record commit time of transactions.
  /// [engineConfigPgTrackFunctions] Enables tracking of function call counts and time used.
  /// [engineConfigPgTrackIoTiming] Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
  /// [engineConfigPgWalSenderTimeout] Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
  /// [engineConfigPgWalWriterDelay] WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
  /// [engineConfigPglookoutMaxFailoverReplicationTimeLag] Number of seconds of master unavailability before triggering database failover to standby.
  /// [engineConfigSharedBuffersPercentage] Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  /// [engineConfigWorkMem] Sets the maximum amount of memory to be used by a query operation (such as a sort or hash table) before writing to temporary disk files, in MB. Default is 1MB + 0.075% of total RAM (up to 32MB).
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `postgresql/16`)
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
  GetDatabasePostgresqlV2Result({
    required this.allowLists,
    required this.caCert,
    required this.clusterSize,
    required this.created,
    required this.encrypted,
    required this.engine,
    required this.engineConfigPgAutovacuumAnalyzeScaleFactor,
    required this.engineConfigPgAutovacuumAnalyzeThreshold,
    required this.engineConfigPgAutovacuumMaxWorkers,
    required this.engineConfigPgAutovacuumNaptime,
    required this.engineConfigPgAutovacuumVacuumCostDelay,
    required this.engineConfigPgAutovacuumVacuumCostLimit,
    required this.engineConfigPgAutovacuumVacuumScaleFactor,
    required this.engineConfigPgAutovacuumVacuumThreshold,
    required this.engineConfigPgBgwriterDelay,
    required this.engineConfigPgBgwriterFlushAfter,
    required this.engineConfigPgBgwriterLruMaxpages,
    required this.engineConfigPgBgwriterLruMultiplier,
    required this.engineConfigPgDeadlockTimeout,
    required this.engineConfigPgDefaultToastCompression,
    required this.engineConfigPgIdleInTransactionSessionTimeout,
    required this.engineConfigPgJit,
    required this.engineConfigPgMaxFilesPerProcess,
    required this.engineConfigPgMaxLocksPerTransaction,
    required this.engineConfigPgMaxLogicalReplicationWorkers,
    required this.engineConfigPgMaxParallelWorkers,
    required this.engineConfigPgMaxParallelWorkersPerGather,
    required this.engineConfigPgMaxPredLocksPerTransaction,
    required this.engineConfigPgMaxReplicationSlots,
    required this.engineConfigPgMaxSlotWalKeepSize,
    required this.engineConfigPgMaxStackDepth,
    required this.engineConfigPgMaxStandbyArchiveDelay,
    required this.engineConfigPgMaxStandbyStreamingDelay,
    required this.engineConfigPgMaxWalSenders,
    required this.engineConfigPgMaxWorkerProcesses,
    required this.engineConfigPgPasswordEncryption,
    required this.engineConfigPgPgPartmanBgwInterval,
    required this.engineConfigPgPgPartmanBgwRole,
    required this.engineConfigPgPgStatMonitorPgsmEnableQueryPlan,
    required this.engineConfigPgPgStatMonitorPgsmMaxBuckets,
    required this.engineConfigPgPgStatStatementsTrack,
    required this.engineConfigPgStatMonitorEnable,
    required this.engineConfigPgTempFileLimit,
    required this.engineConfigPgTimezone,
    required this.engineConfigPgTrackActivityQuerySize,
    required this.engineConfigPgTrackCommitTimestamp,
    required this.engineConfigPgTrackFunctions,
    required this.engineConfigPgTrackIoTiming,
    required this.engineConfigPgWalSenderTimeout,
    required this.engineConfigPgWalWriterDelay,
    required this.engineConfigPglookoutMaxFailoverReplicationTimeLag,
    required this.engineConfigSharedBuffersPercentage,
    required this.engineConfigWorkMem,
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
      'engineConfigPgAutovacuumAnalyzeScaleFactor': engineConfigPgAutovacuumAnalyzeScaleFactor,
      'engineConfigPgAutovacuumAnalyzeThreshold': engineConfigPgAutovacuumAnalyzeThreshold,
      'engineConfigPgAutovacuumMaxWorkers': engineConfigPgAutovacuumMaxWorkers,
      'engineConfigPgAutovacuumNaptime': engineConfigPgAutovacuumNaptime,
      'engineConfigPgAutovacuumVacuumCostDelay': engineConfigPgAutovacuumVacuumCostDelay,
      'engineConfigPgAutovacuumVacuumCostLimit': engineConfigPgAutovacuumVacuumCostLimit,
      'engineConfigPgAutovacuumVacuumScaleFactor': engineConfigPgAutovacuumVacuumScaleFactor,
      'engineConfigPgAutovacuumVacuumThreshold': engineConfigPgAutovacuumVacuumThreshold,
      'engineConfigPgBgwriterDelay': engineConfigPgBgwriterDelay,
      'engineConfigPgBgwriterFlushAfter': engineConfigPgBgwriterFlushAfter,
      'engineConfigPgBgwriterLruMaxpages': engineConfigPgBgwriterLruMaxpages,
      'engineConfigPgBgwriterLruMultiplier': engineConfigPgBgwriterLruMultiplier,
      'engineConfigPgDeadlockTimeout': engineConfigPgDeadlockTimeout,
      'engineConfigPgDefaultToastCompression': engineConfigPgDefaultToastCompression,
      'engineConfigPgIdleInTransactionSessionTimeout': engineConfigPgIdleInTransactionSessionTimeout,
      'engineConfigPgJit': engineConfigPgJit,
      'engineConfigPgMaxFilesPerProcess': engineConfigPgMaxFilesPerProcess,
      'engineConfigPgMaxLocksPerTransaction': engineConfigPgMaxLocksPerTransaction,
      'engineConfigPgMaxLogicalReplicationWorkers': engineConfigPgMaxLogicalReplicationWorkers,
      'engineConfigPgMaxParallelWorkers': engineConfigPgMaxParallelWorkers,
      'engineConfigPgMaxParallelWorkersPerGather': engineConfigPgMaxParallelWorkersPerGather,
      'engineConfigPgMaxPredLocksPerTransaction': engineConfigPgMaxPredLocksPerTransaction,
      'engineConfigPgMaxReplicationSlots': engineConfigPgMaxReplicationSlots,
      'engineConfigPgMaxSlotWalKeepSize': engineConfigPgMaxSlotWalKeepSize,
      'engineConfigPgMaxStackDepth': engineConfigPgMaxStackDepth,
      'engineConfigPgMaxStandbyArchiveDelay': engineConfigPgMaxStandbyArchiveDelay,
      'engineConfigPgMaxStandbyStreamingDelay': engineConfigPgMaxStandbyStreamingDelay,
      'engineConfigPgMaxWalSenders': engineConfigPgMaxWalSenders,
      'engineConfigPgMaxWorkerProcesses': engineConfigPgMaxWorkerProcesses,
      'engineConfigPgPasswordEncryption': engineConfigPgPasswordEncryption,
      'engineConfigPgPgPartmanBgwInterval': engineConfigPgPgPartmanBgwInterval,
      'engineConfigPgPgPartmanBgwRole': engineConfigPgPgPartmanBgwRole,
      'engineConfigPgPgStatMonitorPgsmEnableQueryPlan': engineConfigPgPgStatMonitorPgsmEnableQueryPlan,
      'engineConfigPgPgStatMonitorPgsmMaxBuckets': engineConfigPgPgStatMonitorPgsmMaxBuckets,
      'engineConfigPgPgStatStatementsTrack': engineConfigPgPgStatStatementsTrack,
      'engineConfigPgStatMonitorEnable': engineConfigPgStatMonitorEnable,
      'engineConfigPgTempFileLimit': engineConfigPgTempFileLimit,
      'engineConfigPgTimezone': engineConfigPgTimezone,
      'engineConfigPgTrackActivityQuerySize': engineConfigPgTrackActivityQuerySize,
      'engineConfigPgTrackCommitTimestamp': engineConfigPgTrackCommitTimestamp,
      'engineConfigPgTrackFunctions': engineConfigPgTrackFunctions,
      'engineConfigPgTrackIoTiming': engineConfigPgTrackIoTiming,
      'engineConfigPgWalSenderTimeout': engineConfigPgWalSenderTimeout,
      'engineConfigPgWalWriterDelay': engineConfigPgWalWriterDelay,
      'engineConfigPglookoutMaxFailoverReplicationTimeLag': engineConfigPglookoutMaxFailoverReplicationTimeLag,
      'engineConfigSharedBuffersPercentage': engineConfigSharedBuffersPercentage,
      'engineConfigWorkMem': engineConfigWorkMem,
      'engineId': engineId,
      'forkRestoreTime': forkRestoreTime,
      'forkSource': forkSource,
      'hostPrimary': hostPrimary,
      'hostSecondary': hostSecondary,
      'id': id,
      'label': label,
      'members': members,
      'oldestRestoreTime': oldestRestoreTime,
      'pendingUpdates': pulumi.Input.encodeList<GetDatabasePostgresqlV2PendingUpdate, Map<String, dynamic>>(pendingUpdates, (value) => value.toMap()),
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

  factory GetDatabasePostgresqlV2Result.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlV2Result(
      allowLists: (map['allowLists'] as List).cast<String>(),
      caCert: map['caCert'] as String,
      clusterSize: map['clusterSize'] as int,
      created: map['created'] as String,
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      engineConfigPgAutovacuumAnalyzeScaleFactor: map['engineConfigPgAutovacuumAnalyzeScaleFactor'] as double,
      engineConfigPgAutovacuumAnalyzeThreshold: map['engineConfigPgAutovacuumAnalyzeThreshold'] as int,
      engineConfigPgAutovacuumMaxWorkers: map['engineConfigPgAutovacuumMaxWorkers'] as int,
      engineConfigPgAutovacuumNaptime: map['engineConfigPgAutovacuumNaptime'] as int,
      engineConfigPgAutovacuumVacuumCostDelay: map['engineConfigPgAutovacuumVacuumCostDelay'] as int,
      engineConfigPgAutovacuumVacuumCostLimit: map['engineConfigPgAutovacuumVacuumCostLimit'] as int,
      engineConfigPgAutovacuumVacuumScaleFactor: map['engineConfigPgAutovacuumVacuumScaleFactor'] as double,
      engineConfigPgAutovacuumVacuumThreshold: map['engineConfigPgAutovacuumVacuumThreshold'] as int,
      engineConfigPgBgwriterDelay: map['engineConfigPgBgwriterDelay'] as int,
      engineConfigPgBgwriterFlushAfter: map['engineConfigPgBgwriterFlushAfter'] as int,
      engineConfigPgBgwriterLruMaxpages: map['engineConfigPgBgwriterLruMaxpages'] as int,
      engineConfigPgBgwriterLruMultiplier: map['engineConfigPgBgwriterLruMultiplier'] as double,
      engineConfigPgDeadlockTimeout: map['engineConfigPgDeadlockTimeout'] as int,
      engineConfigPgDefaultToastCompression: map['engineConfigPgDefaultToastCompression'] as String,
      engineConfigPgIdleInTransactionSessionTimeout: map['engineConfigPgIdleInTransactionSessionTimeout'] as int,
      engineConfigPgJit: map['engineConfigPgJit'] as bool,
      engineConfigPgMaxFilesPerProcess: map['engineConfigPgMaxFilesPerProcess'] as int,
      engineConfigPgMaxLocksPerTransaction: map['engineConfigPgMaxLocksPerTransaction'] as int,
      engineConfigPgMaxLogicalReplicationWorkers: map['engineConfigPgMaxLogicalReplicationWorkers'] as int,
      engineConfigPgMaxParallelWorkers: map['engineConfigPgMaxParallelWorkers'] as int,
      engineConfigPgMaxParallelWorkersPerGather: map['engineConfigPgMaxParallelWorkersPerGather'] as int,
      engineConfigPgMaxPredLocksPerTransaction: map['engineConfigPgMaxPredLocksPerTransaction'] as int,
      engineConfigPgMaxReplicationSlots: map['engineConfigPgMaxReplicationSlots'] as int,
      engineConfigPgMaxSlotWalKeepSize: map['engineConfigPgMaxSlotWalKeepSize'] as int,
      engineConfigPgMaxStackDepth: map['engineConfigPgMaxStackDepth'] as int,
      engineConfigPgMaxStandbyArchiveDelay: map['engineConfigPgMaxStandbyArchiveDelay'] as int,
      engineConfigPgMaxStandbyStreamingDelay: map['engineConfigPgMaxStandbyStreamingDelay'] as int,
      engineConfigPgMaxWalSenders: map['engineConfigPgMaxWalSenders'] as int,
      engineConfigPgMaxWorkerProcesses: map['engineConfigPgMaxWorkerProcesses'] as int,
      engineConfigPgPasswordEncryption: map['engineConfigPgPasswordEncryption'] as String,
      engineConfigPgPgPartmanBgwInterval: map['engineConfigPgPgPartmanBgwInterval'] as int,
      engineConfigPgPgPartmanBgwRole: map['engineConfigPgPgPartmanBgwRole'] as String,
      engineConfigPgPgStatMonitorPgsmEnableQueryPlan: map['engineConfigPgPgStatMonitorPgsmEnableQueryPlan'] as bool,
      engineConfigPgPgStatMonitorPgsmMaxBuckets: map['engineConfigPgPgStatMonitorPgsmMaxBuckets'] as int,
      engineConfigPgPgStatStatementsTrack: map['engineConfigPgPgStatStatementsTrack'] as String,
      engineConfigPgStatMonitorEnable: map['engineConfigPgStatMonitorEnable'] as bool,
      engineConfigPgTempFileLimit: map['engineConfigPgTempFileLimit'] as int,
      engineConfigPgTimezone: map['engineConfigPgTimezone'] as String,
      engineConfigPgTrackActivityQuerySize: map['engineConfigPgTrackActivityQuerySize'] as int,
      engineConfigPgTrackCommitTimestamp: map['engineConfigPgTrackCommitTimestamp'] as String,
      engineConfigPgTrackFunctions: map['engineConfigPgTrackFunctions'] as String,
      engineConfigPgTrackIoTiming: map['engineConfigPgTrackIoTiming'] as String,
      engineConfigPgWalSenderTimeout: map['engineConfigPgWalSenderTimeout'] as int,
      engineConfigPgWalWriterDelay: map['engineConfigPgWalWriterDelay'] as int,
      engineConfigPglookoutMaxFailoverReplicationTimeLag: map['engineConfigPglookoutMaxFailoverReplicationTimeLag'] as int,
      engineConfigSharedBuffersPercentage: map['engineConfigSharedBuffersPercentage'] as double,
      engineConfigWorkMem: map['engineConfigWorkMem'] as int,
      engineId: map['engineId'] as String,
      forkRestoreTime: map['forkRestoreTime'] as String,
      forkSource: map['forkSource'] as int,
      hostPrimary: map['hostPrimary'] as String,
      hostSecondary: map['hostSecondary'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      members: (map['members'] as Map).cast<String, String>(),
      oldestRestoreTime: map['oldestRestoreTime'] as String,
      pendingUpdates: pulumi.Input.decodeList<GetDatabasePostgresqlV2PendingUpdate>(map['pendingUpdates'], (value) => GetDatabasePostgresqlV2PendingUpdate.fromMap((value as Map).cast<String, dynamic>())),
      platform: map['platform'] as String,
      port: map['port'] as int,
      privateNetwork: GetDatabasePostgresqlV2PrivateNetwork.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      rootPassword: map['rootPassword'] as String,
      rootUsername: map['rootUsername'] as String,
      sslConnection: map['sslConnection'] as bool,
      status: map['status'] as String,
      suspended: map['suspended'] as bool,
      type: map['type'] as String,
      updated: map['updated'] as String,
      updates: GetDatabasePostgresqlV2Updates.fromMap((map['updates'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

