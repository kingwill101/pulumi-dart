// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariableResponse {
  /// Key for the environment variable.
  final pulumi.Input<String> key;

  /// Value for the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [key] Key for the environment variable.
  /// [value] Value for the environment variable.
  EnvironmentVariableResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
