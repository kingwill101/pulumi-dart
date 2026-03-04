// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A securely stored value.
class SecretResponse {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final pulumi.Input<String> cloudSecret;

  /// Creates a new [SecretResponse].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  SecretResponse({required this.cloudSecret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudSecret': cloudSecret};
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      cloudSecret: pulumi.Input.fromValue(map['cloudSecret'] as String),
    );
  }
}
