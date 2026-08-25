// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionalSecretVersionCustomerManagedEncryption {
  /// (Output)
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final pulumi.Input<String?>? kmsKeyVersionName;

  /// Creates a new [RegionalSecretVersionCustomerManagedEncryption].
  /// [kmsKeyVersionName] (Output)
  const RegionalSecretVersionCustomerManagedEncryption({
    this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyVersionName': ?kmsKeyVersionName,
    };
  }

  factory RegionalSecretVersionCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return RegionalSecretVersionCustomerManagedEncryption(
      kmsKeyVersionName: (() { final guardedValue = map['kmsKeyVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
