// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionServiceConfigSecretEnvironmentVariable {
  /// Name of the environment variable.
  final pulumi.Input<String> key;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final pulumi.Input<String> projectId;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final pulumi.Input<String> version;

  /// Creates a new [GetFunctionServiceConfigSecretEnvironmentVariable].
  /// [key] Name of the environment variable.
  /// [projectId] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [version] Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  GetFunctionServiceConfigSecretEnvironmentVariable({
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

  factory GetFunctionServiceConfigSecretEnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return GetFunctionServiceConfigSecretEnvironmentVariable(
      key: (map['key'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      secret: (map['secret'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

