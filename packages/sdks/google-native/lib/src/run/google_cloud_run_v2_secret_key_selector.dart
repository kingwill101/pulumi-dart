// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SecretEnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2SecretKeySelector {
  /// The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is in the same project. projects/{project}/secrets/{secret_name} if the secret is in a different project.
  final pulumi.Input<String> secret;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias.
  final pulumi.Input<String>? version;

  /// Creates a new [GoogleCloudRunV2SecretKeySelector].
  /// [secret] The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is in the same project. projects/{project}/secrets/{secret_name} if the secret is in a different project.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias.
  const GoogleCloudRunV2SecretKeySelector({
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'version': ?version,
    };
  }

  factory GoogleCloudRunV2SecretKeySelector.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2SecretKeySelector(
      secret: pulumi.Input.fromValue(map['secret'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

