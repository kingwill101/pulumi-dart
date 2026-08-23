// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioningResponseHealthcareV1beta1 {
  /// Number of milliseconds for which to keep the storage for a partition.
  final pulumi.Input<String> expirationMs;
  /// Type of partitioning.
  final pulumi.Input<String> type;

  /// Creates a new [TimePartitioningResponseHealthcareV1beta1].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  const TimePartitioningResponseHealthcareV1beta1({
    required this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': expirationMs,
      'type': type,
    };
  }

  factory TimePartitioningResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TimePartitioningResponseHealthcareV1beta1(
      expirationMs: pulumi.Input.fromValue(map['expirationMs'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
