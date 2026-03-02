// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_encryption_scope_encryption_scope_args_doc}
/// The set of arguments for EncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_storage_encryption_scope_encryption_scope_args_doc}
class EncryptionScopeArgs {
  /// Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionRequired;
  /// The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String>? name;
  /// The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  final pulumi.Input<String> source;
  /// The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [EncryptionScopeArgs].
  /// [infrastructureEncryptionRequired] Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  /// [name] The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  /// [source] The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  /// [storageAccountId] The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  EncryptionScopeArgs({
    this.infrastructureEncryptionRequired,
    this.keyVaultKeyId,
    this.name,
    required this.source,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryptionRequired': ?infrastructureEncryptionRequired,
      'keyVaultKeyId': ?keyVaultKeyId,
      'name': ?name,
      'source': source,
      'storageAccountId': storageAccountId,
    };
  }

  factory EncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeArgs(
      infrastructureEncryptionRequired: map['infrastructureEncryptionRequired'] == null ? null : (map['infrastructureEncryptionRequired'] as bool).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      source: (map['source'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

