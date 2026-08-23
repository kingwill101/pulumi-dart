// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue
class IntComparisonFilterResponse {
  /// Integer compare value to be used
  final pulumi.Input<String> value;
  /// Relation between source value and compare value
  final pulumi.Input<String> valueComparison;

  /// Creates a new [IntComparisonFilterResponse].
  /// [value] Integer compare value to be used
  /// [valueComparison] Relation between source value and compare value
  const IntComparisonFilterResponse({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': valueComparison,
    };
  }

  factory IntComparisonFilterResponse.fromMap(Map<String, dynamic> map) {
    return IntComparisonFilterResponse(
      value: pulumi.Input.fromValue(map['value'] as String),
      valueComparison: pulumi.Input.fromValue(map['valueComparison'] as String),
    );
  }
}
