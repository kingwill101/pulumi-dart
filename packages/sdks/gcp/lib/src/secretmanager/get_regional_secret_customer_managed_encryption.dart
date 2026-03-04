// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [GetRegionalSecretCustomerManagedEncryption].
  /// [kmsKeyName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  GetRegionalSecretCustomerManagedEncryption({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetRegionalSecretCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionalSecretCustomerManagedEncryption(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
