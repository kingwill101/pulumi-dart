// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppTemplateContainerEnv {
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// The name of the secret that contains the value for this environment variable.
  final pulumi.Input<String> secretName;

  /// The HTTP Header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetAppTemplateContainerEnv].
  /// [name] The name of the Container App.
  /// [secretName] The name of the secret that contains the value for this environment variable.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerEnv({
    required this.name,
    required this.secretName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': secretName,
      'value': value,
    };
  }

  factory GetAppTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
