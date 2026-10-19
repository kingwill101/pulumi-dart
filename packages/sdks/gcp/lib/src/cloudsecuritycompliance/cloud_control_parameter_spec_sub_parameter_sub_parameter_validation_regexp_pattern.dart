// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern {
  /// Regex Pattern to match the value(s) of parameter.
  final pulumi.Input<String> pattern;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern].
  /// [pattern] Regex Pattern to match the value(s) of parameter.
  const CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
