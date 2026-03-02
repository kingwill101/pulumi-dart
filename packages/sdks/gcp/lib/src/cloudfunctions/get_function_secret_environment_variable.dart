// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionSecretEnvironmentVariable {
  /// Name of the environment variable.
  final pulumi.Input<String> key;
  /// Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  final pulumi.Input<String> projectId;
  /// ID of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// Version of the secret (version number or the string "latest"). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start.
  final pulumi.Input<String> version;

  /// Creates a new [GetFunctionSecretEnvironmentVariable].
  /// [key] Name of the environment variable.
  /// [projectId] Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  /// [secret] ID of the secret in secret manager (not the full resource name).
  /// [version] Version of the secret (version number or the string "latest"). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new clones start.
  GetFunctionSecretEnvironmentVariable({
    required this.key,
    required this.projectId,
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'projectId': projectId,
      'secret': secret,
      'version': version,
    };
  }

  factory GetFunctionSecretEnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return GetFunctionSecretEnvironmentVariable(
      key: (map['key'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      secret: (map['secret'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

