// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateContainerEnv {
  /// The name of the environment variable for the container.
  final pulumi.Input<String> name;
  /// The name of the secret that contains the value for this environment variable.
  final pulumi.Input<String?>? secretName;
  /// The value for this environment variable.
  ///
  /// &gt; **Note:** This value is ignored if `secretName` is used
  final pulumi.Input<String?>? value;

  /// Creates a new [AppTemplateContainerEnv].
  /// [name] The name of the environment variable for the container.
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [value] The value for this environment variable.
  const AppTemplateContainerEnv({
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

  factory AppTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
