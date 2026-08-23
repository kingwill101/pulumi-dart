// ignore_for_file: unused_element, unnecessary_cast

import 'partition_config_response.dart';
import 'reservation_config_response.dart';
import 'retention_config_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final String name;
  /// The settings for this topic's partitions.
  final PartitionConfigResponse partitionConfig;
  /// The settings for this topic's Reservation usage.
  final ReservationConfigResponse reservationConfig;
  /// The settings for this topic's message retention.
  final RetentionConfigResponse retentionConfig;

  /// Creates a new [GetTopicResult].
  /// [name] The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  /// [partitionConfig] The settings for this topic's partitions.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for this topic's message retention.
  const GetTopicResult({
    required this.name,
    required this.partitionConfig,
    required this.reservationConfig,
    required this.retentionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partitionConfig': partitionConfig.toMap(),
      'reservationConfig': reservationConfig.toMap(),
      'retentionConfig': retentionConfig.toMap(),
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      name: map['name'] as String,
      partitionConfig: PartitionConfigResponse.fromMap((map['partitionConfig']! as Map).cast<String, dynamic>()),
      reservationConfig: ReservationConfigResponse.fromMap((map['reservationConfig']! as Map).cast<String, dynamic>()),
      retentionConfig: RetentionConfigResponse.fromMap((map['retentionConfig']! as Map).cast<String, dynamic>()),
    );
  }
}
