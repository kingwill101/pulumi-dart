// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sort_options_sort_order.dart';

class SortOptions {
  /// The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  final pulumi.Input<String>? operatorName;
  /// Ascending is the default sort order
  final pulumi.Input<SortOptionsSortOrder>? sortOrder;

  /// Creates a new [SortOptions].
  /// [operatorName] The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  /// [sortOrder] Ascending is the default sort order
  const SortOptions({
    this.operatorName,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorName': ?operatorName,
      'sortOrder': ?pulumi.Input.mapOptionalInputValue<SortOptionsSortOrder, String>(sortOrder, (value) => value.wireValue),
    };
  }

  factory SortOptions.fromMap(Map<String, dynamic> map) {
    return SortOptions(
      operatorName: (() { final guardedValue = map['operatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SortOptionsSortOrder.fromValue(guardedValue as String)); })(),
    );
  }
}
