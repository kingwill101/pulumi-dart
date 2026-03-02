// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_config.dart';
import 'reservation_config.dart';
import 'retention_config.dart';

/// {@template pulumi_pubsublite_v1_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_topic_args_doc}
class TopicArgs {
  final pulumi.Input<String>? location;
  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final pulumi.Input<String>? name;
  /// The settings for this topic's partitions.
  final pulumi.Input<PartitionConfig>? partitionConfig;
  final pulumi.Input<String>? project;
  /// The settings for this topic's Reservation usage.
  final pulumi.Input<ReservationConfig>? reservationConfig;
  /// The settings for this topic's message retention.
  final pulumi.Input<RetentionConfig>? retentionConfig;
  /// Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicArgs].
  /// [location] Optional.
  /// [name] The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  /// [partitionConfig] The settings for this topic's partitions.
  /// [project] Optional.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for this topic's message retention.
  /// [topicId] Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  TopicArgs({
    this.location,
    this.name,
    this.partitionConfig,
    this.project,
    this.reservationConfig,
    this.retentionConfig,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'partitionConfig': ?pulumi.Input.mapOptionalInputValue<PartitionConfig, Map<String, dynamic>>(partitionConfig, (value) => value.toMap()),
      'project': ?project,
      'reservationConfig': ?pulumi.Input.mapOptionalInputValue<ReservationConfig, Map<String, dynamic>>(reservationConfig, (value) => value.toMap()),
      'retentionConfig': ?pulumi.Input.mapOptionalInputValue<RetentionConfig, Map<String, dynamic>>(retentionConfig, (value) => value.toMap()),
      'topicId': topicId,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partitionConfig: map['partitionConfig'] == null ? null : (PartitionConfig.fromMap((map['partitionConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reservationConfig: map['reservationConfig'] == null ? null : (ReservationConfig.fromMap((map['reservationConfig']! as Map).cast<String, dynamic>())).input(),
      retentionConfig: map['retentionConfig'] == null ? null : (RetentionConfig.fromMap((map['retentionConfig']! as Map).cast<String, dynamic>())).input(),
      topicId: (map['topicId'] as String).input(),
    );
  }
}

