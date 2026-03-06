// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_comparison_filter_value_comparison.dart';

/// Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue
class IntComparisonFilter {
  /// Integer compare value to be used
  final pulumi.Input<String> value;
  /// Relation between source value and compare value
  final pulumi.Input<IntComparisonFilterValueComparison> valueComparison;

  /// Creates a new [IntComparisonFilter].
  /// [value] Integer compare value to be used
  /// [valueComparison] Relation between source value and compare value
  const IntComparisonFilter({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': pulumi.Input.mapInputValue<IntComparisonFilterValueComparison, String>(valueComparison, (value) => value.wireValue),
    };
  }

  factory IntComparisonFilter.fromMap(Map<String, dynamic> map) {
    return IntComparisonFilter(
      value: pulumi.Input.fromValue(map['value'] as String),
      valueComparison: pulumi.Input.fromValue(IntComparisonFilterValueComparison.fromValue(map['valueComparison']! as String)),
    );
  }
}

