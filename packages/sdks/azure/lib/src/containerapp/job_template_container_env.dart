// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateContainerEnv {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final pulumi.Input<String?>? secretName;
  /// The value of the environment variable.
  final pulumi.Input<String?>? value;

  /// Creates a new [JobTemplateContainerEnv].
  /// [name] The name of the environment variable.
  /// [secretName] Name of the Container App secret from which to pull the environment variable value.
  /// [value] The value of the environment variable.
  const JobTemplateContainerEnv({
    required this.name,
    this.secretName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': ?secretName,
      'value': ?value,
    };
  }

  factory JobTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
