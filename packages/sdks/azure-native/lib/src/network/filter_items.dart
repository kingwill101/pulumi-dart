// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Will contain the filter name and values to operate on
class FilterItems {
  /// The name of the field we would like to filter
  final pulumi.Input<String>? field;
  /// List of values to filter the current field by
  final pulumi.Input<List<String>>? values;

  /// Creates a new [FilterItems].
  /// [field] The name of the field we would like to filter
  /// [values] List of values to filter the current field by
  const FilterItems({
    this.field,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'values': ?values,
    };
  }

  factory FilterItems.fromMap(Map<String, dynamic> map) {
    return FilterItems(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

