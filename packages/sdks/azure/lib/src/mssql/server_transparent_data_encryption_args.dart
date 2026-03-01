// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_server_transparent_data_encryption_server_transparent_data_encryption_args_doc}
/// The set of arguments for ServerTransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_mssql_server_transparent_data_encryption_server_transparent_data_encryption_args_doc}
class ServerTransparentDataEncryptionArgs {
  /// When enabled, the server will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the server will be automatically rotated to the latest key version within 60 minutes.
  final pulumi.Input<bool>? autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// > **Note:** In order to use customer managed keys, the identity of the MSSQL server must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// > **Note:** If `server_id` denotes a secondary server deployed for disaster recovery purposes, then the `key_vault_key_id` should be the same key used for the primary server's transparent data encryption. Both primary and secondary servers should be encrypted with same key material.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;

  /// Creates a new [ServerTransparentDataEncryptionArgs].
  /// [autoRotationEnabled] When enabled, the server will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the server will be automatically rotated to the latest key version within 60 minutes.
  /// [keyVaultKeyId] To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  /// [managedHsmKeyId] Optional.
  /// [serverId] Specifies the name of the MS SQL Server. Changing this forces a new resource to be created.
  ServerTransparentDataEncryptionArgs({
    pulumi.Output<bool>? autoRotationEnabled,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? managedHsmKeyId,
    required pulumi.Output<String> serverId,
  }) :
      autoRotationEnabled = pulumi.Input.asOptionalInput<bool>(autoRotationEnabled),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      serverId = pulumi.Input.asInput<String>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
      'serverId': serverId,
    };
  }

  factory ServerTransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return ServerTransparentDataEncryptionArgs(
      autoRotationEnabled: map['autoRotationEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoRotationEnabled'] as bool),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      serverId: pulumi.Output.create<String>(map['serverId'] as String),
    );
  }
}

