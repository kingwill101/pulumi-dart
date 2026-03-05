// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateInitContainerEnv {
  /// The name of the environment variable for the container.
  final pulumi.Input<String> name;
  /// The name of the secret that contains the value for this environment variable.
  final pulumi.Input<String>? secretName;
  /// The value for this environment variable.
  ///
  /// &gt; **Note:** This value is ignored if `secret_name` is used
  final pulumi.Input<String>? value;

  /// Creates a new [AppTemplateInitContainerEnv].
  /// [name] The name of the environment variable for the container.
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [value] The value for this environment variable.
  AppTemplateInitContainerEnv({
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

  factory AppTemplateInitContainerEnv.fromMap(Map<String, dynamic> map) {
    return AppTemplateInitContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

