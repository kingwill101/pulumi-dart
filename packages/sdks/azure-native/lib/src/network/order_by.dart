// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a column to sort
class OrderBy {
  /// Describes the actual column name to sort by
  final pulumi.Input<String>? field;
  /// Describes if results should be in ascending/descending order
  final pulumi.Input<String>? order;

  /// Creates a new [OrderBy].
  /// [field] Describes the actual column name to sort by
  /// [order] Describes if results should be in ascending/descending order
  const OrderBy({
    this.field,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'order': ?order,
    };
  }

  factory OrderBy.fromMap(Map<String, dynamic> map) {
    return OrderBy(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

