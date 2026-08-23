// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'double_comparison_filter_value_comparison.dart';

/// Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue
class DoubleComparisonFilter {
  /// Double compare value to be used
  final pulumi.Input<double> value;
  /// Relation between source value and compare value
  final pulumi.Input<DoubleComparisonFilterValueComparison> valueComparison;

  /// Creates a new [DoubleComparisonFilter].
  /// [value] Double compare value to be used
  /// [valueComparison] Relation between source value and compare value
  const DoubleComparisonFilter({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': pulumi.Input.mapInputValue<DoubleComparisonFilterValueComparison, String>(valueComparison, (value) => value.wireValue),
    };
  }

  factory DoubleComparisonFilter.fromMap(Map<String, dynamic> map) {
    return DoubleComparisonFilter(
      value: pulumi.Input.fromValue(map['value'] as double),
      valueComparison: pulumi.Input.fromValue(DoubleComparisonFilterValueComparison.fromValue(map['valueComparison']! as String)),
    );
  }
}
