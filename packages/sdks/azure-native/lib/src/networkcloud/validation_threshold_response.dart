// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ValidationThresholdResponse {
  /// Selection of how the type evaluation is applied to the cluster calculation.
  final pulumi.Input<String> grouping;
  /// Selection of how the threshold should be evaluated.
  final pulumi.Input<String> type;
  /// The numeric threshold value.
  final pulumi.Input<double> value;

  /// Creates a new [ValidationThresholdResponse].
  /// [grouping] Selection of how the type evaluation is applied to the cluster calculation.
  /// [type] Selection of how the threshold should be evaluated.
  /// [value] The numeric threshold value.
  const ValidationThresholdResponse({
    required this.grouping,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grouping': grouping,
      'type': type,
      'value': value,
    };
  }

  factory ValidationThresholdResponse.fromMap(Map<String, dynamic> map) {
    return ValidationThresholdResponse(
      grouping: pulumi.Input.fromValue(map['grouping'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

