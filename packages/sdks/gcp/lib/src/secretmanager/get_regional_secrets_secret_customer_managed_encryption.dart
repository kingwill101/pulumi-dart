// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretsSecretCustomerManagedEncryption {
  /// Describes the Cloud KMS encryption key that will be used to protect destination secret.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [GetRegionalSecretsSecretCustomerManagedEncryption].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination secret.
  GetRegionalSecretsSecretCustomerManagedEncryption({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetRegionalSecretsSecretCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionalSecretsSecretCustomerManagedEncryption(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
