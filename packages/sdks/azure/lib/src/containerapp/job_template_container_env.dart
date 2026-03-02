// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateContainerEnv {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final pulumi.Input<String>? secretName;
  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [JobTemplateContainerEnv].
  /// [name] The name of the environment variable.
  /// [secretName] Name of the Container App secret from which to pull the environment variable value.
  /// [value] The value of the environment variable.
  JobTemplateContainerEnv({
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
      name: (map['name'] as String).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

