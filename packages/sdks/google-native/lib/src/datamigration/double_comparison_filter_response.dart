// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue
class DoubleComparisonFilterResponse {
  /// Double compare value to be used
  final pulumi.Input<double> value;
  /// Relation between source value and compare value
  final pulumi.Input<String> valueComparison;

  /// Creates a new [DoubleComparisonFilterResponse].
  /// [value] Double compare value to be used
  /// [valueComparison] Relation between source value and compare value
  DoubleComparisonFilterResponse({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': valueComparison,
    };
  }

  factory DoubleComparisonFilterResponse.fromMap(Map<String, dynamic> map) {
    return DoubleComparisonFilterResponse(
      value: pulumi.Input.fromValue(map['value'] as double),
      valueComparison: pulumi.Input.fromValue(map['valueComparison'] as String),
    );
  }
}

