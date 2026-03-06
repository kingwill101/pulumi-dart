// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_managed_instance_transparent_data_encryption_managed_instance_transparent_data_encryption_args_doc}
/// The set of arguments for ManagedInstanceTransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_mssql_managed_instance_transparent_data_encryption_managed_instance_transparent_data_encryption_args_doc}
class ManagedInstanceTransparentDataEncryptionArgs {
  /// When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  final pulumi.Input<bool>? autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// &gt; **Note:** In order to use customer managed keys, the identity of the MSSQL Managed Instance must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// &gt; **Note:** If `managed_instance_id` denotes a secondary instance deployed for disaster recovery purposes, then the `key_vault_key_id` should be the same key used for the primary instance's transparent data encryption. Both primary and secondary instances should be encrypted with same key material.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedInstanceId;

  /// Creates a new [ManagedInstanceTransparentDataEncryptionArgs].
  /// [autoRotationEnabled] When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  /// [keyVaultKeyId] To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  /// [managedHsmKeyId] Optional.
  /// [managedInstanceId] Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  const ManagedInstanceTransparentDataEncryptionArgs({
    this.autoRotationEnabled,
    this.keyVaultKeyId,
    this.managedHsmKeyId,
    required this.managedInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
      'managedInstanceId': managedInstanceId,
    };
  }

  factory ManagedInstanceTransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceTransparentDataEncryptionArgs(
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: pulumi.Input.fromValue(map['managedInstanceId'] as String),
    );
  }
}

