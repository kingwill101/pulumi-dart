// ignore_for_file: unused_element, unnecessary_cast


class SecretReplicationAutoCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  /// Creates a new [SecretReplicationAutoCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  SecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory SecretReplicationAutoCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return SecretReplicationAutoCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

