// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretReplicationUserManagedReplicaCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [SecretReplicationUserManagedReplicaCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  SecretReplicationUserManagedReplicaCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory SecretReplicationUserManagedReplicaCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecretReplicationUserManagedReplicaCustomerManagedEncryption(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
