// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A list of values to filter by in ConditionalColumnSetValue
class ValueListFilterResponse {
  /// Whether to ignore case when filtering by values. Defaults to false
  final pulumi.Input<bool> ignoreCase;
  /// Indicates whether the filter matches rows with values that are present in the list or those with values not present in it.
  final pulumi.Input<String> valuePresentList;
  /// The list to be used to filter by
  final pulumi.Input<List<String>> values;

  /// Creates a new [ValueListFilterResponse].
  /// [ignoreCase] Whether to ignore case when filtering by values. Defaults to false
  /// [valuePresentList] Indicates whether the filter matches rows with values that are present in the list or those with values not present in it.
  /// [values] The list to be used to filter by
  ValueListFilterResponse({
    required this.ignoreCase,
    required this.valuePresentList,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ignoreCase,
      'valuePresentList': valuePresentList,
      'values': values,
    };
  }

  factory ValueListFilterResponse.fromMap(Map<String, dynamic> map) {
    return ValueListFilterResponse(
      ignoreCase: pulumi.Input.fromValue(map['ignoreCase'] as bool),
      valuePresentList: pulumi.Input.fromValue(map['valuePresentList'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

