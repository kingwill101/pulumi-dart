// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationAccountCertificateKeyVaultKey {
  /// The name of Key Vault Key.
  final pulumi.Input<String> keyName;
  /// The ID of the Key Vault.
  final pulumi.Input<String> keyVaultId;
  /// The version of Key Vault Key.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [IntegrationAccountCertificateKeyVaultKey].
  /// [keyName] The name of Key Vault Key.
  /// [keyVaultId] The ID of the Key Vault.
  /// [keyVersion] The version of Key Vault Key.
  IntegrationAccountCertificateKeyVaultKey({
    required this.keyName,
    required this.keyVaultId,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultId': keyVaultId,
      'keyVersion': ?keyVersion,
    };
  }

  factory IntegrationAccountCertificateKeyVaultKey.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountCertificateKeyVaultKey(
      keyName: (map['keyName'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion'] as String).input(),
    );
  }
}

