// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.
class SecretEnvVarResponseCloudfunctionsV2beta {
  /// Name of the environment variable.
  final pulumi.Input<String> key;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final pulumi.Input<String> project;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final pulumi.Input<String> version;

  /// Creates a new [SecretEnvVarResponseCloudfunctionsV2beta].
  /// [key] Name of the environment variable.
  /// [project] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [version] Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  SecretEnvVarResponseCloudfunctionsV2beta({
    required this.key,
    required this.project,
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'project': project,
      'secret': secret,
      'version': version,
    };
  }

  factory SecretEnvVarResponseCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SecretEnvVarResponseCloudfunctionsV2beta(
      key: pulumi.Input.fromValue(map['key'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

