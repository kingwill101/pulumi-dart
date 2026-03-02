// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pairs a secret environment variable with a SecretVersion in Secret Manager.
class SecretManagerSecret {
  /// Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.
  final pulumi.Input<String>? env;
  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final pulumi.Input<String>? versionName;

  /// Creates a new [SecretManagerSecret].
  /// [env] Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.
  /// [versionName] Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  SecretManagerSecret({
    this.env,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': ?env,
      'versionName': ?versionName,
    };
  }

  factory SecretManagerSecret.fromMap(Map<String, dynamic> map) {
    return SecretManagerSecret(
      env: map['env'] == null ? null : (map['env']! as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName']! as String).input(),
    );
  }
}

