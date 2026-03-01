// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_v2_pending_update.dart';
import 'database_postgresql_v2_private_network.dart';
import 'database_postgresql_v2_timeouts.dart';
import 'database_postgresql_v2_updates.dart';

/// Input properties used for looking up and filtering DatabasePostgresqlV2 resources.
class DatabasePostgresqlV2State {
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
  /// The Managed Database engine. (e.g. `postgresql`)
  final pulumi.Input<String>? engine;
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
  final pulumi.Input<List<DatabasePostgresqlV2PendingUpdate>>? pendingUpdates;
  /// The back-end platform for relational databases used by the service.
  final pulumi.Input<String>? platform;
  /// The access port for this Managed Database.
  final pulumi.Input<int>? port;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  final pulumi.Input<DatabasePostgresqlV2PrivateNetwork>? privateNetwork;
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
  final pulumi.Input<DatabasePostgresqlV2Timeouts>? timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  final pulumi.Input<String>? type;
  /// When this Managed Database was last updated.
  final pulumi.Input<String>? updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabasePostgresqlV2Updates>? updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  final pulumi.Input<String>? version;

  /// Creates a new [DatabasePostgresqlV2State].
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
  DatabasePostgresqlV2State({
    pulumi.Output<List<String>>? allowLists,
    pulumi.Output<String>? caCert,
    pulumi.Output<int>? clusterSize,
    pulumi.Output<String>? created,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? engine,
    pulumi.Output<double>? engineConfigPgAutovacuumAnalyzeScaleFactor,
    pulumi.Output<int>? engineConfigPgAutovacuumAnalyzeThreshold,
    pulumi.Output<int>? engineConfigPgAutovacuumMaxWorkers,
    pulumi.Output<int>? engineConfigPgAutovacuumNaptime,
    pulumi.Output<int>? engineConfigPgAutovacuumVacuumCostDelay,
    pulumi.Output<int>? engineConfigPgAutovacuumVacuumCostLimit,
    pulumi.Output<double>? engineConfigPgAutovacuumVacuumScaleFactor,
    pulumi.Output<int>? engineConfigPgAutovacuumVacuumThreshold,
    pulumi.Output<int>? engineConfigPgBgwriterDelay,
    pulumi.Output<int>? engineConfigPgBgwriterFlushAfter,
    pulumi.Output<int>? engineConfigPgBgwriterLruMaxpages,
    pulumi.Output<double>? engineConfigPgBgwriterLruMultiplier,
    pulumi.Output<int>? engineConfigPgDeadlockTimeout,
    pulumi.Output<String>? engineConfigPgDefaultToastCompression,
    pulumi.Output<int>? engineConfigPgIdleInTransactionSessionTimeout,
    pulumi.Output<bool>? engineConfigPgJit,
    pulumi.Output<int>? engineConfigPgMaxFilesPerProcess,
    pulumi.Output<int>? engineConfigPgMaxLocksPerTransaction,
    pulumi.Output<int>? engineConfigPgMaxLogicalReplicationWorkers,
    pulumi.Output<int>? engineConfigPgMaxParallelWorkers,
    pulumi.Output<int>? engineConfigPgMaxParallelWorkersPerGather,
    pulumi.Output<int>? engineConfigPgMaxPredLocksPerTransaction,
    pulumi.Output<int>? engineConfigPgMaxReplicationSlots,
    pulumi.Output<int>? engineConfigPgMaxSlotWalKeepSize,
    pulumi.Output<int>? engineConfigPgMaxStackDepth,
    pulumi.Output<int>? engineConfigPgMaxStandbyArchiveDelay,
    pulumi.Output<int>? engineConfigPgMaxStandbyStreamingDelay,
    pulumi.Output<int>? engineConfigPgMaxWalSenders,
    pulumi.Output<int>? engineConfigPgMaxWorkerProcesses,
    pulumi.Output<String>? engineConfigPgPasswordEncryption,
    pulumi.Output<int>? engineConfigPgPgPartmanBgwInterval,
    pulumi.Output<String>? engineConfigPgPgPartmanBgwRole,
    pulumi.Output<bool>? engineConfigPgPgStatMonitorPgsmEnableQueryPlan,
    pulumi.Output<int>? engineConfigPgPgStatMonitorPgsmMaxBuckets,
    pulumi.Output<String>? engineConfigPgPgStatStatementsTrack,
    pulumi.Output<bool>? engineConfigPgStatMonitorEnable,
    pulumi.Output<int>? engineConfigPgTempFileLimit,
    pulumi.Output<String>? engineConfigPgTimezone,
    pulumi.Output<int>? engineConfigPgTrackActivityQuerySize,
    pulumi.Output<String>? engineConfigPgTrackCommitTimestamp,
    pulumi.Output<String>? engineConfigPgTrackFunctions,
    pulumi.Output<String>? engineConfigPgTrackIoTiming,
    pulumi.Output<int>? engineConfigPgWalSenderTimeout,
    pulumi.Output<int>? engineConfigPgWalWriterDelay,
    pulumi.Output<int>? engineConfigPglookoutMaxFailoverReplicationTimeLag,
    pulumi.Output<double>? engineConfigSharedBuffersPercentage,
    pulumi.Output<int>? engineConfigWorkMem,
    pulumi.Output<String>? engineId,
    pulumi.Output<String>? forkRestoreTime,
    pulumi.Output<int>? forkSource,
    pulumi.Output<String>? hostPrimary,
    pulumi.Output<String>? hostSecondary,
    pulumi.Output<String>? label,
    pulumi.Output<Map<String, String>>? members,
    pulumi.Output<String>? oldestRestoreTime,
    pulumi.Output<List<DatabasePostgresqlV2PendingUpdate>>? pendingUpdates,
    pulumi.Output<String>? platform,
    pulumi.Output<int>? port,
    pulumi.Output<DatabasePostgresqlV2PrivateNetwork>? privateNetwork,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootPassword,
    pulumi.Output<String>? rootUsername,
    pulumi.Output<bool>? sslConnection,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? suspended,
    pulumi.Output<DatabasePostgresqlV2Timeouts>? timeouts,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updated,
    pulumi.Output<DatabasePostgresqlV2Updates>? updates,
    pulumi.Output<String>? version,
  }) :
      allowLists = pulumi.Input.asOptionalInput<List<String>>(allowLists),
      caCert = pulumi.Input.asOptionalInput<String>(caCert),
      clusterSize = pulumi.Input.asOptionalInput<int>(clusterSize),
      created = pulumi.Input.asOptionalInput<String>(created),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineConfigPgAutovacuumAnalyzeScaleFactor = pulumi.Input.asOptionalInput<double>(engineConfigPgAutovacuumAnalyzeScaleFactor),
      engineConfigPgAutovacuumAnalyzeThreshold = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumAnalyzeThreshold),
      engineConfigPgAutovacuumMaxWorkers = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumMaxWorkers),
      engineConfigPgAutovacuumNaptime = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumNaptime),
      engineConfigPgAutovacuumVacuumCostDelay = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumVacuumCostDelay),
      engineConfigPgAutovacuumVacuumCostLimit = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumVacuumCostLimit),
      engineConfigPgAutovacuumVacuumScaleFactor = pulumi.Input.asOptionalInput<double>(engineConfigPgAutovacuumVacuumScaleFactor),
      engineConfigPgAutovacuumVacuumThreshold = pulumi.Input.asOptionalInput<int>(engineConfigPgAutovacuumVacuumThreshold),
      engineConfigPgBgwriterDelay = pulumi.Input.asOptionalInput<int>(engineConfigPgBgwriterDelay),
      engineConfigPgBgwriterFlushAfter = pulumi.Input.asOptionalInput<int>(engineConfigPgBgwriterFlushAfter),
      engineConfigPgBgwriterLruMaxpages = pulumi.Input.asOptionalInput<int>(engineConfigPgBgwriterLruMaxpages),
      engineConfigPgBgwriterLruMultiplier = pulumi.Input.asOptionalInput<double>(engineConfigPgBgwriterLruMultiplier),
      engineConfigPgDeadlockTimeout = pulumi.Input.asOptionalInput<int>(engineConfigPgDeadlockTimeout),
      engineConfigPgDefaultToastCompression = pulumi.Input.asOptionalInput<String>(engineConfigPgDefaultToastCompression),
      engineConfigPgIdleInTransactionSessionTimeout = pulumi.Input.asOptionalInput<int>(engineConfigPgIdleInTransactionSessionTimeout),
      engineConfigPgJit = pulumi.Input.asOptionalInput<bool>(engineConfigPgJit),
      engineConfigPgMaxFilesPerProcess = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxFilesPerProcess),
      engineConfigPgMaxLocksPerTransaction = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxLocksPerTransaction),
      engineConfigPgMaxLogicalReplicationWorkers = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxLogicalReplicationWorkers),
      engineConfigPgMaxParallelWorkers = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxParallelWorkers),
      engineConfigPgMaxParallelWorkersPerGather = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxParallelWorkersPerGather),
      engineConfigPgMaxPredLocksPerTransaction = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxPredLocksPerTransaction),
      engineConfigPgMaxReplicationSlots = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxReplicationSlots),
      engineConfigPgMaxSlotWalKeepSize = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxSlotWalKeepSize),
      engineConfigPgMaxStackDepth = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxStackDepth),
      engineConfigPgMaxStandbyArchiveDelay = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxStandbyArchiveDelay),
      engineConfigPgMaxStandbyStreamingDelay = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxStandbyStreamingDelay),
      engineConfigPgMaxWalSenders = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxWalSenders),
      engineConfigPgMaxWorkerProcesses = pulumi.Input.asOptionalInput<int>(engineConfigPgMaxWorkerProcesses),
      engineConfigPgPasswordEncryption = pulumi.Input.asOptionalInput<String>(engineConfigPgPasswordEncryption),
      engineConfigPgPgPartmanBgwInterval = pulumi.Input.asOptionalInput<int>(engineConfigPgPgPartmanBgwInterval),
      engineConfigPgPgPartmanBgwRole = pulumi.Input.asOptionalInput<String>(engineConfigPgPgPartmanBgwRole),
      engineConfigPgPgStatMonitorPgsmEnableQueryPlan = pulumi.Input.asOptionalInput<bool>(engineConfigPgPgStatMonitorPgsmEnableQueryPlan),
      engineConfigPgPgStatMonitorPgsmMaxBuckets = pulumi.Input.asOptionalInput<int>(engineConfigPgPgStatMonitorPgsmMaxBuckets),
      engineConfigPgPgStatStatementsTrack = pulumi.Input.asOptionalInput<String>(engineConfigPgPgStatStatementsTrack),
      engineConfigPgStatMonitorEnable = pulumi.Input.asOptionalInput<bool>(engineConfigPgStatMonitorEnable),
      engineConfigPgTempFileLimit = pulumi.Input.asOptionalInput<int>(engineConfigPgTempFileLimit),
      engineConfigPgTimezone = pulumi.Input.asOptionalInput<String>(engineConfigPgTimezone),
      engineConfigPgTrackActivityQuerySize = pulumi.Input.asOptionalInput<int>(engineConfigPgTrackActivityQuerySize),
      engineConfigPgTrackCommitTimestamp = pulumi.Input.asOptionalInput<String>(engineConfigPgTrackCommitTimestamp),
      engineConfigPgTrackFunctions = pulumi.Input.asOptionalInput<String>(engineConfigPgTrackFunctions),
      engineConfigPgTrackIoTiming = pulumi.Input.asOptionalInput<String>(engineConfigPgTrackIoTiming),
      engineConfigPgWalSenderTimeout = pulumi.Input.asOptionalInput<int>(engineConfigPgWalSenderTimeout),
      engineConfigPgWalWriterDelay = pulumi.Input.asOptionalInput<int>(engineConfigPgWalWriterDelay),
      engineConfigPglookoutMaxFailoverReplicationTimeLag = pulumi.Input.asOptionalInput<int>(engineConfigPglookoutMaxFailoverReplicationTimeLag),
      engineConfigSharedBuffersPercentage = pulumi.Input.asOptionalInput<double>(engineConfigSharedBuffersPercentage),
      engineConfigWorkMem = pulumi.Input.asOptionalInput<int>(engineConfigWorkMem),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      forkRestoreTime = pulumi.Input.asOptionalInput<String>(forkRestoreTime),
      forkSource = pulumi.Input.asOptionalInput<int>(forkSource),
      hostPrimary = pulumi.Input.asOptionalInput<String>(hostPrimary),
      hostSecondary = pulumi.Input.asOptionalInput<String>(hostSecondary),
      label = pulumi.Input.asOptionalInput<String>(label),
      members = pulumi.Input.asOptionalInput<Map<String, String>>(members),
      oldestRestoreTime = pulumi.Input.asOptionalInput<String>(oldestRestoreTime),
      pendingUpdates = pulumi.Input.asOptionalInput<List<DatabasePostgresqlV2PendingUpdate>>(pendingUpdates),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      port = pulumi.Input.asOptionalInput<int>(port),
      privateNetwork = pulumi.Input.asOptionalInput<DatabasePostgresqlV2PrivateNetwork>(privateNetwork),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootPassword = pulumi.Input.asOptionalInput<String>(rootPassword),
      rootUsername = pulumi.Input.asOptionalInput<String>(rootUsername),
      sslConnection = pulumi.Input.asOptionalInput<bool>(sslConnection),
      status = pulumi.Input.asOptionalInput<String>(status),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended),
      timeouts = pulumi.Input.asOptionalInput<DatabasePostgresqlV2Timeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updates = pulumi.Input.asOptionalInput<DatabasePostgresqlV2Updates>(updates),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'caCert': ?caCert,
      'clusterSize': ?clusterSize,
      'created': ?created,
      'encrypted': ?encrypted,
      'engine': ?engine,
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
      'engineId': ?engineId,
      'forkRestoreTime': ?forkRestoreTime,
      'forkSource': ?forkSource,
      'hostPrimary': ?hostPrimary,
      'hostSecondary': ?hostSecondary,
      'label': ?label,
      'members': ?members,
      'oldestRestoreTime': ?oldestRestoreTime,
      'pendingUpdates': ?pulumi.Input.mapOptionalInputValue<List<DatabasePostgresqlV2PendingUpdate>, List<Map<String, dynamic>>>(pendingUpdates, (value) => pulumi.Input.encodeList<DatabasePostgresqlV2PendingUpdate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platform': ?platform,
      'port': ?port,
      'privateNetwork': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2PrivateNetwork, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'region': ?region,
      'rootPassword': ?rootPassword,
      'rootUsername': ?rootUsername,
      'sslConnection': ?sslConnection,
      'status': ?status,
      'suspended': ?suspended,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2Timeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'updated': ?updated,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory DatabasePostgresqlV2State.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlV2State(
      allowLists: map['allowLists'] == null ? null : pulumi.Output.create<List<String>>((map['allowLists'] as List).cast<String>()),
      caCert: map['caCert'] == null ? null : pulumi.Output.create<String>(map['caCert'] as String),
      clusterSize: map['clusterSize'] == null ? null : pulumi.Output.create<int>(map['clusterSize'] as int),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineConfigPgAutovacuumAnalyzeScaleFactor: map['engineConfigPgAutovacuumAnalyzeScaleFactor'] == null ? null : pulumi.Output.create<double>(map['engineConfigPgAutovacuumAnalyzeScaleFactor'] as double),
      engineConfigPgAutovacuumAnalyzeThreshold: map['engineConfigPgAutovacuumAnalyzeThreshold'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumAnalyzeThreshold'] as int),
      engineConfigPgAutovacuumMaxWorkers: map['engineConfigPgAutovacuumMaxWorkers'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumMaxWorkers'] as int),
      engineConfigPgAutovacuumNaptime: map['engineConfigPgAutovacuumNaptime'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumNaptime'] as int),
      engineConfigPgAutovacuumVacuumCostDelay: map['engineConfigPgAutovacuumVacuumCostDelay'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumVacuumCostDelay'] as int),
      engineConfigPgAutovacuumVacuumCostLimit: map['engineConfigPgAutovacuumVacuumCostLimit'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumVacuumCostLimit'] as int),
      engineConfigPgAutovacuumVacuumScaleFactor: map['engineConfigPgAutovacuumVacuumScaleFactor'] == null ? null : pulumi.Output.create<double>(map['engineConfigPgAutovacuumVacuumScaleFactor'] as double),
      engineConfigPgAutovacuumVacuumThreshold: map['engineConfigPgAutovacuumVacuumThreshold'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgAutovacuumVacuumThreshold'] as int),
      engineConfigPgBgwriterDelay: map['engineConfigPgBgwriterDelay'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgBgwriterDelay'] as int),
      engineConfigPgBgwriterFlushAfter: map['engineConfigPgBgwriterFlushAfter'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgBgwriterFlushAfter'] as int),
      engineConfigPgBgwriterLruMaxpages: map['engineConfigPgBgwriterLruMaxpages'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgBgwriterLruMaxpages'] as int),
      engineConfigPgBgwriterLruMultiplier: map['engineConfigPgBgwriterLruMultiplier'] == null ? null : pulumi.Output.create<double>(map['engineConfigPgBgwriterLruMultiplier'] as double),
      engineConfigPgDeadlockTimeout: map['engineConfigPgDeadlockTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgDeadlockTimeout'] as int),
      engineConfigPgDefaultToastCompression: map['engineConfigPgDefaultToastCompression'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgDefaultToastCompression'] as String),
      engineConfigPgIdleInTransactionSessionTimeout: map['engineConfigPgIdleInTransactionSessionTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgIdleInTransactionSessionTimeout'] as int),
      engineConfigPgJit: map['engineConfigPgJit'] == null ? null : pulumi.Output.create<bool>(map['engineConfigPgJit'] as bool),
      engineConfigPgMaxFilesPerProcess: map['engineConfigPgMaxFilesPerProcess'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxFilesPerProcess'] as int),
      engineConfigPgMaxLocksPerTransaction: map['engineConfigPgMaxLocksPerTransaction'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxLocksPerTransaction'] as int),
      engineConfigPgMaxLogicalReplicationWorkers: map['engineConfigPgMaxLogicalReplicationWorkers'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxLogicalReplicationWorkers'] as int),
      engineConfigPgMaxParallelWorkers: map['engineConfigPgMaxParallelWorkers'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxParallelWorkers'] as int),
      engineConfigPgMaxParallelWorkersPerGather: map['engineConfigPgMaxParallelWorkersPerGather'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxParallelWorkersPerGather'] as int),
      engineConfigPgMaxPredLocksPerTransaction: map['engineConfigPgMaxPredLocksPerTransaction'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxPredLocksPerTransaction'] as int),
      engineConfigPgMaxReplicationSlots: map['engineConfigPgMaxReplicationSlots'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxReplicationSlots'] as int),
      engineConfigPgMaxSlotWalKeepSize: map['engineConfigPgMaxSlotWalKeepSize'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxSlotWalKeepSize'] as int),
      engineConfigPgMaxStackDepth: map['engineConfigPgMaxStackDepth'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxStackDepth'] as int),
      engineConfigPgMaxStandbyArchiveDelay: map['engineConfigPgMaxStandbyArchiveDelay'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxStandbyArchiveDelay'] as int),
      engineConfigPgMaxStandbyStreamingDelay: map['engineConfigPgMaxStandbyStreamingDelay'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxStandbyStreamingDelay'] as int),
      engineConfigPgMaxWalSenders: map['engineConfigPgMaxWalSenders'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxWalSenders'] as int),
      engineConfigPgMaxWorkerProcesses: map['engineConfigPgMaxWorkerProcesses'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgMaxWorkerProcesses'] as int),
      engineConfigPgPasswordEncryption: map['engineConfigPgPasswordEncryption'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgPasswordEncryption'] as String),
      engineConfigPgPgPartmanBgwInterval: map['engineConfigPgPgPartmanBgwInterval'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgPgPartmanBgwInterval'] as int),
      engineConfigPgPgPartmanBgwRole: map['engineConfigPgPgPartmanBgwRole'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgPgPartmanBgwRole'] as String),
      engineConfigPgPgStatMonitorPgsmEnableQueryPlan: map['engineConfigPgPgStatMonitorPgsmEnableQueryPlan'] == null ? null : pulumi.Output.create<bool>(map['engineConfigPgPgStatMonitorPgsmEnableQueryPlan'] as bool),
      engineConfigPgPgStatMonitorPgsmMaxBuckets: map['engineConfigPgPgStatMonitorPgsmMaxBuckets'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgPgStatMonitorPgsmMaxBuckets'] as int),
      engineConfigPgPgStatStatementsTrack: map['engineConfigPgPgStatStatementsTrack'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgPgStatStatementsTrack'] as String),
      engineConfigPgStatMonitorEnable: map['engineConfigPgStatMonitorEnable'] == null ? null : pulumi.Output.create<bool>(map['engineConfigPgStatMonitorEnable'] as bool),
      engineConfigPgTempFileLimit: map['engineConfigPgTempFileLimit'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgTempFileLimit'] as int),
      engineConfigPgTimezone: map['engineConfigPgTimezone'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgTimezone'] as String),
      engineConfigPgTrackActivityQuerySize: map['engineConfigPgTrackActivityQuerySize'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgTrackActivityQuerySize'] as int),
      engineConfigPgTrackCommitTimestamp: map['engineConfigPgTrackCommitTimestamp'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgTrackCommitTimestamp'] as String),
      engineConfigPgTrackFunctions: map['engineConfigPgTrackFunctions'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgTrackFunctions'] as String),
      engineConfigPgTrackIoTiming: map['engineConfigPgTrackIoTiming'] == null ? null : pulumi.Output.create<String>(map['engineConfigPgTrackIoTiming'] as String),
      engineConfigPgWalSenderTimeout: map['engineConfigPgWalSenderTimeout'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgWalSenderTimeout'] as int),
      engineConfigPgWalWriterDelay: map['engineConfigPgWalWriterDelay'] == null ? null : pulumi.Output.create<int>(map['engineConfigPgWalWriterDelay'] as int),
      engineConfigPglookoutMaxFailoverReplicationTimeLag: map['engineConfigPglookoutMaxFailoverReplicationTimeLag'] == null ? null : pulumi.Output.create<int>(map['engineConfigPglookoutMaxFailoverReplicationTimeLag'] as int),
      engineConfigSharedBuffersPercentage: map['engineConfigSharedBuffersPercentage'] == null ? null : pulumi.Output.create<double>(map['engineConfigSharedBuffersPercentage'] as double),
      engineConfigWorkMem: map['engineConfigWorkMem'] == null ? null : pulumi.Output.create<int>(map['engineConfigWorkMem'] as int),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      forkRestoreTime: map['forkRestoreTime'] == null ? null : pulumi.Output.create<String>(map['forkRestoreTime'] as String),
      forkSource: map['forkSource'] == null ? null : pulumi.Output.create<int>(map['forkSource'] as int),
      hostPrimary: map['hostPrimary'] == null ? null : pulumi.Output.create<String>(map['hostPrimary'] as String),
      hostSecondary: map['hostSecondary'] == null ? null : pulumi.Output.create<String>(map['hostSecondary'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<Map<String, String>>((map['members'] as Map).cast<String, String>()),
      oldestRestoreTime: map['oldestRestoreTime'] == null ? null : pulumi.Output.create<String>(map['oldestRestoreTime'] as String),
      pendingUpdates: map['pendingUpdates'] == null ? null : pulumi.Output.create<List<DatabasePostgresqlV2PendingUpdate>>(pulumi.Input.decodeList<DatabasePostgresqlV2PendingUpdate>(map['pendingUpdates'], (value) => DatabasePostgresqlV2PendingUpdate.fromMap((value as Map).cast<String, dynamic>()))),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privateNetwork: map['privateNetwork'] == null ? null : pulumi.Output.create<DatabasePostgresqlV2PrivateNetwork>(DatabasePostgresqlV2PrivateNetwork.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootPassword: map['rootPassword'] == null ? null : pulumi.Output.create<String>(map['rootPassword'] as String),
      rootUsername: map['rootUsername'] == null ? null : pulumi.Output.create<String>(map['rootUsername'] as String),
      sslConnection: map['sslConnection'] == null ? null : pulumi.Output.create<bool>(map['sslConnection'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DatabasePostgresqlV2Timeouts>(DatabasePostgresqlV2Timeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updates: map['updates'] == null ? null : pulumi.Output.create<DatabasePostgresqlV2Updates>(DatabasePostgresqlV2Updates.fromMap((map['updates'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

