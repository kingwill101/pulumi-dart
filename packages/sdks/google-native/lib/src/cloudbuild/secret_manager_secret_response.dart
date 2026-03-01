// ignore_for_file: unused_element, unnecessary_cast


/// Pairs a secret environment variable with a SecretVersion in Secret Manager.
class SecretManagerSecretResponse {
  /// Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.
  final String env;
  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final String versionName;

  /// Creates a new [SecretManagerSecretResponse].
  /// [env] Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.
  /// [versionName] Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  SecretManagerSecretResponse({
    required this.env,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': env,
      'versionName': versionName,
    };
  }

  factory SecretManagerSecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretManagerSecretResponse(
      env: map['env'] as String,
      versionName: map['versionName'] as String,
    );
  }
}

