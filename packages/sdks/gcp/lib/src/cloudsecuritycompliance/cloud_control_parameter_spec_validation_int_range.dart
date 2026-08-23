// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecValidationIntRange {
  /// Maximum allowed value for the numeric parameter (inclusive).
  final pulumi.Input<String> max;
  /// Minimum allowed value for the numeric parameter (inclusive).
  final pulumi.Input<String> min;

  /// Creates a new [CloudControlParameterSpecValidationIntRange].
  /// [max] Maximum allowed value for the numeric parameter (inclusive).
  /// [min] Minimum allowed value for the numeric parameter (inclusive).
  const CloudControlParameterSpecValidationIntRange({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory CloudControlParameterSpecValidationIntRange.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationIntRange(
      max: pulumi.Input.fromValue(map['max'] as String),
      min: pulumi.Input.fromValue(map['min'] as String),
    );
  }
}
