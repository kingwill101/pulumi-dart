// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionScope resources.
class EncryptionScopeState {
  /// Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? infrastructureEncryptionRequired;
  /// The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  final pulumi.Input<String?>? keyVaultKeyId;
  /// The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String?>? name;
  /// The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  final pulumi.Input<String?>? source;
  /// The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String?>? storageAccountId;

  /// Creates a new [EncryptionScopeState].
  /// [infrastructureEncryptionRequired] Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  /// [name] The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  /// [source] The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  /// [storageAccountId] The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  const EncryptionScopeState({
    this.infrastructureEncryptionRequired,
    this.keyVaultKeyId,
    this.name,
    this.source,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionRequired': ?infrastructureEncryptionRequired,
      'keyVaultKeyId': ?keyVaultKeyId,
      'name': ?name,
      'source': ?source,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory EncryptionScopeState.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeState(
      infrastructureEncryptionRequired: (() { final guardedValue = map['infrastructureEncryptionRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
