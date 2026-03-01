// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_kafka_topic_config.dart';

/// {@template pulumi_index_database_kafka_topic_database_kafka_topic_args_doc}
/// The set of arguments for DatabaseKafkaTopic.
/// {@endtemplate}
/// {@macro pulumi_index_database_kafka_topic_database_kafka_topic_args_doc}
class DatabaseKafkaTopicArgs {
  /// The ID of the source database cluster. Note: This must be a Kafka cluster.
  final pulumi.Input<String> clusterId;
  /// A set of advanced configuration parameters. Defaults will be set for any of the parameters that are not included.
  /// The `config` block is documented below.
  final pulumi.Input<List<DatabaseKafkaTopicConfig>>? configs;
  /// The name for the topic.
  final pulumi.Input<String>? name;
  /// The number of partitions for the topic. Default and minimum set at 3, maximum is 2048.
  final pulumi.Input<int>? partitionCount;
  /// The number of nodes that topics are replicated across. Default and minimum set at 2, maximum is the number of nodes in the cluster.
  final pulumi.Input<int>? replicationFactor;

  /// Creates a new [DatabaseKafkaTopicArgs].
  /// [clusterId] The ID of the source database cluster. Note: This must be a Kafka cluster.
  /// [configs] A set of advanced configuration parameters. Defaults will be set for any of the parameters that are not included.
  /// [name] The name for the topic.
  /// [partitionCount] The number of partitions for the topic. Default and minimum set at 3, maximum is 2048.
  /// [replicationFactor] The number of nodes that topics are replicated across. Default and minimum set at 2, maximum is the number of nodes in the cluster.
  DatabaseKafkaTopicArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<List<DatabaseKafkaTopicConfig>>? configs,
    pulumi.Output<String>? name,
    pulumi.Output<int>? partitionCount,
    pulumi.Output<int>? replicationFactor,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      configs = pulumi.Input.asOptionalInput<List<DatabaseKafkaTopicConfig>>(configs),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionCount = pulumi.Input.asOptionalInput<int>(partitionCount),
      replicationFactor = pulumi.Input.asOptionalInput<int>(replicationFactor);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<DatabaseKafkaTopicConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<DatabaseKafkaTopicConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'partitionCount': ?partitionCount,
      'replicationFactor': ?replicationFactor,
    };
  }

  factory DatabaseKafkaTopicArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaTopicArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      configs: map['configs'] == null ? null : pulumi.Output.create<List<DatabaseKafkaTopicConfig>>(pulumi.Input.decodeList<DatabaseKafkaTopicConfig>(map['configs'], (value) => DatabaseKafkaTopicConfig.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionCount: map['partitionCount'] == null ? null : pulumi.Output.create<int>(map['partitionCount'] as int),
      replicationFactor: map['replicationFactor'] == null ? null : pulumi.Output.create<int>(map['replicationFactor'] as int),
    );
  }
}

