// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretVersionCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final pulumi.Input<String> kmsKeyVersionName;

  /// Creates a new [GetRegionalSecretVersionCustomerManagedEncryption].
  /// [kmsKeyVersionName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  GetRegionalSecretVersionCustomerManagedEncryption({
    required this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyVersionName': kmsKeyVersionName,
    };
  }

  factory GetRegionalSecretVersionCustomerManagedEncryption.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionCustomerManagedEncryption(
      kmsKeyVersionName: pulumi.Input.fromValue(map['kmsKeyVersionName'] as String),
    );
  }
}

