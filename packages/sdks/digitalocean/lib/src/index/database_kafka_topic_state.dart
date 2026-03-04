// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_kafka_topic_config.dart';

/// Input properties used for looking up and filtering DatabaseKafkaTopic resources.
class DatabaseKafkaTopicState {
  /// The ID of the source database cluster. Note: This must be a Kafka cluster.
  final pulumi.Input<String>? clusterId;

  /// A set of advanced configuration parameters. Defaults will be set for any of the parameters that are not included.
  /// The `config` block is documented below.
  final pulumi.Input<List<DatabaseKafkaTopicConfig>>? configs;

  /// The name for the topic.
  final pulumi.Input<String>? name;

  /// The number of partitions for the topic. Default and minimum set at 3, maximum is 2048.
  final pulumi.Input<int>? partitionCount;

  /// The number of nodes that topics are replicated across. Default and minimum set at 2, maximum is the number of nodes in the cluster.
  final pulumi.Input<int>? replicationFactor;

  /// The current status of the topic. Possible values are 'active', 'configuring', and 'deleting'.
  final pulumi.Input<String>? state;

  /// Creates a new [DatabaseKafkaTopicState].
  /// [clusterId] The ID of the source database cluster. Note: This must be a Kafka cluster.
  /// [configs] A set of advanced configuration parameters. Defaults will be set for any of the parameters that are not included.
  /// [name] The name for the topic.
  /// [partitionCount] The number of partitions for the topic. Default and minimum set at 3, maximum is 2048.
  /// [replicationFactor] The number of nodes that topics are replicated across. Default and minimum set at 2, maximum is the number of nodes in the cluster.
  /// [state] The current status of the topic. Possible values are 'active', 'configuring', and 'deleting'.
  DatabaseKafkaTopicState({
    this.clusterId,
    this.configs,
    this.name,
    this.partitionCount,
    this.replicationFactor,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'configs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseKafkaTopicConfig>,
            List<Map<String, dynamic>>
          >(
            configs,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseKafkaTopicConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'partitionCount': ?partitionCount,
      'replicationFactor': ?replicationFactor,
      'state': ?state,
    };
  }

  factory DatabaseKafkaTopicState.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaTopicState(
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configs: (() {
        final guardedValue = map['configs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DatabaseKafkaTopicConfig>(
            guardedValue,
            (value) => DatabaseKafkaTopicConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionCount: (() {
        final guardedValue = map['partitionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      replicationFactor: (() {
        final guardedValue = map['replicationFactor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
