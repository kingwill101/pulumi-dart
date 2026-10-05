// ignore_for_file: unused_element, unnecessary_cast

import 'partition_config_response.dart';
import 'reservation_config_response.dart';
import 'retention_config_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final String? name;
  /// The settings for this topic's partitions.
  final PartitionConfigResponse? partitionConfig;
  /// The settings for this topic's Reservation usage.
  final ReservationConfigResponse? reservationConfig;
  /// The settings for this topic's message retention.
  final RetentionConfigResponse? retentionConfig;

  /// Creates a new [GetTopicResult].
  /// [name] The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  /// [partitionConfig] The settings for this topic's partitions.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for this topic's message retention.
  const GetTopicResult({
    this.name,
    this.partitionConfig,
    this.reservationConfig,
    this.retentionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'partitionConfig': ?partitionConfig?.toMap(),
      'reservationConfig': ?reservationConfig?.toMap(),
      'retentionConfig': ?retentionConfig?.toMap(),
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionConfig: (() { final guardedValue = map['partitionConfig']; if (guardedValue == null) return null; return PartitionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reservationConfig: (() { final guardedValue = map['reservationConfig']; if (guardedValue == null) return null; return ReservationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      retentionConfig: (() { final guardedValue = map['retentionConfig']; if (guardedValue == null) return null; return RetentionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
