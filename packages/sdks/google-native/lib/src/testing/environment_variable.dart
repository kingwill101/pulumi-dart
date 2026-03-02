// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A key-value pair passed as an environment variable to the test.
class EnvironmentVariable {
  /// Key for the environment variable.
  final pulumi.Input<String>? key;
  /// Value for the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariable].
  /// [key] Key for the environment variable.
  /// [value] Value for the environment variable.
  EnvironmentVariable({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

