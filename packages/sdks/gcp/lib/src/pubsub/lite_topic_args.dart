// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_topic_partition_config.dart';
import 'lite_topic_reservation_config.dart';
import 'lite_topic_retention_config.dart';

/// {@template pulumi_pubsub_lite_topic_lite_topic_args_doc}
/// The set of arguments for LiteTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_topic_lite_topic_args_doc}
class LiteTopicArgs {
  /// Name of the topic.
  final pulumi.Input<String>? name;
  /// The settings for this topic's partitions.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicPartitionConfig>? partitionConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the pubsub lite topic.
  final pulumi.Input<String>? region;
  /// The settings for this topic's Reservation usage.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicReservationConfig>? reservationConfig;
  /// The settings for a topic's message retention.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicRetentionConfig>? retentionConfig;
  /// The zone of the pubsub lite topic.
  final pulumi.Input<String>? zone;

  /// Creates a new [LiteTopicArgs].
  /// [name] Name of the topic.
  /// [partitionConfig] The settings for this topic's partitions.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite topic.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for a topic's message retention.
  /// [zone] The zone of the pubsub lite topic.
  const LiteTopicArgs({
    this.name,
    this.partitionConfig,
    this.project,
    this.region,
    this.reservationConfig,
    this.retentionConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'partitionConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicPartitionConfig, Map<String, dynamic>>(partitionConfig, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'reservationConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicReservationConfig, Map<String, dynamic>>(reservationConfig, (value) => value.toMap()),
      'retentionConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicRetentionConfig, Map<String, dynamic>>(retentionConfig, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory LiteTopicArgs.fromMap(Map<String, dynamic> map) {
    return LiteTopicArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionConfig: (() { final guardedValue = map['partitionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiteTopicPartitionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationConfig: (() { final guardedValue = map['reservationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiteTopicReservationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionConfig: (() { final guardedValue = map['retentionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiteTopicRetentionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

