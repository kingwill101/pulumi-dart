// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// The cluster name.
  final pulumi.Input<String>? cluster;
  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  final pulumi.Input<Map<String, String>>? configs;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String>? location;
  /// The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  final pulumi.Input<String>? name;
  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  final pulumi.Input<int>? partitionCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  final pulumi.Input<int>? replicationFactor;
  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String>? topicId;

  /// Creates a new [TopicState].
  /// [cluster] The cluster name.
  /// [configs] Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  /// [partitionCount] The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicationFactor] The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  /// [topicId] The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  TopicState({
    this.cluster,
    this.configs,
    this.location,
    this.name,
    this.partitionCount,
    this.project,
    this.replicationFactor,
    this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'configs': ?configs,
      'location': ?location,
      'name': ?name,
      'partitionCount': ?partitionCount,
      'project': ?project,
      'replicationFactor': ?replicationFactor,
      'topicId': ?topicId,
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      cluster: map['cluster'] == null ? null : (map['cluster'] as String).input(),
      configs: map['configs'] == null ? null : ((map['configs'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partitionCount: map['partitionCount'] == null ? null : (map['partitionCount'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      replicationFactor: map['replicationFactor'] == null ? null : (map['replicationFactor'] as int).input(),
      topicId: map['topicId'] == null ? null : (map['topicId'] as String).input(),
    );
  }
}

