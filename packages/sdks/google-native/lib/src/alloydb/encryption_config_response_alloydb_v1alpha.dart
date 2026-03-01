// ignore_for_file: unused_element, unnecessary_cast


/// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
class EncryptionConfigResponseAlloydbV1alpha {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final String kmsKeyName;

  /// Creates a new [EncryptionConfigResponseAlloydbV1alpha].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  EncryptionConfigResponseAlloydbV1alpha({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory EncryptionConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponseAlloydbV1alpha(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

