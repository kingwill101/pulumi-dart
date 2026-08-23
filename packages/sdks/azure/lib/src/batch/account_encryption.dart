// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountEncryption {
  /// The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [AccountEncryption].
  /// [keyVaultKeyId] The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported.
  const AccountEncryption({
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}
