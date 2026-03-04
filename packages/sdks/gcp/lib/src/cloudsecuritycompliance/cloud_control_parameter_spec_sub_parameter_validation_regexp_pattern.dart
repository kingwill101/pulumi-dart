// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterValidationRegexpPattern {
  /// Regex Pattern to match the value(s) of parameter.
  final pulumi.Input<String> pattern;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationRegexpPattern].
  /// [pattern] Regex Pattern to match the value(s) of parameter.
  CloudControlParameterSpecSubParameterValidationRegexpPattern({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pattern': pattern};
  }

  factory CloudControlParameterSpecSubParameterValidationRegexpPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterValidationRegexpPattern(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
