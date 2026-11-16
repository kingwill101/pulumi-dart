// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveTableStorageDescriptorSortCol {
  /// The column name.
  final pulumi.Input<String> col;
  /// Sort order: 1 for Ascending, 0 for Descending.
  final pulumi.Input<int> order;

  /// Creates a new [HiveTableStorageDescriptorSortCol].
  /// [col] The column name.
  /// [order] Sort order: 1 for Ascending, 0 for Descending.
  const HiveTableStorageDescriptorSortCol({
    required this.col,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'col': col,
      'order': order,
    };
  }

  factory HiveTableStorageDescriptorSortCol.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorSortCol(
      col: pulumi.Input.fromValue(map['col'] as String),
      order: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['order'])),
    );
  }
}
