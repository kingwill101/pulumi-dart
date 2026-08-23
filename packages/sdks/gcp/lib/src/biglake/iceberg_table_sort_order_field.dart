// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergTableSortOrderField {
  /// The sort direction for the sort field. Possible values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// The null ordering for the sort field. Possible values: "nulls-first", "nulls-last".
  final pulumi.Input<String> nullOrder;
  /// The source field ID for the sort field.
  final pulumi.Input<int> sourceId;
  /// The transform to apply to the source field.
  final pulumi.Input<String> transform;

  /// Creates a new [IcebergTableSortOrderField].
  /// [direction] The sort direction for the sort field. Possible values: "asc", "desc".
  /// [nullOrder] The null ordering for the sort field. Possible values: "nulls-first", "nulls-last".
  /// [sourceId] The source field ID for the sort field.
  /// [transform] The transform to apply to the source field.
  const IcebergTableSortOrderField({
    required this.direction,
    required this.nullOrder,
    required this.sourceId,
    required this.transform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'nullOrder': nullOrder,
      'sourceId': sourceId,
      'transform': transform,
    };
  }

  factory IcebergTableSortOrderField.fromMap(Map<String, dynamic> map) {
    return IcebergTableSortOrderField(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      nullOrder: pulumi.Input.fromValue(map['nullOrder'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as int),
      transform: pulumi.Input.fromValue(map['transform'] as String),
    );
  }
}
