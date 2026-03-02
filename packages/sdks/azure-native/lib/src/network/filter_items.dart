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
  FilterItems({
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
      field: map['field'] == null ? null : (map['field']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

