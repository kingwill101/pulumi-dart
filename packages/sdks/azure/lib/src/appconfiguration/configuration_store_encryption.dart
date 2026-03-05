// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationStoreEncryption {
  /// Specifies the client ID of the identity which will be used to access key vault.
  final pulumi.Input<String>? identityClientId;
  /// Specifies the URI of the key vault key used to encrypt data.
  final pulumi.Input<String>? keyVaultKeyIdentifier;

  /// Creates a new [ConfigurationStoreEncryption].
  /// [identityClientId] Specifies the client ID of the identity which will be used to access key vault.
  /// [keyVaultKeyIdentifier] Specifies the URI of the key vault key used to encrypt data.
  ConfigurationStoreEncryption({
    this.identityClientId,
    this.keyVaultKeyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyVaultKeyIdentifier': ?keyVaultKeyIdentifier,
    };
  }

  factory ConfigurationStoreEncryption.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreEncryption(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyIdentifier: (() { final guardedValue = map['keyVaultKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

