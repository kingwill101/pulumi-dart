// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_identity.dart';

/// Input properties used for looking up and filtering DiskEncryptionSet resources.
class DiskEncryptionSetState {
  /// Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// > **Note:** When `auto_key_rotation_enabled` is set to `true` the `key_vault_key_id` or `managed_hsm_key_id` must use the `versionless_id`.
  ///
  /// > **Note:** To validate which Key Vault Key version is currently being used by the service it is recommended that you use the `azure.compute.DiskEncryptionSet` data source or run a `terraform refresh` command and check the value of the exported `key_vault_key_url` or `managed_hsm_key_id` field.
  ///
  /// > **Note:** It may take between 10 to 20 minutes for the service to update the Key Vault Key URL once the keys have been rotated.
  final pulumi.Input<bool>? autoKeyRotationEnabled;
  /// The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? encryptionType;
  /// Multi-tenant application client id to access key vault in a different tenant.
  final pulumi.Input<String>? federatedClientId;
  /// An `identity` block as defined below.
  final pulumi.Input<DiskEncryptionSetIdentity>? identity;
  /// Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). Exactly one of `managed_hsm_key_id`, `key_vault_key_id` must be specified.
  ///
  /// > **Note:** Access to the KeyVault must be granted for this Disk Encryption Set, if you want to further use this Disk Encryption Set in a Managed Disk or Virtual Machine, or Virtual Machine Scale Set. For instructions, please refer to the doc of [Server side encryption of Azure managed disks](https://docs.microsoft.com/azure/virtual-machines/linux/disk-encryption).
  ///
  /// > **Note:** A KeyVault or Managed HSM using enable_rbac_authorization requires to use `azure.authorization.Assignment` to assign the role `Key Vault Crypto Service Encryption User` to this Disk Encryption Set.
  /// In this case, `azure.keyvault.AccessPolicy` is not needed.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  final pulumi.Input<String>? keyVaultKeyUrl;
  /// Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Key ID of a key in a managed HSM. Exactly one of `managed_hsm_key_id`, `key_vault_key_id` must be specified.
  final pulumi.Input<String>? managedHsmKeyId;
  /// The name of the Disk Encryption Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Disk Encryption Set.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskEncryptionSetState].
  /// [autoKeyRotationEnabled] Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  /// [encryptionType] The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created.
  /// [federatedClientId] Multi-tenant application client id to access key vault in a different tenant.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultKeyId] Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). Exactly one of `managed_hsm_key_id`, `key_vault_key_id` must be specified.
  /// [keyVaultKeyUrl] The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service.
  /// [location] Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created.
  /// [managedHsmKeyId] Key ID of a key in a managed HSM. Exactly one of `managed_hsm_key_id`, `key_vault_key_id` must be specified.
  /// [name] The name of the Disk Encryption Set. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Disk Encryption Set.
  DiskEncryptionSetState({
    this.autoKeyRotationEnabled,
    this.encryptionType,
    this.federatedClientId,
    this.identity,
    this.keyVaultKeyId,
    this.keyVaultKeyUrl,
    this.location,
    this.managedHsmKeyId,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoKeyRotationEnabled': ?autoKeyRotationEnabled,
      'encryptionType': ?encryptionType,
      'federatedClientId': ?federatedClientId,
      'identity': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultKeyUrl': ?keyVaultKeyUrl,
      'location': ?location,
      'managedHsmKeyId': ?managedHsmKeyId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiskEncryptionSetState.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetState(
      autoKeyRotationEnabled: map['autoKeyRotationEnabled'] == null ? null : (map['autoKeyRotationEnabled'] as bool).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      federatedClientId: map['federatedClientId'] == null ? null : (map['federatedClientId'] as String).input(),
      identity: map['identity'] == null ? null : (DiskEncryptionSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      keyVaultKeyUrl: map['keyVaultKeyUrl'] == null ? null : (map['keyVaultKeyUrl'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

