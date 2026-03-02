// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_opensearch_config_database_opensearch_config_args_doc}
/// The set of arguments for DatabaseOpensearchConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_opensearch_config_database_opensearch_config_args_doc}
class DatabaseOpensearchConfigArgs {
  /// Specifices whether to allow automatic creation of indices. Default: `true`
  final pulumi.Input<bool>? actionAutoCreateIndexEnabled;
  /// Specifies whether to require explicit index names when deleting indices.
  final pulumi.Input<bool>? actionDestructiveRequiresName;
  /// The ID of the target Opensearch cluster.
  final pulumi.Input<String> clusterId;
  /// Maximum number of shards allowed per data node.
  final pulumi.Input<int>? clusterMaxShardsPerNode;
  /// Maximum concurrent incoming/outgoing shard recoveries (normally replicas) are allowed to happen per node. Default: `2`
  final pulumi.Input<int>? clusterRoutingAllocationNodeConcurrentRecoveries;
  /// Specifies whether to allow security audit logging. Default: `false`
  final pulumi.Input<bool>? enableSecurityAudit;
  /// Maximum content length for HTTP requests to the OpenSearch HTTP API, in bytes. Default: `100000000`
  final pulumi.Input<int>? httpMaxContentLengthBytes;
  /// Maximum size of allowed headers, in bytes. Default: `8192`
  final pulumi.Input<int>? httpMaxHeaderSizeBytes;
  /// Maximum length of an HTTP URL, in bytes. Default: `4096`
  final pulumi.Input<int>? httpMaxInitialLineLengthBytes;
  /// Maximum amount of heap memory used for field data cache, expressed as a percentage. Decreasing the value too much will increase overhead of loading field data. Increasing the value too much will decrease amount of heap available for other operations.
  final pulumi.Input<int>? indicesFielddataCacheSizePercentage;
  /// Total amount of heap used for indexing buffer before writing segments to disk, expressed as a percentage. Too low value will slow down indexing; too high value will increase indexing performance but causes performance issues for query performance. Default: `10`
  final pulumi.Input<int>? indicesMemoryIndexBufferSizePercentage;
  /// Maximum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. The default is unbounded.
  final pulumi.Input<int>? indicesMemoryMaxIndexBufferSizeMb;
  /// Minimum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. Default: `48`
  final pulumi.Input<int>? indicesMemoryMinIndexBufferSizeMb;
  /// Maximum amount of heap used for query cache. Too low value will decrease query performance and increase performance for other operations; too high value will cause issues with other functionality. Default: `10`
  final pulumi.Input<int>? indicesQueriesCacheSizePercentage;
  /// Maximum number of clauses Lucene BooleanQuery can have. Only increase it if necessary, as it may cause performance issues. Default: `1024`
  final pulumi.Input<int>? indicesQueryBoolMaxClauseCount;
  /// Maximum number of file chunks sent in parallel for each recovery. Default: `2`
  final pulumi.Input<int>? indicesRecoveryMaxConcurrentFileChunks;
  /// Limits total inbound and outbound recovery traffic for each node, expressed in mb per second. Applies to both peer recoveries as well as snapshot recoveries (i.e., restores from a snapshot). Default: `40`
  final pulumi.Input<int>? indicesRecoveryMaxMbPerSec;
  /// Specifies whether ISM is enabled or not. Default: `true`
  final pulumi.Input<bool>? ismEnabled;
  /// Specifies whether audit history is enabled or not. The logs from ISM are automatically indexed to a logs document. Default: `true`
  final pulumi.Input<bool>? ismHistoryEnabled;
  /// Maximum age before rolling over the audit history index, in hours. Default: `24`
  final pulumi.Input<int>? ismHistoryMaxAgeHours;
  /// Maximum number of documents before rolling over the audit history index. Default: `2500000`
  final pulumi.Input<int>? ismHistoryMaxDocs;
  /// The time between rollover checks for the audit history index, in hours. Default: `8`
  final pulumi.Input<int>? ismHistoryRolloverCheckPeriodHours;
  /// Length of time long audit history indices are kept, in days. Default: `30`
  final pulumi.Input<int>? ismHistoryRolloverRetentionPeriodDays;
  /// Compatibility mode sets OpenSearch to report its version as 7.10 so clients continue to work. Default: `false`
  final pulumi.Input<bool>? overrideMainResponseVersion;
  /// Enable or disable filtering of alerting by backend roles. Default: `false`
  final pulumi.Input<bool>? pluginsAlertingFilterByBackendRolesEnabled;
  /// Allowlist of remote IP addresses for reindexing. Changing this value will cause all OpenSearch instances to restart.
  final pulumi.Input<List<String>>? reindexRemoteWhitelists;
  /// Limits the number of inline script compilations within a period of time. Default is `use-context`
  final pulumi.Input<String>? scriptMaxCompilationsRate;
  /// Maximum number of aggregation buckets allowed in a single response. Default: `10000`
  final pulumi.Input<int>? searchMaxBuckets;
  /// Size of queue for operations in the analyze thread pool.
  final pulumi.Input<int>? threadPoolAnalyzeQueueSize;
  /// Number of workers in the analyze operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolAnalyzeSize;
  /// Number of workers in the force merge operation thread pool. This pool is used for forcing a merge between shards of one or more indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolForceMergeSize;
  /// Size of queue for operations in the get thread pool.
  final pulumi.Input<int>? threadPoolGetQueueSize;
  /// Number of workers in the get operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolGetSize;
  /// Size of queue for operations in the search thread pool.
  final pulumi.Input<int>? threadPoolSearchQueueSize;
  /// Number of workers in the search operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolSearchSize;
  /// Size of queue for operations in the search throttled thread pool.
  final pulumi.Input<int>? threadPoolSearchThrottledQueueSize;
  /// Number of workers in the search throttled operation thread pool. This pool is used for searching frozen indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolSearchThrottledSize;
  /// Size of queue for operations in the write thread pool.
  final pulumi.Input<int>? threadPoolWriteQueueSize;
  /// Number of workers in the write operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  final pulumi.Input<int>? threadPoolWriteSize;

  /// Creates a new [DatabaseOpensearchConfigArgs].
  /// [actionAutoCreateIndexEnabled] Specifices whether to allow automatic creation of indices. Default: `true`
  /// [actionDestructiveRequiresName] Specifies whether to require explicit index names when deleting indices.
  /// [clusterId] The ID of the target Opensearch cluster.
  /// [clusterMaxShardsPerNode] Maximum number of shards allowed per data node.
  /// [clusterRoutingAllocationNodeConcurrentRecoveries] Maximum concurrent incoming/outgoing shard recoveries (normally replicas) are allowed to happen per node. Default: `2`
  /// [enableSecurityAudit] Specifies whether to allow security audit logging. Default: `false`
  /// [httpMaxContentLengthBytes] Maximum content length for HTTP requests to the OpenSearch HTTP API, in bytes. Default: `100000000`
  /// [httpMaxHeaderSizeBytes] Maximum size of allowed headers, in bytes. Default: `8192`
  /// [httpMaxInitialLineLengthBytes] Maximum length of an HTTP URL, in bytes. Default: `4096`
  /// [indicesFielddataCacheSizePercentage] Maximum amount of heap memory used for field data cache, expressed as a percentage. Decreasing the value too much will increase overhead of loading field data. Increasing the value too much will decrease amount of heap available for other operations.
  /// [indicesMemoryIndexBufferSizePercentage] Total amount of heap used for indexing buffer before writing segments to disk, expressed as a percentage. Too low value will slow down indexing; too high value will increase indexing performance but causes performance issues for query performance. Default: `10`
  /// [indicesMemoryMaxIndexBufferSizeMb] Maximum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. The default is unbounded.
  /// [indicesMemoryMinIndexBufferSizeMb] Minimum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. Default: `48`
  /// [indicesQueriesCacheSizePercentage] Maximum amount of heap used for query cache. Too low value will decrease query performance and increase performance for other operations; too high value will cause issues with other functionality. Default: `10`
  /// [indicesQueryBoolMaxClauseCount] Maximum number of clauses Lucene BooleanQuery can have. Only increase it if necessary, as it may cause performance issues. Default: `1024`
  /// [indicesRecoveryMaxConcurrentFileChunks] Maximum number of file chunks sent in parallel for each recovery. Default: `2`
  /// [indicesRecoveryMaxMbPerSec] Limits total inbound and outbound recovery traffic for each node, expressed in mb per second. Applies to both peer recoveries as well as snapshot recoveries (i.e., restores from a snapshot). Default: `40`
  /// [ismEnabled] Specifies whether ISM is enabled or not. Default: `true`
  /// [ismHistoryEnabled] Specifies whether audit history is enabled or not. The logs from ISM are automatically indexed to a logs document. Default: `true`
  /// [ismHistoryMaxAgeHours] Maximum age before rolling over the audit history index, in hours. Default: `24`
  /// [ismHistoryMaxDocs] Maximum number of documents before rolling over the audit history index. Default: `2500000`
  /// [ismHistoryRolloverCheckPeriodHours] The time between rollover checks for the audit history index, in hours. Default: `8`
  /// [ismHistoryRolloverRetentionPeriodDays] Length of time long audit history indices are kept, in days. Default: `30`
  /// [overrideMainResponseVersion] Compatibility mode sets OpenSearch to report its version as 7.10 so clients continue to work. Default: `false`
  /// [pluginsAlertingFilterByBackendRolesEnabled] Enable or disable filtering of alerting by backend roles. Default: `false`
  /// [reindexRemoteWhitelists] Allowlist of remote IP addresses for reindexing. Changing this value will cause all OpenSearch instances to restart.
  /// [scriptMaxCompilationsRate] Limits the number of inline script compilations within a period of time. Default is `use-context`
  /// [searchMaxBuckets] Maximum number of aggregation buckets allowed in a single response. Default: `10000`
  /// [threadPoolAnalyzeQueueSize] Size of queue for operations in the analyze thread pool.
  /// [threadPoolAnalyzeSize] Number of workers in the analyze operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  /// [threadPoolForceMergeSize] Number of workers in the force merge operation thread pool. This pool is used for forcing a merge between shards of one or more indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  /// [threadPoolGetQueueSize] Size of queue for operations in the get thread pool.
  /// [threadPoolGetSize] Number of workers in the get operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  /// [threadPoolSearchQueueSize] Size of queue for operations in the search thread pool.
  /// [threadPoolSearchSize] Number of workers in the search operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  /// [threadPoolSearchThrottledQueueSize] Size of queue for operations in the search throttled thread pool.
  /// [threadPoolSearchThrottledSize] Number of workers in the search throttled operation thread pool. This pool is used for searching frozen indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  /// [threadPoolWriteQueueSize] Size of queue for operations in the write thread pool.
  /// [threadPoolWriteSize] Number of workers in the write operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  DatabaseOpensearchConfigArgs({
    this.actionAutoCreateIndexEnabled,
    this.actionDestructiveRequiresName,
    required this.clusterId,
    this.clusterMaxShardsPerNode,
    this.clusterRoutingAllocationNodeConcurrentRecoveries,
    this.enableSecurityAudit,
    this.httpMaxContentLengthBytes,
    this.httpMaxHeaderSizeBytes,
    this.httpMaxInitialLineLengthBytes,
    this.indicesFielddataCacheSizePercentage,
    this.indicesMemoryIndexBufferSizePercentage,
    this.indicesMemoryMaxIndexBufferSizeMb,
    this.indicesMemoryMinIndexBufferSizeMb,
    this.indicesQueriesCacheSizePercentage,
    this.indicesQueryBoolMaxClauseCount,
    this.indicesRecoveryMaxConcurrentFileChunks,
    this.indicesRecoveryMaxMbPerSec,
    this.ismEnabled,
    this.ismHistoryEnabled,
    this.ismHistoryMaxAgeHours,
    this.ismHistoryMaxDocs,
    this.ismHistoryRolloverCheckPeriodHours,
    this.ismHistoryRolloverRetentionPeriodDays,
    this.overrideMainResponseVersion,
    this.pluginsAlertingFilterByBackendRolesEnabled,
    this.reindexRemoteWhitelists,
    this.scriptMaxCompilationsRate,
    this.searchMaxBuckets,
    this.threadPoolAnalyzeQueueSize,
    this.threadPoolAnalyzeSize,
    this.threadPoolForceMergeSize,
    this.threadPoolGetQueueSize,
    this.threadPoolGetSize,
    this.threadPoolSearchQueueSize,
    this.threadPoolSearchSize,
    this.threadPoolSearchThrottledQueueSize,
    this.threadPoolSearchThrottledSize,
    this.threadPoolWriteQueueSize,
    this.threadPoolWriteSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionAutoCreateIndexEnabled': ?actionAutoCreateIndexEnabled,
      'actionDestructiveRequiresName': ?actionDestructiveRequiresName,
      'clusterId': clusterId,
      'clusterMaxShardsPerNode': ?clusterMaxShardsPerNode,
      'clusterRoutingAllocationNodeConcurrentRecoveries': ?clusterRoutingAllocationNodeConcurrentRecoveries,
      'enableSecurityAudit': ?enableSecurityAudit,
      'httpMaxContentLengthBytes': ?httpMaxContentLengthBytes,
      'httpMaxHeaderSizeBytes': ?httpMaxHeaderSizeBytes,
      'httpMaxInitialLineLengthBytes': ?httpMaxInitialLineLengthBytes,
      'indicesFielddataCacheSizePercentage': ?indicesFielddataCacheSizePercentage,
      'indicesMemoryIndexBufferSizePercentage': ?indicesMemoryIndexBufferSizePercentage,
      'indicesMemoryMaxIndexBufferSizeMb': ?indicesMemoryMaxIndexBufferSizeMb,
      'indicesMemoryMinIndexBufferSizeMb': ?indicesMemoryMinIndexBufferSizeMb,
      'indicesQueriesCacheSizePercentage': ?indicesQueriesCacheSizePercentage,
      'indicesQueryBoolMaxClauseCount': ?indicesQueryBoolMaxClauseCount,
      'indicesRecoveryMaxConcurrentFileChunks': ?indicesRecoveryMaxConcurrentFileChunks,
      'indicesRecoveryMaxMbPerSec': ?indicesRecoveryMaxMbPerSec,
      'ismEnabled': ?ismEnabled,
      'ismHistoryEnabled': ?ismHistoryEnabled,
      'ismHistoryMaxAgeHours': ?ismHistoryMaxAgeHours,
      'ismHistoryMaxDocs': ?ismHistoryMaxDocs,
      'ismHistoryRolloverCheckPeriodHours': ?ismHistoryRolloverCheckPeriodHours,
      'ismHistoryRolloverRetentionPeriodDays': ?ismHistoryRolloverRetentionPeriodDays,
      'overrideMainResponseVersion': ?overrideMainResponseVersion,
      'pluginsAlertingFilterByBackendRolesEnabled': ?pluginsAlertingFilterByBackendRolesEnabled,
      'reindexRemoteWhitelists': ?reindexRemoteWhitelists,
      'scriptMaxCompilationsRate': ?scriptMaxCompilationsRate,
      'searchMaxBuckets': ?searchMaxBuckets,
      'threadPoolAnalyzeQueueSize': ?threadPoolAnalyzeQueueSize,
      'threadPoolAnalyzeSize': ?threadPoolAnalyzeSize,
      'threadPoolForceMergeSize': ?threadPoolForceMergeSize,
      'threadPoolGetQueueSize': ?threadPoolGetQueueSize,
      'threadPoolGetSize': ?threadPoolGetSize,
      'threadPoolSearchQueueSize': ?threadPoolSearchQueueSize,
      'threadPoolSearchSize': ?threadPoolSearchSize,
      'threadPoolSearchThrottledQueueSize': ?threadPoolSearchThrottledQueueSize,
      'threadPoolSearchThrottledSize': ?threadPoolSearchThrottledSize,
      'threadPoolWriteQueueSize': ?threadPoolWriteQueueSize,
      'threadPoolWriteSize': ?threadPoolWriteSize,
    };
  }

  factory DatabaseOpensearchConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseOpensearchConfigArgs(
      actionAutoCreateIndexEnabled: map['actionAutoCreateIndexEnabled'] == null ? null : (map['actionAutoCreateIndexEnabled'] as bool).input(),
      actionDestructiveRequiresName: map['actionDestructiveRequiresName'] == null ? null : (map['actionDestructiveRequiresName'] as bool).input(),
      clusterId: (map['clusterId'] as String).input(),
      clusterMaxShardsPerNode: map['clusterMaxShardsPerNode'] == null ? null : (map['clusterMaxShardsPerNode'] as int).input(),
      clusterRoutingAllocationNodeConcurrentRecoveries: map['clusterRoutingAllocationNodeConcurrentRecoveries'] == null ? null : (map['clusterRoutingAllocationNodeConcurrentRecoveries'] as int).input(),
      enableSecurityAudit: map['enableSecurityAudit'] == null ? null : (map['enableSecurityAudit'] as bool).input(),
      httpMaxContentLengthBytes: map['httpMaxContentLengthBytes'] == null ? null : (map['httpMaxContentLengthBytes'] as int).input(),
      httpMaxHeaderSizeBytes: map['httpMaxHeaderSizeBytes'] == null ? null : (map['httpMaxHeaderSizeBytes'] as int).input(),
      httpMaxInitialLineLengthBytes: map['httpMaxInitialLineLengthBytes'] == null ? null : (map['httpMaxInitialLineLengthBytes'] as int).input(),
      indicesFielddataCacheSizePercentage: map['indicesFielddataCacheSizePercentage'] == null ? null : (map['indicesFielddataCacheSizePercentage'] as int).input(),
      indicesMemoryIndexBufferSizePercentage: map['indicesMemoryIndexBufferSizePercentage'] == null ? null : (map['indicesMemoryIndexBufferSizePercentage'] as int).input(),
      indicesMemoryMaxIndexBufferSizeMb: map['indicesMemoryMaxIndexBufferSizeMb'] == null ? null : (map['indicesMemoryMaxIndexBufferSizeMb'] as int).input(),
      indicesMemoryMinIndexBufferSizeMb: map['indicesMemoryMinIndexBufferSizeMb'] == null ? null : (map['indicesMemoryMinIndexBufferSizeMb'] as int).input(),
      indicesQueriesCacheSizePercentage: map['indicesQueriesCacheSizePercentage'] == null ? null : (map['indicesQueriesCacheSizePercentage'] as int).input(),
      indicesQueryBoolMaxClauseCount: map['indicesQueryBoolMaxClauseCount'] == null ? null : (map['indicesQueryBoolMaxClauseCount'] as int).input(),
      indicesRecoveryMaxConcurrentFileChunks: map['indicesRecoveryMaxConcurrentFileChunks'] == null ? null : (map['indicesRecoveryMaxConcurrentFileChunks'] as int).input(),
      indicesRecoveryMaxMbPerSec: map['indicesRecoveryMaxMbPerSec'] == null ? null : (map['indicesRecoveryMaxMbPerSec'] as int).input(),
      ismEnabled: map['ismEnabled'] == null ? null : (map['ismEnabled'] as bool).input(),
      ismHistoryEnabled: map['ismHistoryEnabled'] == null ? null : (map['ismHistoryEnabled'] as bool).input(),
      ismHistoryMaxAgeHours: map['ismHistoryMaxAgeHours'] == null ? null : (map['ismHistoryMaxAgeHours'] as int).input(),
      ismHistoryMaxDocs: map['ismHistoryMaxDocs'] == null ? null : (map['ismHistoryMaxDocs'] as int).input(),
      ismHistoryRolloverCheckPeriodHours: map['ismHistoryRolloverCheckPeriodHours'] == null ? null : (map['ismHistoryRolloverCheckPeriodHours'] as int).input(),
      ismHistoryRolloverRetentionPeriodDays: map['ismHistoryRolloverRetentionPeriodDays'] == null ? null : (map['ismHistoryRolloverRetentionPeriodDays'] as int).input(),
      overrideMainResponseVersion: map['overrideMainResponseVersion'] == null ? null : (map['overrideMainResponseVersion'] as bool).input(),
      pluginsAlertingFilterByBackendRolesEnabled: map['pluginsAlertingFilterByBackendRolesEnabled'] == null ? null : (map['pluginsAlertingFilterByBackendRolesEnabled'] as bool).input(),
      reindexRemoteWhitelists: map['reindexRemoteWhitelists'] == null ? null : ((map['reindexRemoteWhitelists'] as List).cast<String>()).input(),
      scriptMaxCompilationsRate: map['scriptMaxCompilationsRate'] == null ? null : (map['scriptMaxCompilationsRate'] as String).input(),
      searchMaxBuckets: map['searchMaxBuckets'] == null ? null : (map['searchMaxBuckets'] as int).input(),
      threadPoolAnalyzeQueueSize: map['threadPoolAnalyzeQueueSize'] == null ? null : (map['threadPoolAnalyzeQueueSize'] as int).input(),
      threadPoolAnalyzeSize: map['threadPoolAnalyzeSize'] == null ? null : (map['threadPoolAnalyzeSize'] as int).input(),
      threadPoolForceMergeSize: map['threadPoolForceMergeSize'] == null ? null : (map['threadPoolForceMergeSize'] as int).input(),
      threadPoolGetQueueSize: map['threadPoolGetQueueSize'] == null ? null : (map['threadPoolGetQueueSize'] as int).input(),
      threadPoolGetSize: map['threadPoolGetSize'] == null ? null : (map['threadPoolGetSize'] as int).input(),
      threadPoolSearchQueueSize: map['threadPoolSearchQueueSize'] == null ? null : (map['threadPoolSearchQueueSize'] as int).input(),
      threadPoolSearchSize: map['threadPoolSearchSize'] == null ? null : (map['threadPoolSearchSize'] as int).input(),
      threadPoolSearchThrottledQueueSize: map['threadPoolSearchThrottledQueueSize'] == null ? null : (map['threadPoolSearchThrottledQueueSize'] as int).input(),
      threadPoolSearchThrottledSize: map['threadPoolSearchThrottledSize'] == null ? null : (map['threadPoolSearchThrottledSize'] as int).input(),
      threadPoolWriteQueueSize: map['threadPoolWriteQueueSize'] == null ? null : (map['threadPoolWriteQueueSize'] as int).input(),
      threadPoolWriteSize: map['threadPoolWriteSize'] == null ? null : (map['threadPoolWriteSize'] as int).input(),
    );
  }
}

