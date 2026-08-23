// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the service.
class EncryptionConfigResponseMetastoreV1alpha {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [EncryptionConfigResponseMetastoreV1alpha].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  const EncryptionConfigResponseMetastoreV1alpha({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory EncryptionConfigResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponseMetastoreV1alpha(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
