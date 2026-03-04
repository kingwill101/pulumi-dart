// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedkafka_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_topic_topic_args_doc}
class TopicArgs {
  /// The cluster name.
  final pulumi.Input<String> cluster;

  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  final pulumi.Input<Map<String, String>>? configs;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;

  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  final pulumi.Input<int>? partitionCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  final pulumi.Input<int> replicationFactor;

  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicArgs].
  /// [cluster] The cluster name.
  /// [configs] Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [partitionCount] The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicationFactor] The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  /// [topicId] The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  TopicArgs({
    required this.cluster,
    this.configs,
    required this.location,
    this.partitionCount,
    this.project,
    required this.replicationFactor,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'configs': ?configs,
      'location': location,
      'partitionCount': ?partitionCount,
      'project': ?project,
      'replicationFactor': replicationFactor,
      'topicId': topicId,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      configs: (() {
        final guardedValue = map['configs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      partitionCount: (() {
        final guardedValue = map['partitionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationFactor: pulumi.Input.fromValue(
        map['replicationFactor'] as int,
      ),
      topicId: pulumi.Input.fromValue(map['topicId'] as String),
    );
  }
}
