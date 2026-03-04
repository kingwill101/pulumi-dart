// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_range_partitioning_range.dart';

class TableRangePartitioning {
  /// The field used to determine how to create a range-based
  /// partition.
  final pulumi.Input<String> field;

  /// Information required to partition based on ranges.
  /// Structure is documented below.
  final pulumi.Input<TableRangePartitioningRange> range;

  /// Creates a new [TableRangePartitioning].
  /// [field] The field used to determine how to create a range-based
  /// [range] Information required to partition based on ranges.
  TableRangePartitioning({required this.field, required this.range});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'range':
          pulumi.Input.mapInputValue<
            TableRangePartitioningRange,
            Map<String, dynamic>
          >(range, (value) => value.toMap()),
    };
  }

  factory TableRangePartitioning.fromMap(Map<String, dynamic> map) {
    return TableRangePartitioning(
      field: pulumi.Input.fromValue(map['field'] as String),
      range: pulumi.Input.fromValue(
        TableRangePartitioningRange.fromMap(
          (map['range']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
