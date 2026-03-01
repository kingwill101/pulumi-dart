// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionScope resources.
class EncryptionScopeState {
  /// Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionRequired;
  /// The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String>? name;
  /// The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  final pulumi.Input<String>? source;
  /// The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [EncryptionScopeState].
  /// [infrastructureEncryptionRequired] Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  /// [name] The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  /// [source] The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  /// [storageAccountId] The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  EncryptionScopeState({
    pulumi.Output<bool>? infrastructureEncryptionRequired,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? source,
    pulumi.Output<String>? storageAccountId,
  }) :
      infrastructureEncryptionRequired = pulumi.Input.asOptionalInput<bool>(infrastructureEncryptionRequired),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      source = pulumi.Input.asOptionalInput<String>(source),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

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
      infrastructureEncryptionRequired: map['infrastructureEncryptionRequired'] == null ? null : pulumi.Output.create<bool>(map['infrastructureEncryptionRequired'] as bool),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

