// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_partitioning_type.dart';

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  final pulumi.Input<String>? expirationMs;
  /// Type of partitioning.
  final pulumi.Input<TimePartitioningType>? type;

  /// Creates a new [TimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  const TimePartitioning({
    this.expirationMs,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'type': ?pulumi.Input.mapOptionalInputValue<TimePartitioningType, String>(type, (value) => value.wireValue),
    };
  }

  factory TimePartitioning.fromMap(Map<String, dynamic> map) {
    return TimePartitioning(
      expirationMs: (() { final guardedValue = map['expirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimePartitioningType.fromValue(guardedValue as String)); })(),
    );
  }
}

