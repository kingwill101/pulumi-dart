// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateSandboxTemplateEnv {
  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;

  /// Creates a new [GetWorkerPoolTemplateSandboxTemplateEnv].
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  const GetWorkerPoolTemplateSandboxTemplateEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetWorkerPoolTemplateSandboxTemplateEnv.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateSandboxTemplateEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
