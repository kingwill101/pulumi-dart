// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseOpensearchConfig resources.
class DatabaseOpensearchConfigState {
  /// Specifices whether to allow automatic creation of indices. Default: `true`
  final pulumi.Input<bool>? actionAutoCreateIndexEnabled;
  /// Specifies whether to require explicit index names when deleting indices.
  final pulumi.Input<bool>? actionDestructiveRequiresName;
  /// The ID of the target Opensearch cluster.
  final pulumi.Input<String>? clusterId;
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

  /// Creates a new [DatabaseOpensearchConfigState].
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
  DatabaseOpensearchConfigState({
    pulumi.Output<bool>? actionAutoCreateIndexEnabled,
    pulumi.Output<bool>? actionDestructiveRequiresName,
    pulumi.Output<String>? clusterId,
    pulumi.Output<int>? clusterMaxShardsPerNode,
    pulumi.Output<int>? clusterRoutingAllocationNodeConcurrentRecoveries,
    pulumi.Output<bool>? enableSecurityAudit,
    pulumi.Output<int>? httpMaxContentLengthBytes,
    pulumi.Output<int>? httpMaxHeaderSizeBytes,
    pulumi.Output<int>? httpMaxInitialLineLengthBytes,
    pulumi.Output<int>? indicesFielddataCacheSizePercentage,
    pulumi.Output<int>? indicesMemoryIndexBufferSizePercentage,
    pulumi.Output<int>? indicesMemoryMaxIndexBufferSizeMb,
    pulumi.Output<int>? indicesMemoryMinIndexBufferSizeMb,
    pulumi.Output<int>? indicesQueriesCacheSizePercentage,
    pulumi.Output<int>? indicesQueryBoolMaxClauseCount,
    pulumi.Output<int>? indicesRecoveryMaxConcurrentFileChunks,
    pulumi.Output<int>? indicesRecoveryMaxMbPerSec,
    pulumi.Output<bool>? ismEnabled,
    pulumi.Output<bool>? ismHistoryEnabled,
    pulumi.Output<int>? ismHistoryMaxAgeHours,
    pulumi.Output<int>? ismHistoryMaxDocs,
    pulumi.Output<int>? ismHistoryRolloverCheckPeriodHours,
    pulumi.Output<int>? ismHistoryRolloverRetentionPeriodDays,
    pulumi.Output<bool>? overrideMainResponseVersion,
    pulumi.Output<bool>? pluginsAlertingFilterByBackendRolesEnabled,
    pulumi.Output<List<String>>? reindexRemoteWhitelists,
    pulumi.Output<String>? scriptMaxCompilationsRate,
    pulumi.Output<int>? searchMaxBuckets,
    pulumi.Output<int>? threadPoolAnalyzeQueueSize,
    pulumi.Output<int>? threadPoolAnalyzeSize,
    pulumi.Output<int>? threadPoolForceMergeSize,
    pulumi.Output<int>? threadPoolGetQueueSize,
    pulumi.Output<int>? threadPoolGetSize,
    pulumi.Output<int>? threadPoolSearchQueueSize,
    pulumi.Output<int>? threadPoolSearchSize,
    pulumi.Output<int>? threadPoolSearchThrottledQueueSize,
    pulumi.Output<int>? threadPoolSearchThrottledSize,
    pulumi.Output<int>? threadPoolWriteQueueSize,
    pulumi.Output<int>? threadPoolWriteSize,
  }) :
      actionAutoCreateIndexEnabled = pulumi.Input.asOptionalInput<bool>(actionAutoCreateIndexEnabled),
      actionDestructiveRequiresName = pulumi.Input.asOptionalInput<bool>(actionDestructiveRequiresName),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterMaxShardsPerNode = pulumi.Input.asOptionalInput<int>(clusterMaxShardsPerNode),
      clusterRoutingAllocationNodeConcurrentRecoveries = pulumi.Input.asOptionalInput<int>(clusterRoutingAllocationNodeConcurrentRecoveries),
      enableSecurityAudit = pulumi.Input.asOptionalInput<bool>(enableSecurityAudit),
      httpMaxContentLengthBytes = pulumi.Input.asOptionalInput<int>(httpMaxContentLengthBytes),
      httpMaxHeaderSizeBytes = pulumi.Input.asOptionalInput<int>(httpMaxHeaderSizeBytes),
      httpMaxInitialLineLengthBytes = pulumi.Input.asOptionalInput<int>(httpMaxInitialLineLengthBytes),
      indicesFielddataCacheSizePercentage = pulumi.Input.asOptionalInput<int>(indicesFielddataCacheSizePercentage),
      indicesMemoryIndexBufferSizePercentage = pulumi.Input.asOptionalInput<int>(indicesMemoryIndexBufferSizePercentage),
      indicesMemoryMaxIndexBufferSizeMb = pulumi.Input.asOptionalInput<int>(indicesMemoryMaxIndexBufferSizeMb),
      indicesMemoryMinIndexBufferSizeMb = pulumi.Input.asOptionalInput<int>(indicesMemoryMinIndexBufferSizeMb),
      indicesQueriesCacheSizePercentage = pulumi.Input.asOptionalInput<int>(indicesQueriesCacheSizePercentage),
      indicesQueryBoolMaxClauseCount = pulumi.Input.asOptionalInput<int>(indicesQueryBoolMaxClauseCount),
      indicesRecoveryMaxConcurrentFileChunks = pulumi.Input.asOptionalInput<int>(indicesRecoveryMaxConcurrentFileChunks),
      indicesRecoveryMaxMbPerSec = pulumi.Input.asOptionalInput<int>(indicesRecoveryMaxMbPerSec),
      ismEnabled = pulumi.Input.asOptionalInput<bool>(ismEnabled),
      ismHistoryEnabled = pulumi.Input.asOptionalInput<bool>(ismHistoryEnabled),
      ismHistoryMaxAgeHours = pulumi.Input.asOptionalInput<int>(ismHistoryMaxAgeHours),
      ismHistoryMaxDocs = pulumi.Input.asOptionalInput<int>(ismHistoryMaxDocs),
      ismHistoryRolloverCheckPeriodHours = pulumi.Input.asOptionalInput<int>(ismHistoryRolloverCheckPeriodHours),
      ismHistoryRolloverRetentionPeriodDays = pulumi.Input.asOptionalInput<int>(ismHistoryRolloverRetentionPeriodDays),
      overrideMainResponseVersion = pulumi.Input.asOptionalInput<bool>(overrideMainResponseVersion),
      pluginsAlertingFilterByBackendRolesEnabled = pulumi.Input.asOptionalInput<bool>(pluginsAlertingFilterByBackendRolesEnabled),
      reindexRemoteWhitelists = pulumi.Input.asOptionalInput<List<String>>(reindexRemoteWhitelists),
      scriptMaxCompilationsRate = pulumi.Input.asOptionalInput<String>(scriptMaxCompilationsRate),
      searchMaxBuckets = pulumi.Input.asOptionalInput<int>(searchMaxBuckets),
      threadPoolAnalyzeQueueSize = pulumi.Input.asOptionalInput<int>(threadPoolAnalyzeQueueSize),
      threadPoolAnalyzeSize = pulumi.Input.asOptionalInput<int>(threadPoolAnalyzeSize),
      threadPoolForceMergeSize = pulumi.Input.asOptionalInput<int>(threadPoolForceMergeSize),
      threadPoolGetQueueSize = pulumi.Input.asOptionalInput<int>(threadPoolGetQueueSize),
      threadPoolGetSize = pulumi.Input.asOptionalInput<int>(threadPoolGetSize),
      threadPoolSearchQueueSize = pulumi.Input.asOptionalInput<int>(threadPoolSearchQueueSize),
      threadPoolSearchSize = pulumi.Input.asOptionalInput<int>(threadPoolSearchSize),
      threadPoolSearchThrottledQueueSize = pulumi.Input.asOptionalInput<int>(threadPoolSearchThrottledQueueSize),
      threadPoolSearchThrottledSize = pulumi.Input.asOptionalInput<int>(threadPoolSearchThrottledSize),
      threadPoolWriteQueueSize = pulumi.Input.asOptionalInput<int>(threadPoolWriteQueueSize),
      threadPoolWriteSize = pulumi.Input.asOptionalInput<int>(threadPoolWriteSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionAutoCreateIndexEnabled': ?actionAutoCreateIndexEnabled,
      'actionDestructiveRequiresName': ?actionDestructiveRequiresName,
      'clusterId': ?clusterId,
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

  factory DatabaseOpensearchConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseOpensearchConfigState(
      actionAutoCreateIndexEnabled: map['actionAutoCreateIndexEnabled'] == null ? null : pulumi.Output.create<bool>(map['actionAutoCreateIndexEnabled'] as bool),
      actionDestructiveRequiresName: map['actionDestructiveRequiresName'] == null ? null : pulumi.Output.create<bool>(map['actionDestructiveRequiresName'] as bool),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterMaxShardsPerNode: map['clusterMaxShardsPerNode'] == null ? null : pulumi.Output.create<int>(map['clusterMaxShardsPerNode'] as int),
      clusterRoutingAllocationNodeConcurrentRecoveries: map['clusterRoutingAllocationNodeConcurrentRecoveries'] == null ? null : pulumi.Output.create<int>(map['clusterRoutingAllocationNodeConcurrentRecoveries'] as int),
      enableSecurityAudit: map['enableSecurityAudit'] == null ? null : pulumi.Output.create<bool>(map['enableSecurityAudit'] as bool),
      httpMaxContentLengthBytes: map['httpMaxContentLengthBytes'] == null ? null : pulumi.Output.create<int>(map['httpMaxContentLengthBytes'] as int),
      httpMaxHeaderSizeBytes: map['httpMaxHeaderSizeBytes'] == null ? null : pulumi.Output.create<int>(map['httpMaxHeaderSizeBytes'] as int),
      httpMaxInitialLineLengthBytes: map['httpMaxInitialLineLengthBytes'] == null ? null : pulumi.Output.create<int>(map['httpMaxInitialLineLengthBytes'] as int),
      indicesFielddataCacheSizePercentage: map['indicesFielddataCacheSizePercentage'] == null ? null : pulumi.Output.create<int>(map['indicesFielddataCacheSizePercentage'] as int),
      indicesMemoryIndexBufferSizePercentage: map['indicesMemoryIndexBufferSizePercentage'] == null ? null : pulumi.Output.create<int>(map['indicesMemoryIndexBufferSizePercentage'] as int),
      indicesMemoryMaxIndexBufferSizeMb: map['indicesMemoryMaxIndexBufferSizeMb'] == null ? null : pulumi.Output.create<int>(map['indicesMemoryMaxIndexBufferSizeMb'] as int),
      indicesMemoryMinIndexBufferSizeMb: map['indicesMemoryMinIndexBufferSizeMb'] == null ? null : pulumi.Output.create<int>(map['indicesMemoryMinIndexBufferSizeMb'] as int),
      indicesQueriesCacheSizePercentage: map['indicesQueriesCacheSizePercentage'] == null ? null : pulumi.Output.create<int>(map['indicesQueriesCacheSizePercentage'] as int),
      indicesQueryBoolMaxClauseCount: map['indicesQueryBoolMaxClauseCount'] == null ? null : pulumi.Output.create<int>(map['indicesQueryBoolMaxClauseCount'] as int),
      indicesRecoveryMaxConcurrentFileChunks: map['indicesRecoveryMaxConcurrentFileChunks'] == null ? null : pulumi.Output.create<int>(map['indicesRecoveryMaxConcurrentFileChunks'] as int),
      indicesRecoveryMaxMbPerSec: map['indicesRecoveryMaxMbPerSec'] == null ? null : pulumi.Output.create<int>(map['indicesRecoveryMaxMbPerSec'] as int),
      ismEnabled: map['ismEnabled'] == null ? null : pulumi.Output.create<bool>(map['ismEnabled'] as bool),
      ismHistoryEnabled: map['ismHistoryEnabled'] == null ? null : pulumi.Output.create<bool>(map['ismHistoryEnabled'] as bool),
      ismHistoryMaxAgeHours: map['ismHistoryMaxAgeHours'] == null ? null : pulumi.Output.create<int>(map['ismHistoryMaxAgeHours'] as int),
      ismHistoryMaxDocs: map['ismHistoryMaxDocs'] == null ? null : pulumi.Output.create<int>(map['ismHistoryMaxDocs'] as int),
      ismHistoryRolloverCheckPeriodHours: map['ismHistoryRolloverCheckPeriodHours'] == null ? null : pulumi.Output.create<int>(map['ismHistoryRolloverCheckPeriodHours'] as int),
      ismHistoryRolloverRetentionPeriodDays: map['ismHistoryRolloverRetentionPeriodDays'] == null ? null : pulumi.Output.create<int>(map['ismHistoryRolloverRetentionPeriodDays'] as int),
      overrideMainResponseVersion: map['overrideMainResponseVersion'] == null ? null : pulumi.Output.create<bool>(map['overrideMainResponseVersion'] as bool),
      pluginsAlertingFilterByBackendRolesEnabled: map['pluginsAlertingFilterByBackendRolesEnabled'] == null ? null : pulumi.Output.create<bool>(map['pluginsAlertingFilterByBackendRolesEnabled'] as bool),
      reindexRemoteWhitelists: map['reindexRemoteWhitelists'] == null ? null : pulumi.Output.create<List<String>>((map['reindexRemoteWhitelists'] as List).cast<String>()),
      scriptMaxCompilationsRate: map['scriptMaxCompilationsRate'] == null ? null : pulumi.Output.create<String>(map['scriptMaxCompilationsRate'] as String),
      searchMaxBuckets: map['searchMaxBuckets'] == null ? null : pulumi.Output.create<int>(map['searchMaxBuckets'] as int),
      threadPoolAnalyzeQueueSize: map['threadPoolAnalyzeQueueSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolAnalyzeQueueSize'] as int),
      threadPoolAnalyzeSize: map['threadPoolAnalyzeSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolAnalyzeSize'] as int),
      threadPoolForceMergeSize: map['threadPoolForceMergeSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolForceMergeSize'] as int),
      threadPoolGetQueueSize: map['threadPoolGetQueueSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolGetQueueSize'] as int),
      threadPoolGetSize: map['threadPoolGetSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolGetSize'] as int),
      threadPoolSearchQueueSize: map['threadPoolSearchQueueSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolSearchQueueSize'] as int),
      threadPoolSearchSize: map['threadPoolSearchSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolSearchSize'] as int),
      threadPoolSearchThrottledQueueSize: map['threadPoolSearchThrottledQueueSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolSearchThrottledQueueSize'] as int),
      threadPoolSearchThrottledSize: map['threadPoolSearchThrottledSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolSearchThrottledSize'] as int),
      threadPoolWriteQueueSize: map['threadPoolWriteQueueSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolWriteQueueSize'] as int),
      threadPoolWriteSize: map['threadPoolWriteSize'] == null ? null : pulumi.Output.create<int>(map['threadPoolWriteSize'] as int),
    );
  }
}

