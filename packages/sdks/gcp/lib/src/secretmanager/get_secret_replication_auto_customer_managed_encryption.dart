// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretReplicationAutoCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [GetSecretReplicationAutoCustomerManagedEncryption].
  /// [kmsKeyName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  GetSecretReplicationAutoCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GetSecretReplicationAutoCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationAutoCustomerManagedEncryption(
      kmsKeyName: (map['kmsKeyName'] as String).input(),
    );
  }
}

