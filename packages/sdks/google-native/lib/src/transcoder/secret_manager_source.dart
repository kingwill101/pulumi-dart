// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for secrets stored in Google Secret Manager.
class SecretManagerSource {
  /// The name of the Secret Version containing the encryption key in the following format: `projects/{project}/secrets/{secret_id}/versions/{version_number}` Note that only numbered versions are supported. Aliases like "latest" are not supported.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [SecretManagerSource].
  /// [secretVersion] The name of the Secret Version containing the encryption key in the following format: `projects/{project}/secrets/{secret_id}/versions/{version_number}` Note that only numbered versions are supported. Aliases like "latest" are not supported.
  SecretManagerSource({required this.secretVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory SecretManagerSource.fromMap(Map<String, dynamic> map) {
    return SecretManagerSource(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
