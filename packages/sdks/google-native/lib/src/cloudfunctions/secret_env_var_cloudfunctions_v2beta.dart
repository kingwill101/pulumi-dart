// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.
class SecretEnvVarCloudfunctionsV2beta {
  /// Name of the environment variable.
  final String? key;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final String? project;
  /// Name of the secret in secret manager (not the full resource name).
  final String? secret;
  /// Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  final String? version;

  /// Creates a new [SecretEnvVarCloudfunctionsV2beta].
  /// [key] Name of the environment variable.
  /// [project] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [version] Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.
  SecretEnvVarCloudfunctionsV2beta({
    this.key,
    this.project,
    this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'project': ?project,
      'secret': ?secret,
      'version': ?version,
    };
  }

  factory SecretEnvVarCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SecretEnvVarCloudfunctionsV2beta(
      key: map['key'] == null ? null : map['key'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

