// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an environment variable present in a Container or Python Module.
class GoogleCloudAiplatformV1EnvVarResponse {
  /// Name of the environment variable. Must be a valid C identifier.
  final pulumi.Input<String> name;
  /// Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudAiplatformV1EnvVarResponse].
  /// [name] Name of the environment variable. Must be a valid C identifier.
  /// [value] Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  GoogleCloudAiplatformV1EnvVarResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GoogleCloudAiplatformV1EnvVarResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1EnvVarResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

