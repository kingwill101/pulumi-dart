// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationStoreEncryption {
  final pulumi.Input<String> identityClientId;
  final pulumi.Input<String> keyVaultKeyIdentifier;

  /// Creates a new [GetConfigurationStoreEncryption].
  /// [identityClientId] Required.
  /// [keyVaultKeyIdentifier] Required.
  GetConfigurationStoreEncryption({
    required this.identityClientId,
    required this.keyVaultKeyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'keyVaultKeyIdentifier': keyVaultKeyIdentifier,
    };
  }

  factory GetConfigurationStoreEncryption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreEncryption(
      identityClientId: (map['identityClientId'] as String).input(),
      keyVaultKeyIdentifier: (map['keyVaultKeyIdentifier'] as String).input(),
    );
  }
}

