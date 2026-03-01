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
    pulumi.Output<bool>? autoRotationEnabled,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? managedHsmKeyId,
    pulumi.Output<String>? managedInstanceId,
  }) :
      autoRotationEnabled = pulumi.Input.asOptionalInput<bool>(autoRotationEnabled),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      managedInstanceId = pulumi.Input.asOptionalInput<String>(managedInstanceId);

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
      autoRotationEnabled: map['autoRotationEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoRotationEnabled'] as bool),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      managedInstanceId: map['managedInstanceId'] == null ? null : pulumi.Output.create<String>(map['managedInstanceId'] as String),
    );
  }
}

