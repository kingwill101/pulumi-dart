// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_identity.dart';

/// {@template pulumi_compute_disk_encryption_set_disk_encryption_set_args_doc}
/// The set of arguments for DiskEncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_encryption_set_disk_encryption_set_args_doc}
class DiskEncryptionSetArgs {
  /// Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  ///
  /// &gt; **Note:** When `autoKeyRotationEnabled` is set to `true` the `keyVaultKeyId` or `managedHsmKeyId` must use the `versionlessId`.
  ///
  /// &gt; **Note:** To validate which Key Vault Key version is currently being used by the service it is recommended that you use the `azure.compute.DiskEncryptionSet` data source or run a `terraform refresh` command and check the value of the exported `keyVaultKeyUrl` or `managedHsmKeyId` field.
  ///
  /// &gt; **Note:** It may take between 10 to 20 minutes for the service to update the Key Vault Key URL once the keys have been rotated.
  final pulumi.Input<bool?>? autoKeyRotationEnabled;
  /// The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? encryptionType;
  /// Multi-tenant application client id to access key vault in a different tenant.
  final pulumi.Input<String?>? federatedClientId;
  /// An `identity` block as defined below.
  final pulumi.Input<DiskEncryptionSetIdentity> identity;
  /// Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  ///
  /// &gt; **Note:** Access to the KeyVault must be granted for this Disk Encryption Set, if you want to further use this Disk Encryption Set in a Managed Disk or Virtual Machine, or Virtual Machine Scale Set. For instructions, please refer to the doc of [Server side encryption of Azure managed disks](https://docs.microsoft.com/azure/virtual-machines/linux/disk-encryption).
  ///
  /// &gt; **Note:** A KeyVault or Managed HSM using enableRbacAuthorization requires to use `azure.authorization.Assignment` to assign the role `Key Vault Crypto Service Encryption User` to this Disk Encryption Set.
  /// In this case, `azure.keyvault.AccessPolicy` is not needed.
  final pulumi.Input<String?>? keyVaultKeyId;
  /// Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Key ID of a key in a managed HSM. Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  final pulumi.Input<String?>? managedHsmKeyId;
  /// The name of the Disk Encryption Set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Disk Encryption Set.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DiskEncryptionSetArgs].
  /// [autoKeyRotationEnabled] Boolean flag to specify whether Azure Disk Encryption Set automatically rotates the encryption Key to latest version or not. Possible values are `true` or `false`. Defaults to `false`.
  /// [encryptionType] The type of key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerKey`, `EncryptionAtRestWithPlatformAndCustomerKeys` and `ConfidentialVmEncryptedWithCustomerKey`. Defaults to `EncryptionAtRestWithCustomerKey`. Changing this forces a new resource to be created.
  /// [federatedClientId] Multi-tenant application client id to access key vault in a different tenant.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultKeyId] Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret). Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  /// [location] Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created.
  /// [managedHsmKeyId] Key ID of a key in a managed HSM. Exactly one of `managedHsmKeyId`, `keyVaultKeyId` must be specified.
  /// [name] The name of the Disk Encryption Set. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Disk Encryption Set.
  const DiskEncryptionSetArgs({
    this.autoKeyRotationEnabled,
    this.encryptionType,
    this.federatedClientId,
    required this.identity,
    this.keyVaultKeyId,
    this.location,
    this.managedHsmKeyId,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoKeyRotationEnabled': ?autoKeyRotationEnabled,
      'encryptionType': ?encryptionType,
      'federatedClientId': ?federatedClientId,
      'identity': pulumi.Input.mapInputValue<DiskEncryptionSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultKeyId': ?keyVaultKeyId,
      'location': ?location,
      'managedHsmKeyId': ?managedHsmKeyId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DiskEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSetArgs(
      autoKeyRotationEnabled: (() { final guardedValue = map['autoKeyRotationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: pulumi.Input.fromValue(DiskEncryptionSetIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
