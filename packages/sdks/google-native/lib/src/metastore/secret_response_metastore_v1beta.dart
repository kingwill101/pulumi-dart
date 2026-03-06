// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A securely stored value.
class SecretResponseMetastoreV1beta {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final pulumi.Input<String> cloudSecret;

  /// Creates a new [SecretResponseMetastoreV1beta].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  const SecretResponseMetastoreV1beta({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSecret': cloudSecret,
    };
  }

  factory SecretResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return SecretResponseMetastoreV1beta(
      cloudSecret: pulumi.Input.fromValue(map['cloudSecret'] as String),
    );
  }
}

