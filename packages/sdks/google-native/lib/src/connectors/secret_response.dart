// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret provides a reference to entries in Secret Manager.
class SecretResponse {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [SecretResponse].
  /// [secretVersion] The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  SecretResponse({required this.secretVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
