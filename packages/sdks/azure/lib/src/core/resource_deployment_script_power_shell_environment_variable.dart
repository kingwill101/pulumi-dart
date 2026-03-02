// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDeploymentScriptPowerShellEnvironmentVariable {
  /// Specifies the name of the environment variable.
  final pulumi.Input<String> name;
  /// Specifies the value of the secure environment variable.
  final pulumi.Input<String>? secureValue;
  /// Specifies the value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceDeploymentScriptPowerShellEnvironmentVariable].
  /// [name] Specifies the name of the environment variable.
  /// [secureValue] Specifies the value of the secure environment variable.
  /// [value] Specifies the value of the environment variable.
  ResourceDeploymentScriptPowerShellEnvironmentVariable({
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

  factory ResourceDeploymentScriptPowerShellEnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellEnvironmentVariable(
      name: (map['name'] as String).input(),
      secureValue: map['secureValue'] == null ? null : (map['secureValue'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

