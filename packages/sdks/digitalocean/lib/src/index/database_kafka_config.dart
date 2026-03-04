import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_kafka_config_args.dart';
import 'database_kafka_config_state.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed Kafka database cluster.
///
/// &gt; **Note** Kafka configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-kafka-cluster",
///     engine: "kafka",
///     version: "3.7",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC3,
///     nodeCount: 3,
/// });
/// const example = new digitalocean.DatabaseKafkaConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     groupInitialRebalanceDelayMs: 3000,
///     groupMinSessionTimeoutMs: 6000,
///     groupMaxSessionTimeoutMs: 1800000,
///     messageMaxBytes: 1048588,
///     logCleanerDeleteRetentionMs: 86400000,
///     logCleanerMinCompactionLagMs: "0",
///     logFlushIntervalMs: "9223372036854775807",
///     logIndexIntervalBytes: 4096,
///     logMessageDownconversionEnable: true,
///     logMessageTimestampDifferenceMaxMs: "9223372036854775807",
///     logPreallocate: false,
///     logRetentionBytes: "-1",
///     logRetentionHours: 168,
///     logRetentionMs: "604800000",
///     logRollJitterMs: "0",
///     logSegmentDeleteDelayMs: 60000,
///     autoCreateTopicsEnable: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-kafka-cluster",
///     engine="kafka",
///     version="3.7",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC3,
///     node_count=3)
/// example = digitalocean.DatabaseKafkaConfig("example",
///     cluster_id=example_database_cluster.id,
///     group_initial_rebalance_delay_ms=3000,
///     group_min_session_timeout_ms=6000,
///     group_max_session_timeout_ms=1800000,
///     message_max_bytes=1048588,
///     log_cleaner_delete_retention_ms=86400000,
///     log_cleaner_min_compaction_lag_ms="0",
///     log_flush_interval_ms="9223372036854775807",
///     log_index_interval_bytes=4096,
///     log_message_downconversion_enable=True,
///     log_message_timestamp_difference_max_ms="9223372036854775807",
///     log_preallocate=False,
///     log_retention_bytes="-1",
///     log_retention_hours=168,
///     log_retention_ms="604800000",
///     log_roll_jitter_ms="0",
///     log_segment_delete_delay_ms=60000,
///     auto_create_topics_enable=True)
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
///         Name = "example-kafka-cluster",
///         Engine = "kafka",
///         Version = "3.7",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC3,
///         NodeCount = 3,
///     });
///
///     var example = new DigitalOcean.DatabaseKafkaConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         GroupInitialRebalanceDelayMs = 3000,
///         GroupMinSessionTimeoutMs = 6000,
///         GroupMaxSessionTimeoutMs = 1800000,
///         MessageMaxBytes = 1048588,
///         LogCleanerDeleteRetentionMs = 86400000,
///         LogCleanerMinCompactionLagMs = "0",
///         LogFlushIntervalMs = "9223372036854775807",
///         LogIndexIntervalBytes = 4096,
///         LogMessageDownconversionEnable = true,
///         LogMessageTimestampDifferenceMaxMs = "9223372036854775807",
///         LogPreallocate = false,
///         LogRetentionBytes = "-1",
///         LogRetentionHours = 168,
///         LogRetentionMs = "604800000",
///         LogRollJitterMs = "0",
///         LogSegmentDeleteDelayMs = 60000,
///         AutoCreateTopicsEnable = true,
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
/// 			Name:      pulumi.String("example-kafka-cluster"),
/// 			Engine:    pulumi.String("kafka"),
/// 			Version:   pulumi.String("3.7"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC3),
/// 			NodeCount: pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseKafkaConfig(ctx, "example", &digitalocean.DatabaseKafkaConfigArgs{
/// 			ClusterId:                          exampleDatabaseCluster.ID(),
/// 			GroupInitialRebalanceDelayMs:       pulumi.Int(3000),
/// 			GroupMinSessionTimeoutMs:           pulumi.Int(6000),
/// 			GroupMaxSessionTimeoutMs:           pulumi.Int(1800000),
/// 			MessageMaxBytes:                    pulumi.Int(1048588),
/// 			LogCleanerDeleteRetentionMs:        pulumi.Int(86400000),
/// 			LogCleanerMinCompactionLagMs:       pulumi.String("0"),
/// 			LogFlushIntervalMs:                 pulumi.String("9223372036854775807"),
/// 			LogIndexIntervalBytes:              pulumi.Int(4096),
/// 			LogMessageDownconversionEnable:     pulumi.Bool(true),
/// 			LogMessageTimestampDifferenceMaxMs: pulumi.String("9223372036854775807"),
/// 			LogPreallocate:                     pulumi.Bool(false),
/// 			LogRetentionBytes:                  pulumi.String("-1"),
/// 			LogRetentionHours:                  pulumi.Int(168),
/// 			LogRetentionMs:                     pulumi.String("604800000"),
/// 			LogRollJitterMs:                    pulumi.String("0"),
/// 			LogSegmentDeleteDelayMs:            pulumi.Int(60000),
/// 			AutoCreateTopicsEnable:             pulumi.Bool(true),
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
/// import com.pulumi.digitalocean.DatabaseKafkaConfig;
/// import com.pulumi.digitalocean.DatabaseKafkaConfigArgs;
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
///             .name("example-kafka-cluster")
///             .engine("kafka")
///             .version("3.7")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc3")
///             .nodeCount(3)
///             .build());
///
///         var example = new DatabaseKafkaConfig("example", DatabaseKafkaConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .groupInitialRebalanceDelayMs(3000)
///             .groupMinSessionTimeoutMs(6000)
///             .groupMaxSessionTimeoutMs(1800000)
///             .messageMaxBytes(1048588)
///             .logCleanerDeleteRetentionMs(86400000)
///             .logCleanerMinCompactionLagMs("0")
///             .logFlushIntervalMs("9223372036854775807")
///             .logIndexIntervalBytes(4096)
///             .logMessageDownconversionEnable(true)
///             .logMessageTimestampDifferenceMaxMs("9223372036854775807")
///             .logPreallocate(false)
///             .logRetentionBytes("-1")
///             .logRetentionHours(168)
///             .logRetentionMs("604800000")
///             .logRollJitterMs("0")
///             .logSegmentDeleteDelayMs(60000)
///             .autoCreateTopicsEnable(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseKafkaConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       groupInitialRebalanceDelayMs: 3000
///       groupMinSessionTimeoutMs: 6000
///       groupMaxSessionTimeoutMs: 1.8e+06
///       messageMaxBytes: 1.048588e+06
///       logCleanerDeleteRetentionMs: 8.64e+07
///       logCleanerMinCompactionLagMs: 0
///       logFlushIntervalMs: 9.223372036854776e+18
///       logIndexIntervalBytes: 4096
///       logMessageDownconversionEnable: true
///       logMessageTimestampDifferenceMaxMs: 9.223372036854776e+18
///       logPreallocate: false
///       logRetentionBytes: -1
///       logRetentionHours: 168
///       logRetentionMs: 6.048e+08
///       logRollJitterMs: 0
///       logSegmentDeleteDelayMs: 60000
///       autoCreateTopicsEnable: true
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-kafka-cluster
///       engine: kafka
///       version: '3.7'
///       size: db-s-1vcpu-1gb
///       region: nyc3
///       nodeCount: 3
/// ```
///
///
/// ## Import
///
/// A Kafka database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseKafkaConfig:DatabaseKafkaConfig example 4b62829a-9c42-465b-aaa3-84051048e712
/// ```
class DatabaseKafkaConfig extends pulumi.CustomResource {
  /// Enable auto creation of topics.
  late final pulumi.Output<bool> autoCreateTopicsEnable;

  /// The ID of the target Kafka cluster.
  late final pulumi.Output<String> clusterId;

  /// The amount of time, in milliseconds, the group coordinator will wait for more consumers to join a new group before performing the first rebalance. A longer delay means potentially fewer rebalances, but increases the time until processing begins. The default value for this is 3 seconds. During development and testing it might be desirable to set this to 0 in order to not delay test execution time.
  late final pulumi.Output<int> groupInitialRebalanceDelayMs;

  /// The maximum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  late final pulumi.Output<int> groupMaxSessionTimeoutMs;

  /// The minimum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  late final pulumi.Output<int> groupMinSessionTimeoutMs;

  /// How long are delete records retained?
  late final pulumi.Output<int> logCleanerDeleteRetentionMs;

  /// The minimum time a message will remain uncompacted in the log. Only applicable for logs that are being compacted.
  late final pulumi.Output<String> logCleanerMinCompactionLagMs;

  /// The maximum time in ms that a message in any topic is kept in memory before flushed to disk. If not set, the value in log.flush.scheduler.interval.ms is used.
  late final pulumi.Output<String> logFlushIntervalMs;

  /// The interval with which Kafka adds an entry to the offset index.
  late final pulumi.Output<int> logIndexIntervalBytes;

  /// This configuration controls whether down-conversion of message formats is enabled to satisfy consume requests.
  late final pulumi.Output<bool> logMessageDownconversionEnable;

  /// The maximum difference allowed between the timestamp when a broker receives a message and the timestamp specified in the message.
  late final pulumi.Output<String> logMessageTimestampDifferenceMaxMs;

  /// Controls whether to preallocate a file when creating a new segment.
  late final pulumi.Output<bool> logPreallocate;

  /// The maximum size of the log before deleting messages.
  late final pulumi.Output<String> logRetentionBytes;

  /// The number of hours to keep a log file before deleting it.
  late final pulumi.Output<int> logRetentionHours;

  /// The number of milliseconds to keep a log file before deleting it (in milliseconds), If not set, the value in log.retention.minutes is used. If set to -1, no time limit is applied.
  late final pulumi.Output<String> logRetentionMs;

  /// The maximum jitter to subtract from logRollTimeMillis (in milliseconds). If not set, the value in log.roll.jitter.hours is used.
  late final pulumi.Output<String> logRollJitterMs;

  /// The amount of time to wait before deleting a file from the filesystem.
  late final pulumi.Output<int> logSegmentDeleteDelayMs;

  /// The maximum size of message that the server can receive.
  late final pulumi.Output<int> messageMaxBytes;

  /// Creates a new [DatabaseKafkaConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseKafkaConfig]. {@macro pulumi_index_database_kafka_config_database_kafka_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseKafkaConfig(
    String name, {
    DatabaseKafkaConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaConfig:DatabaseKafkaConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateTopicsEnable = registerOutput<bool>('autoCreateTopicsEnable');
    clusterId = registerOutput<String>('clusterId');
    groupInitialRebalanceDelayMs = registerOutput<int>(
      'groupInitialRebalanceDelayMs',
    );
    groupMaxSessionTimeoutMs = registerOutput<int>('groupMaxSessionTimeoutMs');
    groupMinSessionTimeoutMs = registerOutput<int>('groupMinSessionTimeoutMs');
    logCleanerDeleteRetentionMs = registerOutput<int>(
      'logCleanerDeleteRetentionMs',
    );
    logCleanerMinCompactionLagMs = registerOutput<String>(
      'logCleanerMinCompactionLagMs',
    );
    logFlushIntervalMs = registerOutput<String>('logFlushIntervalMs');
    logIndexIntervalBytes = registerOutput<int>('logIndexIntervalBytes');
    logMessageDownconversionEnable = registerOutput<bool>(
      'logMessageDownconversionEnable',
    );
    logMessageTimestampDifferenceMaxMs = registerOutput<String>(
      'logMessageTimestampDifferenceMaxMs',
    );
    logPreallocate = registerOutput<bool>('logPreallocate');
    logRetentionBytes = registerOutput<String>('logRetentionBytes');
    logRetentionHours = registerOutput<int>('logRetentionHours');
    logRetentionMs = registerOutput<String>('logRetentionMs');
    logRollJitterMs = registerOutput<String>('logRollJitterMs');
    logSegmentDeleteDelayMs = registerOutput<int>('logSegmentDeleteDelayMs');
    messageMaxBytes = registerOutput<int>('messageMaxBytes');
  }

  /// Gets an existing [DatabaseKafkaConfig] resource's state with the given [name] and [id].
  static DatabaseKafkaConfig get(
    String name,
    pulumi.Input<String> id, {
    DatabaseKafkaConfigState? state,
  }) {
    return DatabaseKafkaConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseKafkaConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaConfig:DatabaseKafkaConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateTopicsEnable = registerOutput<bool>('autoCreateTopicsEnable');
    clusterId = registerOutput<String>('clusterId');
    groupInitialRebalanceDelayMs = registerOutput<int>(
      'groupInitialRebalanceDelayMs',
    );
    groupMaxSessionTimeoutMs = registerOutput<int>('groupMaxSessionTimeoutMs');
    groupMinSessionTimeoutMs = registerOutput<int>('groupMinSessionTimeoutMs');
    logCleanerDeleteRetentionMs = registerOutput<int>(
      'logCleanerDeleteRetentionMs',
    );
    logCleanerMinCompactionLagMs = registerOutput<String>(
      'logCleanerMinCompactionLagMs',
    );
    logFlushIntervalMs = registerOutput<String>('logFlushIntervalMs');
    logIndexIntervalBytes = registerOutput<int>('logIndexIntervalBytes');
    logMessageDownconversionEnable = registerOutput<bool>(
      'logMessageDownconversionEnable',
    );
    logMessageTimestampDifferenceMaxMs = registerOutput<String>(
      'logMessageTimestampDifferenceMaxMs',
    );
    logPreallocate = registerOutput<bool>('logPreallocate');
    logRetentionBytes = registerOutput<String>('logRetentionBytes');
    logRetentionHours = registerOutput<int>('logRetentionHours');
    logRetentionMs = registerOutput<String>('logRetentionMs');
    logRollJitterMs = registerOutput<String>('logRollJitterMs');
    logSegmentDeleteDelayMs = registerOutput<int>('logSegmentDeleteDelayMs');
    messageMaxBytes = registerOutput<int>('messageMaxBytes');
  }
}
