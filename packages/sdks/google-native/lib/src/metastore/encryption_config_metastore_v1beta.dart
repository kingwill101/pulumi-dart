// ignore_for_file: unused_element, unnecessary_cast


/// Encryption settings for the service.
class EncryptionConfigMetastoreV1beta {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  final String? kmsKey;

  /// Creates a new [EncryptionConfigMetastoreV1beta].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  EncryptionConfigMetastoreV1beta({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory EncryptionConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigMetastoreV1beta(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}

