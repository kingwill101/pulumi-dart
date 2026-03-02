// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_scope_key_vault_properties.dart';

/// {@template pulumi_storage_encryption_scope_args_doc}
/// The set of arguments for EncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_storage_encryption_scope_args_doc}
class EncryptionScopeArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String>? encryptionScopeName;
  /// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
  final pulumi.Input<EncryptionScopeKeyVaultProperties>? keyVaultProperties;
  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  final pulumi.Input<bool>? requireInfrastructureEncryption;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
  final pulumi.Input<String>? source;
  /// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
  final pulumi.Input<String>? state;

  /// Creates a new [EncryptionScopeArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [encryptionScopeName] The name of the encryption scope within the specified storage account. Encryption scope names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [keyVaultProperties] The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
  /// [requireInfrastructureEncryption] A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [source] The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
  /// [state] The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
  EncryptionScopeArgs({
    required this.accountName,
    this.encryptionScopeName,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
    required this.resourceGroupName,
    this.source,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'encryptionScopeName': ?encryptionScopeName,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionScopeKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'state': ?state,
    };
  }

  factory EncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeArgs(
      accountName: (map['accountName'] as String).input(),
      encryptionScopeName: map['encryptionScopeName'] == null ? null : (map['encryptionScopeName']! as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (EncryptionScopeKeyVaultProperties.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : (map['requireInfrastructureEncryption']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

