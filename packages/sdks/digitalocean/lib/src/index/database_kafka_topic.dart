import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_kafka_topic_args.dart';
import 'database_kafka_topic_state.dart';

/// Provides a DigitalOcean Kafka topic for Kafka clusters.
///
/// ## Example Usage
///
/// ### Create a new Kafka topic
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const kafka_example = new digitalocean.DatabaseCluster("kafka-example", {
///     name: "example-kafka-cluster",
///     engine: "kafka",
///     version: "3.5",
///     size: "db-s-2vcpu-2gb",
///     region: digitalocean.Region.NYC1,
///     nodeCount: 3,
///     tags: ["production"],
/// });
/// const topic_01 = new digitalocean.DatabaseKafkaTopic("topic-01", {
///     clusterId: kafka_example.id,
///     name: "topic-01",
///     partitionCount: 3,
///     replicationFactor: 2,
///     configs: [{
///         cleanupPolicy: "compact",
///         compressionType: "uncompressed",
///         deleteRetentionMs: "14000",
///         fileDeleteDelayMs: "170000",
///         flushMessages: "92233",
///         flushMs: "92233720368",
///         indexIntervalBytes: "40962",
///         maxCompactionLagMs: "9223372036854775807",
///         maxMessageBytes: "1048588",
///         messageDownConversionEnable: true,
///         messageFormatVersion: "3.0-IV1",
///         messageTimestampDifferenceMaxMs: "9223372036854775807",
///         messageTimestampType: "log_append_time",
///         minCleanableDirtyRatio: 0.5,
///         minCompactionLagMs: "20000",
///         minInsyncReplicas: 2,
///         preallocate: false,
///         retentionBytes: "-1",
///         retentionMs: "-1",
///         segmentBytes: "209715200",
///         segmentIndexBytes: "10485760",
///         segmentJitterMs: "0",
///         segmentMs: "604800000",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// kafka_example = digitalocean.DatabaseCluster("kafka-example",
///     name="example-kafka-cluster",
///     engine="kafka",
///     version="3.5",
///     size="db-s-2vcpu-2gb",
///     region=digitalocean.Region.NYC1,
///     node_count=3,
///     tags=["production"])
/// topic_01 = digitalocean.DatabaseKafkaTopic("topic-01",
///     cluster_id=kafka_example.id,
///     name="topic-01",
///     partition_count=3,
///     replication_factor=2,
///     configs=[{
///         "cleanup_policy": "compact",
///         "compression_type": "uncompressed",
///         "delete_retention_ms": "14000",
///         "file_delete_delay_ms": "170000",
///         "flush_messages": "92233",
///         "flush_ms": "92233720368",
///         "index_interval_bytes": "40962",
///         "max_compaction_lag_ms": "9223372036854775807",
///         "max_message_bytes": "1048588",
///         "message_down_conversion_enable": True,
///         "message_format_version": "3.0-IV1",
///         "message_timestamp_difference_max_ms": "9223372036854775807",
///         "message_timestamp_type": "log_append_time",
///         "min_cleanable_dirty_ratio": 0.5,
///         "min_compaction_lag_ms": "20000",
///         "min_insync_replicas": 2,
///         "preallocate": False,
///         "retention_bytes": "-1",
///         "retention_ms": "-1",
///         "segment_bytes": "209715200",
///         "segment_index_bytes": "10485760",
///         "segment_jitter_ms": "0",
///         "segment_ms": "604800000",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafka_example = new DigitalOcean.DatabaseCluster("kafka-example", new()
///     {
///         Name = "example-kafka-cluster",
///         Engine = "kafka",
///         Version = "3.5",
///         Size = "db-s-2vcpu-2gb",
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 3,
///         Tags = new[]
///         {
///             "production",
///         },
///     });
///
///     var topic_01 = new DigitalOcean.DatabaseKafkaTopic("topic-01", new()
///     {
///         ClusterId = kafka_example.Id,
///         Name = "topic-01",
///         PartitionCount = 3,
///         ReplicationFactor = 2,
///         Configs = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseKafkaTopicConfigArgs
///             {
///                 CleanupPolicy = "compact",
///                 CompressionType = "uncompressed",
///                 DeleteRetentionMs = "14000",
///                 FileDeleteDelayMs = "170000",
///                 FlushMessages = "92233",
///                 FlushMs = "92233720368",
///                 IndexIntervalBytes = "40962",
///                 MaxCompactionLagMs = "9223372036854775807",
///                 MaxMessageBytes = "1048588",
///                 MessageDownConversionEnable = true,
///                 MessageFormatVersion = "3.0-IV1",
///                 MessageTimestampDifferenceMaxMs = "9223372036854775807",
///                 MessageTimestampType = "log_append_time",
///                 MinCleanableDirtyRatio = 0.5,
///                 MinCompactionLagMs = "20000",
///                 MinInsyncReplicas = 2,
///                 Preallocate = false,
///                 RetentionBytes = "-1",
///                 RetentionMs = "-1",
///                 SegmentBytes = "209715200",
///                 SegmentIndexBytes = "10485760",
///                 SegmentJitterMs = "0",
///                 SegmentMs = "604800000",
///             },
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
/// 		kafka_example, err := digitalocean.NewDatabaseCluster(ctx, "kafka-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-kafka-cluster"),
/// 			Engine:    pulumi.String("kafka"),
/// 			Version:   pulumi.String("3.5"),
/// 			Size:      pulumi.String("db-s-2vcpu-2gb"),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(3),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseKafkaTopic(ctx, "topic-01", &digitalocean.DatabaseKafkaTopicArgs{
/// 			ClusterId:         kafka_example.ID(),
/// 			Name:              pulumi.String("topic-01"),
/// 			PartitionCount:    pulumi.Int(3),
/// 			ReplicationFactor: pulumi.Int(2),
/// 			Configs: digitalocean.DatabaseKafkaTopicConfigArray{
/// 				&digitalocean.DatabaseKafkaTopicConfigArgs{
/// 					CleanupPolicy:                   pulumi.String("compact"),
/// 					CompressionType:                 pulumi.String("uncompressed"),
/// 					DeleteRetentionMs:               pulumi.String("14000"),
/// 					FileDeleteDelayMs:               pulumi.String("170000"),
/// 					FlushMessages:                   pulumi.String("92233"),
/// 					FlushMs:                         pulumi.String("92233720368"),
/// 					IndexIntervalBytes:              pulumi.String("40962"),
/// 					MaxCompactionLagMs:              pulumi.String("9223372036854775807"),
/// 					MaxMessageBytes:                 pulumi.String("1048588"),
/// 					MessageDownConversionEnable:     pulumi.Bool(true),
/// 					MessageFormatVersion:            pulumi.String("3.0-IV1"),
/// 					MessageTimestampDifferenceMaxMs: pulumi.String("9223372036854775807"),
/// 					MessageTimestampType:            pulumi.String("log_append_time"),
/// 					MinCleanableDirtyRatio:          pulumi.Float64(0.5),
/// 					MinCompactionLagMs:              pulumi.String("20000"),
/// 					MinInsyncReplicas:               pulumi.Int(2),
/// 					Preallocate:                     pulumi.Bool(false),
/// 					RetentionBytes:                  pulumi.String("-1"),
/// 					RetentionMs:                     pulumi.String("-1"),
/// 					SegmentBytes:                    pulumi.String("209715200"),
/// 					SegmentIndexBytes:               pulumi.String("10485760"),
/// 					SegmentJitterMs:                 pulumi.String("0"),
/// 					SegmentMs:                       pulumi.String("604800000"),
/// 				},
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
/// import com.pulumi.digitalocean.DatabaseKafkaTopic;
/// import com.pulumi.digitalocean.DatabaseKafkaTopicArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseKafkaTopicConfigArgs;
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
///         var kafka_example = new DatabaseCluster("kafka-example", DatabaseClusterArgs.builder()
///             .name("example-kafka-cluster")
///             .engine("kafka")
///             .version("3.5")
///             .size("db-s-2vcpu-2gb")
///             .region("nyc1")
///             .nodeCount(3)
///             .tags("production")
///             .build());
///
///         var topic_01 = new DatabaseKafkaTopic("topic-01", DatabaseKafkaTopicArgs.builder()
///             .clusterId(kafka_example.id())
///             .name("topic-01")
///             .partitionCount(3)
///             .replicationFactor(2)
///             .configs(DatabaseKafkaTopicConfigArgs.builder()
///                 .cleanupPolicy("compact")
///                 .compressionType("uncompressed")
///                 .deleteRetentionMs("14000")
///                 .fileDeleteDelayMs("170000")
///                 .flushMessages("92233")
///                 .flushMs("92233720368")
///                 .indexIntervalBytes("40962")
///                 .maxCompactionLagMs("9223372036854775807")
///                 .maxMessageBytes("1048588")
///                 .messageDownConversionEnable(true)
///                 .messageFormatVersion("3.0-IV1")
///                 .messageTimestampDifferenceMaxMs("9223372036854775807")
///                 .messageTimestampType("log_append_time")
///                 .minCleanableDirtyRatio(0.5)
///                 .minCompactionLagMs("20000")
///                 .minInsyncReplicas(2)
///                 .preallocate(false)
///                 .retentionBytes("-1")
///                 .retentionMs("-1")
///                 .segmentBytes("209715200")
///                 .segmentIndexBytes("10485760")
///                 .segmentJitterMs("0")
///                 .segmentMs("604800000")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   topic-01:
///     type: digitalocean:DatabaseKafkaTopic
///     properties:
///       clusterId: ${["kafka-example"].id}
///       name: topic-01
///       partitionCount: 3
///       replicationFactor: 2
///       configs:
///         - cleanupPolicy: compact
///           compressionType: uncompressed
///           deleteRetentionMs: 14000
///           fileDeleteDelayMs: 170000
///           flushMessages: 92233
///           flushMs: 9.2233720368e+10
///           indexIntervalBytes: 40962
///           maxCompactionLagMs: 9.223372036854776e+18
///           maxMessageBytes: 1.048588e+06
///           messageDownConversionEnable: true
///           messageFormatVersion: 3.0-IV1
///           messageTimestampDifferenceMaxMs: 9.223372036854776e+18
///           messageTimestampType: log_append_time
///           minCleanableDirtyRatio: 0.5
///           minCompactionLagMs: 20000
///           minInsyncReplicas: 2
///           preallocate: false
///           retentionBytes: -1
///           retentionMs: -1
///           segmentBytes: 2.097152e+08
///           segmentIndexBytes: 1.048576e+07
///           segmentJitterMs: 0
///           segmentMs: 6.048e+08
///   kafka-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-kafka-cluster
///       engine: kafka
///       version: '3.5'
///       size: db-s-2vcpu-2gb
///       region: nyc1
///       nodeCount: 3
///       tags:
///         - production
/// ```
///
///
/// ## Import
///
/// Topics can be imported using the `id` of the source cluster and the `name` of the topic joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseKafkaTopic:DatabaseKafkaTopic topic-01 245bcfd0-7f31-4ce6-a2bc-475a116cca97,topic-01
/// ```
class DatabaseKafkaTopic extends pulumi.CustomResource {
  /// The ID of the source database cluster. Note: This must be a Kafka cluster.
  late final pulumi.Output<String> clusterId;

  /// A set of advanced configuration parameters. Defaults will be set for any of the parameters that are not included.
  /// The `config` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> configs;

  /// The name for the topic.
  late final pulumi.Output<String> name;

  /// The number of partitions for the topic. Default and minimum set at 3, maximum is 2048.
  late final pulumi.Output<int?> partitionCount;

  /// The number of nodes that topics are replicated across. Default and minimum set at 2, maximum is the number of nodes in the cluster.
  late final pulumi.Output<int?> replicationFactor;

  /// The current status of the topic. Possible values are 'active', 'configuring', and 'deleting'.
  late final pulumi.Output<String> state;

  /// Creates a new [DatabaseKafkaTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseKafkaTopic]. {@macro pulumi_index_database_kafka_topic_database_kafka_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseKafkaTopic(
    String name, {
    DatabaseKafkaTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaTopic:DatabaseKafkaTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    configs = registerOutput<List<Map<String, dynamic>>>('configs');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int?>('partitionCount');
    replicationFactor = registerOutput<int?>('replicationFactor');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [DatabaseKafkaTopic] resource's state with the given [name] and [id].
  static DatabaseKafkaTopic get(
    String name,
    pulumi.Input<String> id, {
    DatabaseKafkaTopicState? state,
  }) {
    return DatabaseKafkaTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseKafkaTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseKafkaTopic:DatabaseKafkaTopic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    configs = registerOutput<List<Map<String, dynamic>>>('configs');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int?>('partitionCount');
    replicationFactor = registerOutput<int?>('replicationFactor');
    this.state = registerOutput<String>('state');
  }
}
