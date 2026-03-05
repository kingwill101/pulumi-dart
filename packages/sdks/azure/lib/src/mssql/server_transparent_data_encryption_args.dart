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
  /// &gt; **Note:** In order to use customer managed keys, the identity of the MSSQL server must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// &gt; **Note:** If `server_id` denotes a secondary server deployed for disaster recovery purposes, then the `key_vault_key_id` should be the same key used for the primary server's transparent data encryption. Both primary and secondary servers should be encrypted with same key material.
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
    this.autoRotationEnabled,
    this.keyVaultKeyId,
    this.managedHsmKeyId,
    required this.serverId,
  });

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
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
    );
  }
}

