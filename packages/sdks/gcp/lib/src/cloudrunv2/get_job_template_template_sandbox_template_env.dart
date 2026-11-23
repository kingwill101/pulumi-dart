// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateSandboxTemplateEnv {
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;

  /// Creates a new [GetJobTemplateTemplateSandboxTemplateEnv].
  /// [name] The name of the Cloud Run v2 Job.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  const GetJobTemplateTemplateSandboxTemplateEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetJobTemplateTemplateSandboxTemplateEnv.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateSandboxTemplateEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
