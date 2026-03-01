import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_opensearch_config_args.dart';
import 'database_opensearch_config_state.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed Opensearch database cluster.
///
/// > **Note** Opensearch configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-opensearch-cluster",
///     engine: "opensearch",
///     version: "2",
///     size: digitalocean.DatabaseSlug.DB_1VPCU2GB,
///     region: digitalocean.Region.NYC3,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseOpensearchConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     ismEnabled: true,
///     ismHistoryEnabled: true,
///     ismHistoryMaxAgeHours: 24,
///     ismHistoryMaxDocs: 2500000,
///     ismHistoryRolloverCheckPeriodHours: 8,
///     ismHistoryRolloverRetentionPeriodDays: 30,
///     httpMaxContentLengthBytes: 100000000,
///     httpMaxHeaderSizeBytes: 8192,
///     httpMaxInitialLineLengthBytes: 4096,
///     indicesQueryBoolMaxClauseCount: 1024,
///     searchMaxBuckets: 10000,
///     indicesFielddataCacheSizePercentage: 3,
///     indicesMemoryIndexBufferSizePercentage: 10,
///     indicesMemoryMinIndexBufferSizeMb: 48,
///     indicesMemoryMaxIndexBufferSizeMb: 3,
///     indicesQueriesCacheSizePercentage: 10,
///     indicesRecoveryMaxMbPerSec: 40,
///     indicesRecoveryMaxConcurrentFileChunks: 2,
///     actionAutoCreateIndexEnabled: true,
///     actionDestructiveRequiresName: false,
///     enableSecurityAudit: false,
///     threadPoolSearchSize: 1,
///     threadPoolSearchThrottledSize: 1,
///     threadPoolSearchThrottledQueueSize: 10,
///     threadPoolSearchQueueSize: 10,
///     threadPoolGetSize: 1,
///     threadPoolGetQueueSize: 10,
///     threadPoolAnalyzeSize: 1,
///     threadPoolAnalyzeQueueSize: 10,
///     threadPoolWriteSize: 1,
///     threadPoolWriteQueueSize: 10,
///     threadPoolForceMergeSize: 1,
///     overrideMainResponseVersion: false,
///     scriptMaxCompilationsRate: "use-context",
///     clusterMaxShardsPerNode: 100,
///     clusterRoutingAllocationNodeConcurrentRecoveries: 2,
///     pluginsAlertingFilterByBackendRolesEnabled: false,
///     reindexRemoteWhitelists: ["cloud.digitalocean.com:8080"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-opensearch-cluster",
///     engine="opensearch",
///     version="2",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU2_GB,
///     region=digitalocean.Region.NYC3,
///     node_count=1)
/// example = digitalocean.DatabaseOpensearchConfig("example",
///     cluster_id=example_database_cluster.id,
///     ism_enabled=True,
///     ism_history_enabled=True,
///     ism_history_max_age_hours=24,
///     ism_history_max_docs=2500000,
///     ism_history_rollover_check_period_hours=8,
///     ism_history_rollover_retention_period_days=30,
///     http_max_content_length_bytes=100000000,
///     http_max_header_size_bytes=8192,
///     http_max_initial_line_length_bytes=4096,
///     indices_query_bool_max_clause_count=1024,
///     search_max_buckets=10000,
///     indices_fielddata_cache_size_percentage=3,
///     indices_memory_index_buffer_size_percentage=10,
///     indices_memory_min_index_buffer_size_mb=48,
///     indices_memory_max_index_buffer_size_mb=3,
///     indices_queries_cache_size_percentage=10,
///     indices_recovery_max_mb_per_sec=40,
///     indices_recovery_max_concurrent_file_chunks=2,
///     action_auto_create_index_enabled=True,
///     action_destructive_requires_name=False,
///     enable_security_audit=False,
///     thread_pool_search_size=1,
///     thread_pool_search_throttled_size=1,
///     thread_pool_search_throttled_queue_size=10,
///     thread_pool_search_queue_size=10,
///     thread_pool_get_size=1,
///     thread_pool_get_queue_size=10,
///     thread_pool_analyze_size=1,
///     thread_pool_analyze_queue_size=10,
///     thread_pool_write_size=1,
///     thread_pool_write_queue_size=10,
///     thread_pool_force_merge_size=1,
///     override_main_response_version=False,
///     script_max_compilations_rate="use-context",
///     cluster_max_shards_per_node=100,
///     cluster_routing_allocation_node_concurrent_recoveries=2,
///     plugins_alerting_filter_by_backend_roles_enabled=False,
///     reindex_remote_whitelists=["cloud.digitalocean.com:8080"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDatabaseCluster = new DigitalOcean.DatabaseCluster("example", new()
///     {
///         Name = "example-opensearch-cluster",
///         Engine = "opensearch",
///         Version = "2",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU2GB,
///         Region = DigitalOcean.Region.NYC3,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseOpensearchConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         IsmEnabled = true,
///         IsmHistoryEnabled = true,
///         IsmHistoryMaxAgeHours = 24,
///         IsmHistoryMaxDocs = 2500000,
///         IsmHistoryRolloverCheckPeriodHours = 8,
///         IsmHistoryRolloverRetentionPeriodDays = 30,
///         HttpMaxContentLengthBytes = 100000000,
///         HttpMaxHeaderSizeBytes = 8192,
///         HttpMaxInitialLineLengthBytes = 4096,
///         IndicesQueryBoolMaxClauseCount = 1024,
///         SearchMaxBuckets = 10000,
///         IndicesFielddataCacheSizePercentage = 3,
///         IndicesMemoryIndexBufferSizePercentage = 10,
///         IndicesMemoryMinIndexBufferSizeMb = 48,
///         IndicesMemoryMaxIndexBufferSizeMb = 3,
///         IndicesQueriesCacheSizePercentage = 10,
///         IndicesRecoveryMaxMbPerSec = 40,
///         IndicesRecoveryMaxConcurrentFileChunks = 2,
///         ActionAutoCreateIndexEnabled = true,
///         ActionDestructiveRequiresName = false,
///         EnableSecurityAudit = false,
///         ThreadPoolSearchSize = 1,
///         ThreadPoolSearchThrottledSize = 1,
///         ThreadPoolSearchThrottledQueueSize = 10,
///         ThreadPoolSearchQueueSize = 10,
///         ThreadPoolGetSize = 1,
///         ThreadPoolGetQueueSize = 10,
///         ThreadPoolAnalyzeSize = 1,
///         ThreadPoolAnalyzeQueueSize = 10,
///         ThreadPoolWriteSize = 1,
///         ThreadPoolWriteQueueSize = 10,
///         ThreadPoolForceMergeSize = 1,
///         OverrideMainResponseVersion = false,
///         ScriptMaxCompilationsRate = "use-context",
///         ClusterMaxShardsPerNode = 100,
///         ClusterRoutingAllocationNodeConcurrentRecoveries = 2,
///         PluginsAlertingFilterByBackendRolesEnabled = false,
///         ReindexRemoteWhitelists = new[]
///         {
///             "cloud.digitalocean.com:8080",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDatabaseCluster, err := digitalocean.NewDatabaseCluster(ctx, "example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-opensearch-cluster"),
/// 			Engine:    pulumi.String("opensearch"),
/// 			Version:   pulumi.String("2"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU2GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC3),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseOpensearchConfig(ctx, "example", &digitalocean.DatabaseOpensearchConfigArgs{
/// 			ClusterId:                                        exampleDatabaseCluster.ID(),
/// 			IsmEnabled:                                       pulumi.Bool(true),
/// 			IsmHistoryEnabled:                                pulumi.Bool(true),
/// 			IsmHistoryMaxAgeHours:                            pulumi.Int(24),
/// 			IsmHistoryMaxDocs:                                pulumi.Int(2500000),
/// 			IsmHistoryRolloverCheckPeriodHours:               pulumi.Int(8),
/// 			IsmHistoryRolloverRetentionPeriodDays:            pulumi.Int(30),
/// 			HttpMaxContentLengthBytes:                        pulumi.Int(100000000),
/// 			HttpMaxHeaderSizeBytes:                           pulumi.Int(8192),
/// 			HttpMaxInitialLineLengthBytes:                    pulumi.Int(4096),
/// 			IndicesQueryBoolMaxClauseCount:                   pulumi.Int(1024),
/// 			SearchMaxBuckets:                                 pulumi.Int(10000),
/// 			IndicesFielddataCacheSizePercentage:              pulumi.Int(3),
/// 			IndicesMemoryIndexBufferSizePercentage:           pulumi.Int(10),
/// 			IndicesMemoryMinIndexBufferSizeMb:                pulumi.Int(48),
/// 			IndicesMemoryMaxIndexBufferSizeMb:                pulumi.Int(3),
/// 			IndicesQueriesCacheSizePercentage:                pulumi.Int(10),
/// 			IndicesRecoveryMaxMbPerSec:                       pulumi.Int(40),
/// 			IndicesRecoveryMaxConcurrentFileChunks:           pulumi.Int(2),
/// 			ActionAutoCreateIndexEnabled:                     pulumi.Bool(true),
/// 			ActionDestructiveRequiresName:                    pulumi.Bool(false),
/// 			EnableSecurityAudit:                              pulumi.Bool(false),
/// 			ThreadPoolSearchSize:                             pulumi.Int(1),
/// 			ThreadPoolSearchThrottledSize:                    pulumi.Int(1),
/// 			ThreadPoolSearchThrottledQueueSize:               pulumi.Int(10),
/// 			ThreadPoolSearchQueueSize:                        pulumi.Int(10),
/// 			ThreadPoolGetSize:                                pulumi.Int(1),
/// 			ThreadPoolGetQueueSize:                           pulumi.Int(10),
/// 			ThreadPoolAnalyzeSize:                            pulumi.Int(1),
/// 			ThreadPoolAnalyzeQueueSize:                       pulumi.Int(10),
/// 			ThreadPoolWriteSize:                              pulumi.Int(1),
/// 			ThreadPoolWriteQueueSize:                         pulumi.Int(10),
/// 			ThreadPoolForceMergeSize:                         pulumi.Int(1),
/// 			OverrideMainResponseVersion:                      pulumi.Bool(false),
/// 			ScriptMaxCompilationsRate:                        pulumi.String("use-context"),
/// 			ClusterMaxShardsPerNode:                          pulumi.Int(100),
/// 			ClusterRoutingAllocationNodeConcurrentRecoveries: pulumi.Int(2),
/// 			PluginsAlertingFilterByBackendRolesEnabled:       pulumi.Bool(false),
/// 			ReindexRemoteWhitelists: pulumi.StringArray{
/// 				pulumi.String("cloud.digitalocean.com:8080"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseOpensearchConfig;
/// import com.pulumi.digitalocean.DatabaseOpensearchConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleDatabaseCluster = new DatabaseCluster("exampleDatabaseCluster", DatabaseClusterArgs.builder()
///             .name("example-opensearch-cluster")
///             .engine("opensearch")
///             .version("2")
///             .size("db-s-1vcpu-2gb")
///             .region("nyc3")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseOpensearchConfig("example", DatabaseOpensearchConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .ismEnabled(true)
///             .ismHistoryEnabled(true)
///             .ismHistoryMaxAgeHours(24)
///             .ismHistoryMaxDocs(2500000)
///             .ismHistoryRolloverCheckPeriodHours(8)
///             .ismHistoryRolloverRetentionPeriodDays(30)
///             .httpMaxContentLengthBytes(100000000)
///             .httpMaxHeaderSizeBytes(8192)
///             .httpMaxInitialLineLengthBytes(4096)
///             .indicesQueryBoolMaxClauseCount(1024)
///             .searchMaxBuckets(10000)
///             .indicesFielddataCacheSizePercentage(3)
///             .indicesMemoryIndexBufferSizePercentage(10)
///             .indicesMemoryMinIndexBufferSizeMb(48)
///             .indicesMemoryMaxIndexBufferSizeMb(3)
///             .indicesQueriesCacheSizePercentage(10)
///             .indicesRecoveryMaxMbPerSec(40)
///             .indicesRecoveryMaxConcurrentFileChunks(2)
///             .actionAutoCreateIndexEnabled(true)
///             .actionDestructiveRequiresName(false)
///             .enableSecurityAudit(false)
///             .threadPoolSearchSize(1)
///             .threadPoolSearchThrottledSize(1)
///             .threadPoolSearchThrottledQueueSize(10)
///             .threadPoolSearchQueueSize(10)
///             .threadPoolGetSize(1)
///             .threadPoolGetQueueSize(10)
///             .threadPoolAnalyzeSize(1)
///             .threadPoolAnalyzeQueueSize(10)
///             .threadPoolWriteSize(1)
///             .threadPoolWriteQueueSize(10)
///             .threadPoolForceMergeSize(1)
///             .overrideMainResponseVersion(false)
///             .scriptMaxCompilationsRate("use-context")
///             .clusterMaxShardsPerNode(100)
///             .clusterRoutingAllocationNodeConcurrentRecoveries(2)
///             .pluginsAlertingFilterByBackendRolesEnabled(false)
///             .reindexRemoteWhitelists("cloud.digitalocean.com:8080")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseOpensearchConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       ismEnabled: true
///       ismHistoryEnabled: true
///       ismHistoryMaxAgeHours: 24
///       ismHistoryMaxDocs: 2.5e+06
///       ismHistoryRolloverCheckPeriodHours: 8
///       ismHistoryRolloverRetentionPeriodDays: 30
///       httpMaxContentLengthBytes: 1e+08
///       httpMaxHeaderSizeBytes: 8192
///       httpMaxInitialLineLengthBytes: 4096
///       indicesQueryBoolMaxClauseCount: 1024
///       searchMaxBuckets: 10000
///       indicesFielddataCacheSizePercentage: 3
///       indicesMemoryIndexBufferSizePercentage: 10
///       indicesMemoryMinIndexBufferSizeMb: 48
///       indicesMemoryMaxIndexBufferSizeMb: 3
///       indicesQueriesCacheSizePercentage: 10
///       indicesRecoveryMaxMbPerSec: 40
///       indicesRecoveryMaxConcurrentFileChunks: 2
///       actionAutoCreateIndexEnabled: true
///       actionDestructiveRequiresName: false
///       enableSecurityAudit: false
///       threadPoolSearchSize: 1
///       threadPoolSearchThrottledSize: 1
///       threadPoolSearchThrottledQueueSize: 10
///       threadPoolSearchQueueSize: 10
///       threadPoolGetSize: 1
///       threadPoolGetQueueSize: 10
///       threadPoolAnalyzeSize: 1
///       threadPoolAnalyzeQueueSize: 10
///       threadPoolWriteSize: 1
///       threadPoolWriteQueueSize: 10
///       threadPoolForceMergeSize: 1
///       overrideMainResponseVersion: false
///       scriptMaxCompilationsRate: use-context
///       clusterMaxShardsPerNode: 100
///       clusterRoutingAllocationNodeConcurrentRecoveries: 2
///       pluginsAlertingFilterByBackendRolesEnabled: false
///       reindexRemoteWhitelists:
///         - cloud.digitalocean.com:8080
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-opensearch-cluster
///       engine: opensearch
///       version: '2'
///       size: db-s-1vcpu-2gb
///       region: nyc3
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A Opensearch database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseOpensearchConfig:DatabaseOpensearchConfig example 4b62829a-9c42-465b-aaa3-84051048e712
/// ```
class DatabaseOpensearchConfig extends pulumi.CustomResource {
  /// Specifices whether to allow automatic creation of indices. Default: `true`
  late final pulumi.Output<bool> actionAutoCreateIndexEnabled;
  /// Specifies whether to require explicit index names when deleting indices.
  late final pulumi.Output<bool> actionDestructiveRequiresName;
  /// The ID of the target Opensearch cluster.
  late final pulumi.Output<String> clusterId;
  /// Maximum number of shards allowed per data node.
  late final pulumi.Output<int> clusterMaxShardsPerNode;
  /// Maximum concurrent incoming/outgoing shard recoveries (normally replicas) are allowed to happen per node. Default: `2`
  late final pulumi.Output<int> clusterRoutingAllocationNodeConcurrentRecoveries;
  /// Specifies whether to allow security audit logging. Default: `false`
  late final pulumi.Output<bool> enableSecurityAudit;
  /// Maximum content length for HTTP requests to the OpenSearch HTTP API, in bytes. Default: `100000000`
  late final pulumi.Output<int> httpMaxContentLengthBytes;
  /// Maximum size of allowed headers, in bytes. Default: `8192`
  late final pulumi.Output<int> httpMaxHeaderSizeBytes;
  /// Maximum length of an HTTP URL, in bytes. Default: `4096`
  late final pulumi.Output<int> httpMaxInitialLineLengthBytes;
  /// Maximum amount of heap memory used for field data cache, expressed as a percentage. Decreasing the value too much will increase overhead of loading field data. Increasing the value too much will decrease amount of heap available for other operations.
  late final pulumi.Output<int> indicesFielddataCacheSizePercentage;
  /// Total amount of heap used for indexing buffer before writing segments to disk, expressed as a percentage. Too low value will slow down indexing; too high value will increase indexing performance but causes performance issues for query performance. Default: `10`
  late final pulumi.Output<int> indicesMemoryIndexBufferSizePercentage;
  /// Maximum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. The default is unbounded.
  late final pulumi.Output<int> indicesMemoryMaxIndexBufferSizeMb;
  /// Minimum amount of heap used for indexing buffer before writing segments to disk, in mb. Works in conjunction with indices_memory_index_buffer_size_percentage, each being enforced. Default: `48`
  late final pulumi.Output<int> indicesMemoryMinIndexBufferSizeMb;
  /// Maximum amount of heap used for query cache. Too low value will decrease query performance and increase performance for other operations; too high value will cause issues with other functionality. Default: `10`
  late final pulumi.Output<int> indicesQueriesCacheSizePercentage;
  /// Maximum number of clauses Lucene BooleanQuery can have. Only increase it if necessary, as it may cause performance issues. Default: `1024`
  late final pulumi.Output<int> indicesQueryBoolMaxClauseCount;
  /// Maximum number of file chunks sent in parallel for each recovery. Default: `2`
  late final pulumi.Output<int> indicesRecoveryMaxConcurrentFileChunks;
  /// Limits total inbound and outbound recovery traffic for each node, expressed in mb per second. Applies to both peer recoveries as well as snapshot recoveries (i.e., restores from a snapshot). Default: `40`
  late final pulumi.Output<int> indicesRecoveryMaxMbPerSec;
  /// Specifies whether ISM is enabled or not. Default: `true`
  late final pulumi.Output<bool> ismEnabled;
  /// Specifies whether audit history is enabled or not. The logs from ISM are automatically indexed to a logs document. Default: `true`
  late final pulumi.Output<bool> ismHistoryEnabled;
  /// Maximum age before rolling over the audit history index, in hours. Default: `24`
  late final pulumi.Output<int> ismHistoryMaxAgeHours;
  /// Maximum number of documents before rolling over the audit history index. Default: `2500000`
  late final pulumi.Output<int> ismHistoryMaxDocs;
  /// The time between rollover checks for the audit history index, in hours. Default: `8`
  late final pulumi.Output<int> ismHistoryRolloverCheckPeriodHours;
  /// Length of time long audit history indices are kept, in days. Default: `30`
  late final pulumi.Output<int> ismHistoryRolloverRetentionPeriodDays;
  /// Compatibility mode sets OpenSearch to report its version as 7.10 so clients continue to work. Default: `false`
  late final pulumi.Output<bool> overrideMainResponseVersion;
  /// Enable or disable filtering of alerting by backend roles. Default: `false`
  late final pulumi.Output<bool> pluginsAlertingFilterByBackendRolesEnabled;
  /// Allowlist of remote IP addresses for reindexing. Changing this value will cause all OpenSearch instances to restart.
  late final pulumi.Output<List<String>?> reindexRemoteWhitelists;
  /// Limits the number of inline script compilations within a period of time. Default is `use-context`
  late final pulumi.Output<String> scriptMaxCompilationsRate;
  /// Maximum number of aggregation buckets allowed in a single response. Default: `10000`
  late final pulumi.Output<int> searchMaxBuckets;
  /// Size of queue for operations in the analyze thread pool.
  late final pulumi.Output<int> threadPoolAnalyzeQueueSize;
  /// Number of workers in the analyze operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolAnalyzeSize;
  /// Number of workers in the force merge operation thread pool. This pool is used for forcing a merge between shards of one or more indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolForceMergeSize;
  /// Size of queue for operations in the get thread pool.
  late final pulumi.Output<int> threadPoolGetQueueSize;
  /// Number of workers in the get operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolGetSize;
  /// Size of queue for operations in the search thread pool.
  late final pulumi.Output<int> threadPoolSearchQueueSize;
  /// Number of workers in the search operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolSearchSize;
  /// Size of queue for operations in the search throttled thread pool.
  late final pulumi.Output<int> threadPoolSearchThrottledQueueSize;
  /// Number of workers in the search throttled operation thread pool. This pool is used for searching frozen indices. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolSearchThrottledSize;
  /// Size of queue for operations in the write thread pool.
  late final pulumi.Output<int> threadPoolWriteQueueSize;
  /// Number of workers in the write operation thread pool. Do note this may have maximum value depending on CPU count - value is automatically lowered if set to higher than maximum value.
  late final pulumi.Output<int> threadPoolWriteSize;

  /// Creates a new [DatabaseOpensearchConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseOpensearchConfig]. {@macro pulumi_index_database_opensearch_config_database_opensearch_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseOpensearchConfig(
    String name, {
    DatabaseOpensearchConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseOpensearchConfig:DatabaseOpensearchConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionAutoCreateIndexEnabled = registerOutput<bool>('actionAutoCreateIndexEnabled');
    this.actionDestructiveRequiresName = registerOutput<bool>('actionDestructiveRequiresName');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterMaxShardsPerNode = registerOutput<int>('clusterMaxShardsPerNode');
    this.clusterRoutingAllocationNodeConcurrentRecoveries = registerOutput<int>('clusterRoutingAllocationNodeConcurrentRecoveries');
    this.enableSecurityAudit = registerOutput<bool>('enableSecurityAudit');
    this.httpMaxContentLengthBytes = registerOutput<int>('httpMaxContentLengthBytes');
    this.httpMaxHeaderSizeBytes = registerOutput<int>('httpMaxHeaderSizeBytes');
    this.httpMaxInitialLineLengthBytes = registerOutput<int>('httpMaxInitialLineLengthBytes');
    this.indicesFielddataCacheSizePercentage = registerOutput<int>('indicesFielddataCacheSizePercentage');
    this.indicesMemoryIndexBufferSizePercentage = registerOutput<int>('indicesMemoryIndexBufferSizePercentage');
    this.indicesMemoryMaxIndexBufferSizeMb = registerOutput<int>('indicesMemoryMaxIndexBufferSizeMb');
    this.indicesMemoryMinIndexBufferSizeMb = registerOutput<int>('indicesMemoryMinIndexBufferSizeMb');
    this.indicesQueriesCacheSizePercentage = registerOutput<int>('indicesQueriesCacheSizePercentage');
    this.indicesQueryBoolMaxClauseCount = registerOutput<int>('indicesQueryBoolMaxClauseCount');
    this.indicesRecoveryMaxConcurrentFileChunks = registerOutput<int>('indicesRecoveryMaxConcurrentFileChunks');
    this.indicesRecoveryMaxMbPerSec = registerOutput<int>('indicesRecoveryMaxMbPerSec');
    this.ismEnabled = registerOutput<bool>('ismEnabled');
    this.ismHistoryEnabled = registerOutput<bool>('ismHistoryEnabled');
    this.ismHistoryMaxAgeHours = registerOutput<int>('ismHistoryMaxAgeHours');
    this.ismHistoryMaxDocs = registerOutput<int>('ismHistoryMaxDocs');
    this.ismHistoryRolloverCheckPeriodHours = registerOutput<int>('ismHistoryRolloverCheckPeriodHours');
    this.ismHistoryRolloverRetentionPeriodDays = registerOutput<int>('ismHistoryRolloverRetentionPeriodDays');
    this.overrideMainResponseVersion = registerOutput<bool>('overrideMainResponseVersion');
    this.pluginsAlertingFilterByBackendRolesEnabled = registerOutput<bool>('pluginsAlertingFilterByBackendRolesEnabled');
    this.reindexRemoteWhitelists = registerOutput<List<String>?>('reindexRemoteWhitelists');
    this.scriptMaxCompilationsRate = registerOutput<String>('scriptMaxCompilationsRate');
    this.searchMaxBuckets = registerOutput<int>('searchMaxBuckets');
    this.threadPoolAnalyzeQueueSize = registerOutput<int>('threadPoolAnalyzeQueueSize');
    this.threadPoolAnalyzeSize = registerOutput<int>('threadPoolAnalyzeSize');
    this.threadPoolForceMergeSize = registerOutput<int>('threadPoolForceMergeSize');
    this.threadPoolGetQueueSize = registerOutput<int>('threadPoolGetQueueSize');
    this.threadPoolGetSize = registerOutput<int>('threadPoolGetSize');
    this.threadPoolSearchQueueSize = registerOutput<int>('threadPoolSearchQueueSize');
    this.threadPoolSearchSize = registerOutput<int>('threadPoolSearchSize');
    this.threadPoolSearchThrottledQueueSize = registerOutput<int>('threadPoolSearchThrottledQueueSize');
    this.threadPoolSearchThrottledSize = registerOutput<int>('threadPoolSearchThrottledSize');
    this.threadPoolWriteQueueSize = registerOutput<int>('threadPoolWriteQueueSize');
    this.threadPoolWriteSize = registerOutput<int>('threadPoolWriteSize');
  }

  /// Gets an existing [DatabaseOpensearchConfig] resource's state with the given [name] and [id].
  static DatabaseOpensearchConfig get(
    String name,
    pulumi.Input<String> id, {
    DatabaseOpensearchConfigState? state,
  }) {
    return DatabaseOpensearchConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseOpensearchConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseOpensearchConfig:DatabaseOpensearchConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionAutoCreateIndexEnabled = registerOutput<bool>('actionAutoCreateIndexEnabled');
    this.actionDestructiveRequiresName = registerOutput<bool>('actionDestructiveRequiresName');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterMaxShardsPerNode = registerOutput<int>('clusterMaxShardsPerNode');
    this.clusterRoutingAllocationNodeConcurrentRecoveries = registerOutput<int>('clusterRoutingAllocationNodeConcurrentRecoveries');
    this.enableSecurityAudit = registerOutput<bool>('enableSecurityAudit');
    this.httpMaxContentLengthBytes = registerOutput<int>('httpMaxContentLengthBytes');
    this.httpMaxHeaderSizeBytes = registerOutput<int>('httpMaxHeaderSizeBytes');
    this.httpMaxInitialLineLengthBytes = registerOutput<int>('httpMaxInitialLineLengthBytes');
    this.indicesFielddataCacheSizePercentage = registerOutput<int>('indicesFielddataCacheSizePercentage');
    this.indicesMemoryIndexBufferSizePercentage = registerOutput<int>('indicesMemoryIndexBufferSizePercentage');
    this.indicesMemoryMaxIndexBufferSizeMb = registerOutput<int>('indicesMemoryMaxIndexBufferSizeMb');
    this.indicesMemoryMinIndexBufferSizeMb = registerOutput<int>('indicesMemoryMinIndexBufferSizeMb');
    this.indicesQueriesCacheSizePercentage = registerOutput<int>('indicesQueriesCacheSizePercentage');
    this.indicesQueryBoolMaxClauseCount = registerOutput<int>('indicesQueryBoolMaxClauseCount');
    this.indicesRecoveryMaxConcurrentFileChunks = registerOutput<int>('indicesRecoveryMaxConcurrentFileChunks');
    this.indicesRecoveryMaxMbPerSec = registerOutput<int>('indicesRecoveryMaxMbPerSec');
    this.ismEnabled = registerOutput<bool>('ismEnabled');
    this.ismHistoryEnabled = registerOutput<bool>('ismHistoryEnabled');
    this.ismHistoryMaxAgeHours = registerOutput<int>('ismHistoryMaxAgeHours');
    this.ismHistoryMaxDocs = registerOutput<int>('ismHistoryMaxDocs');
    this.ismHistoryRolloverCheckPeriodHours = registerOutput<int>('ismHistoryRolloverCheckPeriodHours');
    this.ismHistoryRolloverRetentionPeriodDays = registerOutput<int>('ismHistoryRolloverRetentionPeriodDays');
    this.overrideMainResponseVersion = registerOutput<bool>('overrideMainResponseVersion');
    this.pluginsAlertingFilterByBackendRolesEnabled = registerOutput<bool>('pluginsAlertingFilterByBackendRolesEnabled');
    this.reindexRemoteWhitelists = registerOutput<List<String>?>('reindexRemoteWhitelists');
    this.scriptMaxCompilationsRate = registerOutput<String>('scriptMaxCompilationsRate');
    this.searchMaxBuckets = registerOutput<int>('searchMaxBuckets');
    this.threadPoolAnalyzeQueueSize = registerOutput<int>('threadPoolAnalyzeQueueSize');
    this.threadPoolAnalyzeSize = registerOutput<int>('threadPoolAnalyzeSize');
    this.threadPoolForceMergeSize = registerOutput<int>('threadPoolForceMergeSize');
    this.threadPoolGetQueueSize = registerOutput<int>('threadPoolGetQueueSize');
    this.threadPoolGetSize = registerOutput<int>('threadPoolGetSize');
    this.threadPoolSearchQueueSize = registerOutput<int>('threadPoolSearchQueueSize');
    this.threadPoolSearchSize = registerOutput<int>('threadPoolSearchSize');
    this.threadPoolSearchThrottledQueueSize = registerOutput<int>('threadPoolSearchThrottledQueueSize');
    this.threadPoolSearchThrottledSize = registerOutput<int>('threadPoolSearchThrottledSize');
    this.threadPoolWriteQueueSize = registerOutput<int>('threadPoolWriteQueueSize');
    this.threadPoolWriteSize = registerOutput<int>('threadPoolWriteSize');
  }
}
