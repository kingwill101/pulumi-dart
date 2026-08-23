// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'range_partitioning_range_response.dart';

class RangePartitioningResponse {
  /// [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  final pulumi.Input<String> field;
  /// [TrustedTester] [Required] Defines the ranges for range partitioning.
  final pulumi.Input<RangePartitioningRangeResponse> range;

  /// Creates a new [RangePartitioningResponse].
  /// [field] [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  /// [range] [TrustedTester] [Required] Defines the ranges for range partitioning.
  const RangePartitioningResponse({
    required this.field,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'range': pulumi.Input.mapInputValue<RangePartitioningRangeResponse, Map<String, dynamic>>(range, (value) => value.toMap()),
    };
  }

  factory RangePartitioningResponse.fromMap(Map<String, dynamic> map) {
    return RangePartitioningResponse(
      field: pulumi.Input.fromValue(map['field'] as String),
      range: pulumi.Input.fromValue(RangePartitioningRangeResponse.fromMap((map['range']! as Map).cast<String, dynamic>())),
    );
  }
}
