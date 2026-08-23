// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedInstanceTransparentDataEncryption resources.
class ManagedInstanceTransparentDataEncryptionState {
  /// When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  final pulumi.Input<bool>? autoRotationEnabled;
  /// To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  ///
  /// &gt; **Note:** In order to use customer managed keys, the identity of the MSSQL Managed Instance must have the following permissions on the key vault: 'get', 'wrapKey' and 'unwrapKey'
  ///
  /// &gt; **Note:** When `autoRotationEnabled` is `true`, `keyVaultKeyId` can be either a versioned or versionless Key Vault Key ID. When using a versionless `keyVaultKeyId`, the principal running Terraform must have permission to read the latest key version from Key Vault. When `autoRotationEnabled` is `false`, `keyVaultKeyId` must be a versioned Key Vault Key ID.
  ///
  /// &gt; **Note:** If `managedInstanceId` denotes a secondary instance deployed for disaster recovery purposes, then the `keyVaultKeyId` should be the same key used for the primary instance's transparent data encryption. Both primary and secondary instances should be encrypted with same key material.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceId;

  /// Creates a new [ManagedInstanceTransparentDataEncryptionState].
  /// [autoRotationEnabled] When enabled, the SQL Managed Instance will continuously check the key vault for any new versions of the key being used as the TDE protector. If a new version of the key is detected, the TDE protector on the SQL Managed Instance will be automatically rotated to the latest key version within 60 minutes.
  /// [keyVaultKeyId] To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field.
  /// [managedHsmKeyId] Optional.
  /// [managedInstanceId] Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created.
  const ManagedInstanceTransparentDataEncryptionState({
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
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedInstanceId: (() { final guardedValue = map['managedInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
