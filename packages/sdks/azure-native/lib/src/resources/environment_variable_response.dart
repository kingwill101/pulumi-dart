// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The environment variable to pass to the script in the container instance.
class EnvironmentVariableResponse {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// The value of the secure environment variable.
  final pulumi.Input<String>? secureValue;
  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariableResponse].
  /// [name] The name of the environment variable.
  /// [secureValue] The value of the secure environment variable.
  /// [value] The value of the environment variable.
  EnvironmentVariableResponse({
    required this.name,
    this.secureValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'value': ?value,
    };
  }

  factory EnvironmentVariableResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariableResponse(
      name: (map['name'] as String).input(),
      secureValue: map['secureValue'] == null ? null : (map['secureValue']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

