// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionalSecretCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [RegionalSecretCustomerManagedEncryption].
  /// [kmsKeyName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  const RegionalSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory RegionalSecretCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return RegionalSecretCustomerManagedEncryption(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
