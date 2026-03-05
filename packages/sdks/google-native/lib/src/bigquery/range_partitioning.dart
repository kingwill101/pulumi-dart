// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'range_partitioning_range.dart';

class RangePartitioning {
  /// [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  final pulumi.Input<String>? field;
  /// [TrustedTester] [Required] Defines the ranges for range partitioning.
  final pulumi.Input<RangePartitioningRange>? range;

  /// Creates a new [RangePartitioning].
  /// [field] [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  /// [range] [TrustedTester] [Required] Defines the ranges for range partitioning.
  RangePartitioning({
    this.field,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'range': ?pulumi.Input.mapOptionalInputValue<RangePartitioningRange, Map<String, dynamic>>(range, (value) => value.toMap()),
    };
  }

  factory RangePartitioning.fromMap(Map<String, dynamic> map) {
    return RangePartitioning(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RangePartitioningRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

