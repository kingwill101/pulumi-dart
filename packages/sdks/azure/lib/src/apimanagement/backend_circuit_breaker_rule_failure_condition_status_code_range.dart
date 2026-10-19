// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendCircuitBreakerRuleFailureConditionStatusCodeRange {
  /// Specifies the maximum HTTP status code to consider as a failure. Possible values are between `200` and `599`.
  final pulumi.Input<int> max;
  /// Specifies the minimum HTTP status code to consider as a failure. Possible values are between `200` and `599`.
  final pulumi.Input<int> min;

  /// Creates a new [BackendCircuitBreakerRuleFailureConditionStatusCodeRange].
  /// [max] Specifies the maximum HTTP status code to consider as a failure. Possible values are between `200` and `599`.
  /// [min] Specifies the minimum HTTP status code to consider as a failure. Possible values are between `200` and `599`.
  const BackendCircuitBreakerRuleFailureConditionStatusCodeRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory BackendCircuitBreakerRuleFailureConditionStatusCodeRange.fromMap(Map<String, dynamic> map) {
    return BackendCircuitBreakerRuleFailureConditionStatusCodeRange(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}
