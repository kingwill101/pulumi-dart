// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecValidationRegexpPattern {
  /// Regex Pattern to match the value(s) of parameter.
  final pulumi.Input<String> pattern;

  /// Creates a new [CloudControlParameterSpecValidationRegexpPattern].
  /// [pattern] Regex Pattern to match the value(s) of parameter.
  CloudControlParameterSpecValidationRegexpPattern({required this.pattern});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pattern': pattern};
  }

  factory CloudControlParameterSpecValidationRegexpPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationRegexpPattern(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
