// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateTemplateSandboxesTemplateEnv {
  /// Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String?>? value;

  /// Creates a new [JobTemplateTemplateSandboxesTemplateEnv].
  /// [name] Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  const JobTemplateTemplateSandboxesTemplateEnv({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory JobTemplateTemplateSandboxesTemplateEnv.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateSandboxesTemplateEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
