// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSandboxTemplateEnv {
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;

  /// Creates a new [GetServiceTemplateSandboxTemplateEnv].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  const GetServiceTemplateSandboxTemplateEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetServiceTemplateSandboxTemplateEnv.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSandboxTemplateEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
