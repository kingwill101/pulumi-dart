// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentVariable {
  /// Environment variable name
  final pulumi.Input<String> name;
  /// The value of this environment variable must be the name of an AppSetting. The actual value of the environment variable in container will be retrieved from the specified AppSetting at runtime. If the AppSetting is not found, the value will be set to an empty string in the container at runtime.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentVariable].
  /// [name] Environment variable name
  /// [value] The value of this environment variable must be the name of an AppSetting. The actual value of the environment variable in container will be retrieved from the specified AppSetting at runtime. If the AppSetting is not found, the value will be set to an empty string in the container at runtime.
  const EnvironmentVariable({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
