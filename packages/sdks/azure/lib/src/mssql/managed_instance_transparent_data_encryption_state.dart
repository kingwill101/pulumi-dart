// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedInstanceTransparentDataEncryption resources.
class ManagedInstanceTransparentDataEncryptionState {
  /// When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  final pulumi.Input<bool>? autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// > **Note:** In order to use customer managed keys, the identity of the MSSQL Managed Instance must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// > **Note:** If `managed_instance_id` denotes a secondary instance deployed for disaster recovery purposes, then the `key_vault_key_id` should be the same key used for the primary instance's transparent data encryption. Both primary and secondary instances should be encrypted with same key material.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceId;

  /// Creates a new [ManagedInstanceTransparentDataEncryptionState].
  /// [autoRotationEnabled] When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  /// [keyVaultKeyId] To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  /// [managedHsmKeyId] Optional.
  /// [managedInstanceId] Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  ManagedInstanceTransparentDataEncryptionState({
    this.autoRotationEnabled,
    this.keyVaultKeyId,
    this.managedHsmKeyId,
    this.managedInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
      'managedInstanceId': ?managedInstanceId,
    };
  }

  factory ManagedInstanceTransparentDataEncryptionState.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceTransparentDataEncryptionState(
      autoRotationEnabled: map['autoRotationEnabled'] == null ? null : (map['autoRotationEnabled'] as bool).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId'] as String).input(),
      managedInstanceId: map['managedInstanceId'] == null ? null : (map['managedInstanceId'] as String).input(),
    );
  }
}

