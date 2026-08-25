// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// The cluster name.
  final pulumi.Input<String?>? cluster;
  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  final pulumi.Input<Map<String, String>?>? configs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String?>? location;
  /// The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  final pulumi.Input<String?>? name;
  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  final pulumi.Input<int?>? partitionCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  final pulumi.Input<int?>? replicationFactor;
  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String?>? topicId;

  /// Creates a new [TopicState].
  /// [cluster] The cluster name.
  /// [configs] Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  /// [partitionCount] The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicationFactor] The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  /// [topicId] The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  const TopicState({
    this.cluster,
    this.configs,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
