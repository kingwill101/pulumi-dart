// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_partitioning_type_healthcare_v1beta1.dart';

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioningHealthcareV1beta1 {
  /// Number of milliseconds for which to keep the storage for a partition.
  final pulumi.Input<String>? expirationMs;

  /// Type of partitioning.
  final pulumi.Input<TimePartitioningTypeHealthcareV1beta1>? type;

  /// Creates a new [TimePartitioningHealthcareV1beta1].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  TimePartitioningHealthcareV1beta1({this.expirationMs, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            TimePartitioningTypeHealthcareV1beta1,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory TimePartitioningHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return TimePartitioningHealthcareV1beta1(
      expirationMs: (() {
        final guardedValue = map['expirationMs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TimePartitioningTypeHealthcareV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
