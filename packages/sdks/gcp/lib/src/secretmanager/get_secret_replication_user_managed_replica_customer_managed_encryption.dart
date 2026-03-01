// ignore_for_file: unused_element, unnecessary_cast


class GetSecretReplicationUserManagedReplicaCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final String kmsKeyName;

  /// Creates a new [GetSecretReplicationUserManagedReplicaCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  GetSecretReplicationUserManagedReplicaCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GetSecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationUserManagedReplicaCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

