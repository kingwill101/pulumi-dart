// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A securely stored value.
class SecretMetastoreV1beta {
  /// The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  final pulumi.Input<String>? cloudSecret;

  /// Creates a new [SecretMetastoreV1beta].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  const SecretMetastoreV1beta({
    this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSecret': ?cloudSecret,
    };
  }

  factory SecretMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return SecretMetastoreV1beta(
      cloudSecret: (() { final guardedValue = map['cloudSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

