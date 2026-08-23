// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_sort_order_field.dart';

class IcebergTableSortOrder {
  /// Structure is documented below.
  final pulumi.Input<List<IcebergTableSortOrderField>> fields;
  /// (Output)
  /// The unique identifier of the sort order.
  final pulumi.Input<int>? orderId;

  /// Creates a new [IcebergTableSortOrder].
  /// [fields] Structure is documented below.
  /// [orderId] (Output)
  const IcebergTableSortOrder({
    required this.fields,
    this.orderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<IcebergTableSortOrderField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<IcebergTableSortOrderField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orderId': ?orderId,
    };
  }

  factory IcebergTableSortOrder.fromMap(Map<String, dynamic> map) {
    return IcebergTableSortOrder(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergTableSortOrderField>(map['fields']!, (value) => IcebergTableSortOrderField.fromMap((value as Map).cast<String, dynamic>()))),
      orderId: (() { final guardedValue = map['orderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
