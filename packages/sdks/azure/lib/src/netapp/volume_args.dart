// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_cool_access.dart';
import 'volume_data_protection_advanced_ransomware.dart';
import 'volume_data_protection_backup_policy.dart';
import 'volume_data_protection_replication.dart';
import 'volume_data_protection_snapshot_policy.dart';
import 'volume_export_policy_rule.dart';

/// {@template pulumi_netapp_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_volume_args_doc}
class VolumeArgs {
  /// While auto splitting the short term clone volume, if the parent pool does not have enough space to accommodate the volume after split, it will be automatically resized, which will lead to increased billing. To accept capacity pool size auto grow and create a short term clone volume, set the property as `Accepted`. If `Declined`, the short term clone volume creation operation will fail. This property can only be used in conjunction with `createFromSnapshotResourceId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Short-term clones are not supported on large volumes or volumes enabled for cool access. Short-term clones automatically convert to regular volumes after 32 days. For more information, please refer to [Create a short-term clone volume in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/create-short-term-clone)
  final pulumi.Input<String>? acceptGrowCapacityPoolForShortTermCloneSplit;
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? azureVmwareDataStoreEnabled;
  /// A `coolAccess` block as defined below.
  final pulumi.Input<VolumeCoolAccess>? coolAccess;
  /// Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: `protocols`, `subnetId`, `location`, `serviceLevel`, `resourceGroupName` and `accountName`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createFromSnapshotResourceId;
  /// A `dataProtectionAdvancedRansomware` block as defined below.
  final pulumi.Input<VolumeDataProtectionAdvancedRansomware>? dataProtectionAdvancedRansomware;
  /// A `dataProtectionBackupPolicy` block as defined below.
  final pulumi.Input<VolumeDataProtectionBackupPolicy>? dataProtectionBackupPolicy;
  /// A `dataProtectionReplication` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VolumeDataProtectionReplication>? dataProtectionReplication;
  /// A `dataProtectionSnapshotPolicy` block as defined below.
  final pulumi.Input<VolumeDataProtectionSnapshotPolicy>? dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `keyVaultPrivateEndpointId`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? encryptionKeySource;
  /// One or more `exportPolicyRule` block defined below.
  final pulumi.Input<List<VolumeExportPolicyRule>>? exportPolicyRules;
  /// Enable to allow Kerberos secured volumes. Requires appropriate export rules. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `kerberosEnabled` requires that the parent `azure.netapp.Account` has a *valid* AD connection defined. If the configuration is invalid, the volume will still be created but in a failed state. This requires manually deleting the volume and recreating it again via Terraform once the AD configuration has been corrected.
  final pulumi.Input<bool>? kerberosEnabled;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryptionKeySource`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultPrivateEndpointId;
  /// A boolean specifying if the volume is a large volume. Defaults to `false`.
  ///
  /// &gt; **Note:** Large volumes must be at least 50 TiB in size and can be up to 1,024 TiB (1 PiB). For more information, please refer to [Requirements and considerations for large volumes](https://learn.microsoft.com/en-us/azure/azure-netapp-files/large-volumes-requirements-considerations)
  final pulumi.Input<bool>? largeVolumeEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the NetApp Volume. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Indicates which network feature to use, accepted values are `Basic` or `Standard`, it defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features).
  final pulumi.Input<String>? networkFeatures;
  /// The name of the NetApp pool in which the NetApp Volume should be created.
  final pulumi.Input<String> poolName;
  /// The target volume protocol expressed as a list. Supported single value include `CIFS`, `NFSv3`, or `NFSv4.1`. If argument is not defined it will default to `NFSv3`. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3Enabled = false` and `nfsv41Enabled = true` in export policy rules). Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document.
  ///
  /// &gt; **Note:** When converting protocols, ensure that export policy rules are updated to match the new protocol to avoid configuration drift. For example, when changing from NFSv3 to NFSv4.1, update the `protocol` field in export policy rules accordingly.
  final pulumi.Input<List<String>>? protocols;
  /// The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Volume security style, accepted values are `unix` or `ntfs`. If not provided, single-protocol volume is created defaulting to `unix` if it is `NFSv3` or `NFSv4.1` volume, if `CIFS`, it will default to `ntfs`. In a dual-protocol volume, if not provided, its value will be `ntfs`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? securityStyle;
  /// The target performance of the file system. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`.
  ///
  /// &gt; **Note:** When updating `serviceLevel` by migrating it to another Capacity Pool, both `serviceLevel` and `poolName` must be changed, otherwise the volume will be recreated with the specified `serviceLevel`.
  ///
  /// &gt; **Note:** After updating `serviceLevel` the `id` for the volume will change to include the new Capacity Pool so any resources referencing the Volume will be silently removed from state. They will still exist in Azure but need to reimported into Terraform.
  final pulumi.Input<String> serviceLevel;
  /// Enable SMB encryption. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? smb3ProtocolEncryptionEnabled;
  /// Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share. For instance, if a user doesn't have access to read a file or folder in a share with access-based enumeration enabled, then the file or folder doesn't show up in directory listings. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=security%20for%20administrators.-,Access%2Dbased%20enumeration,in%20an%20Azure%20NetApp%20Files%20SMB%20volume.%20Only%20contosoadmin%20has%20access.,-In%20the%20below)
  final pulumi.Input<bool>? smbAccessBasedEnumerationEnabled;
  /// Enable SMB Continuous Availability. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? smbContinuousAvailabilityEnabled;
  /// Limits clients from browsing for an SMB share by hiding the share from view in Windows Explorer or when listing shares in "net view." Only end users that know the absolute paths to the share are able to find the share. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=Non%2Dbrowsable%20shares,find%20the%20share.)
  final pulumi.Input<bool>? smbNonBrowsableEnabled;
  /// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible. Defaults to `true`.
  final pulumi.Input<bool>? snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  final pulumi.Input<int> storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; **Note:** It is highly recommended to use the **lifecycle** property as noted in the example since it will prevent an accidental deletion of the volume if the `protocols` argument changes to a different protocol type.
  final pulumi.Input<Map<String, String>>? tags;
  /// Throughput of this volume in Mibps.
  final pulumi.Input<double>? throughputInMibps;
  /// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumePath;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature).
  final pulumi.Input<String>? zone;

  /// Creates a new [VolumeArgs].
  /// [acceptGrowCapacityPoolForShortTermCloneSplit] While auto splitting the short term clone volume, if the parent pool does not have enough space to accommodate the volume after split, it will be automatically resized, which will lead to increased billing. To accept capacity pool size auto grow and create a short term clone volume, set the property as `Accepted`. If `Declined`, the short term clone volume creation operation will fail. This property can only be used in conjunction with `createFromSnapshotResourceId`. Changing this forces a new resource to be created.
  /// [accountName] The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  /// [azureVmwareDataStoreEnabled] Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to `false`. Changing this forces a new resource to be created.
  /// [coolAccess] A `coolAccess` block as defined below.
  /// [createFromSnapshotResourceId] Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: `protocols`, `subnetId`, `location`, `serviceLevel`, `resourceGroupName` and `accountName`. Changing this forces a new resource to be created.
  /// [dataProtectionAdvancedRansomware] A `dataProtectionAdvancedRansomware` block as defined below.
  /// [dataProtectionBackupPolicy] A `dataProtectionBackupPolicy` block as defined below.
  /// [dataProtectionReplication] A `dataProtectionReplication` block as defined below. Changing this forces a new resource to be created.
  /// [dataProtectionSnapshotPolicy] A `dataProtectionSnapshotPolicy` block as defined below.
  /// [encryptionKeySource] The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `keyVaultPrivateEndpointId`. Changing this forces a new resource to be created.
  /// [exportPolicyRules] One or more `exportPolicyRule` block defined below.
  /// [kerberosEnabled] Enable to allow Kerberos secured volumes. Requires appropriate export rules. Changing this forces a new resource to be created.
  /// [keyVaultPrivateEndpointId] The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryptionKeySource`. Changing this forces a new resource to be created.
  /// [largeVolumeEnabled] A boolean specifying if the volume is a large volume. Defaults to `false`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Volume. Changing this forces a new resource to be created.
  /// [networkFeatures] Indicates which network feature to use, accepted values are `Basic` or `Standard`, it defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features).
  /// [poolName] The name of the NetApp pool in which the NetApp Volume should be created.
  /// [protocols] The target volume protocol expressed as a list. Supported single value include `CIFS`, `NFSv3`, or `NFSv4.1`. If argument is not defined it will default to `NFSv3`. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3Enabled = false` and `nfsv41Enabled = true` in export policy rules). Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document.
  /// [resourceGroupName] The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
  /// [securityStyle] Volume security style, accepted values are `unix` or `ntfs`. If not provided, single-protocol volume is created defaulting to `unix` if it is `NFSv3` or `NFSv4.1` volume, if `CIFS`, it will default to `ntfs`. In a dual-protocol volume, if not provided, its value will be `ntfs`. Changing this forces a new resource to be created.
  /// [serviceLevel] The target performance of the file system. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`.
  /// [smb3ProtocolEncryptionEnabled] Enable SMB encryption. Changing this forces a new resource to be created.
  /// [smbAccessBasedEnumerationEnabled] Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share. For instance, if a user doesn't have access to read a file or folder in a share with access-based enumeration enabled, then the file or folder doesn't show up in directory listings. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=security%20for%20administrators.-,Access%2Dbased%20enumeration,in%20an%20Azure%20NetApp%20Files%20SMB%20volume.%20Only%20contosoadmin%20has%20access.,-In%20the%20below)
  /// [smbContinuousAvailabilityEnabled] Enable SMB Continuous Availability. Changing this forces a new resource to be created.
  /// [smbNonBrowsableEnabled] Limits clients from browsing for an SMB share by hiding the share from view in Windows Explorer or when listing shares in "net view." Only end users that know the absolute paths to the share are able to find the share. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=Non%2Dbrowsable%20shares,find%20the%20share.)
  /// [snapshotDirectoryVisible] Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible. Defaults to `true`.
  /// [storageQuotaInGb] The maximum Storage Quota allowed for a file system in Gigabytes.
  /// [subnetId] The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [throughputInMibps] Throughput of this volume in Mibps.
  /// [volumePath] A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
  /// [zone] Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature).
  const VolumeArgs({
    this.acceptGrowCapacityPoolForShortTermCloneSplit,
    required this.accountName,
    this.azureVmwareDataStoreEnabled,
    this.coolAccess,
    this.createFromSnapshotResourceId,
    this.dataProtectionAdvancedRansomware,
    this.dataProtectionBackupPolicy,
    this.dataProtectionReplication,
    this.dataProtectionSnapshotPolicy,
    this.encryptionKeySource,
    this.exportPolicyRules,
    this.kerberosEnabled,
    this.keyVaultPrivateEndpointId,
    this.largeVolumeEnabled,
    this.location,
    this.name,
    this.networkFeatures,
    required this.poolName,
    this.protocols,
    required this.resourceGroupName,
    this.securityStyle,
    required this.serviceLevel,
    this.smb3ProtocolEncryptionEnabled,
    this.smbAccessBasedEnumerationEnabled,
    this.smbContinuousAvailabilityEnabled,
    this.smbNonBrowsableEnabled,
    this.snapshotDirectoryVisible,
    required this.storageQuotaInGb,
    required this.subnetId,
    this.tags,
    this.throughputInMibps,
    required this.volumePath,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptGrowCapacityPoolForShortTermCloneSplit': ?acceptGrowCapacityPoolForShortTermCloneSplit,
      'accountName': accountName,
      'azureVmwareDataStoreEnabled': ?azureVmwareDataStoreEnabled,
      'coolAccess': ?pulumi.Input.mapOptionalInputValue<VolumeCoolAccess, Map<String, dynamic>>(coolAccess, (value) => value.toMap()),
      'createFromSnapshotResourceId': ?createFromSnapshotResourceId,
      'dataProtectionAdvancedRansomware': ?pulumi.Input.mapOptionalInputValue<VolumeDataProtectionAdvancedRansomware, Map<String, dynamic>>(dataProtectionAdvancedRansomware, (value) => value.toMap()),
      'dataProtectionBackupPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeDataProtectionBackupPolicy, Map<String, dynamic>>(dataProtectionBackupPolicy, (value) => value.toMap()),
      'dataProtectionReplication': ?pulumi.Input.mapOptionalInputValue<VolumeDataProtectionReplication, Map<String, dynamic>>(dataProtectionReplication, (value) => value.toMap()),
      'dataProtectionSnapshotPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeDataProtectionSnapshotPolicy, Map<String, dynamic>>(dataProtectionSnapshotPolicy, (value) => value.toMap()),
      'encryptionKeySource': ?encryptionKeySource,
      'exportPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<VolumeExportPolicyRule>, List<Map<String, dynamic>>>(exportPolicyRules, (value) => pulumi.Input.encodeList<VolumeExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kerberosEnabled': ?kerberosEnabled,
      'keyVaultPrivateEndpointId': ?keyVaultPrivateEndpointId,
      'largeVolumeEnabled': ?largeVolumeEnabled,
      'location': ?location,
      'name': ?name,
      'networkFeatures': ?networkFeatures,
      'poolName': poolName,
      'protocols': ?protocols,
      'resourceGroupName': resourceGroupName,
      'securityStyle': ?securityStyle,
      'serviceLevel': serviceLevel,
      'smb3ProtocolEncryptionEnabled': ?smb3ProtocolEncryptionEnabled,
      'smbAccessBasedEnumerationEnabled': ?smbAccessBasedEnumerationEnabled,
      'smbContinuousAvailabilityEnabled': ?smbContinuousAvailabilityEnabled,
      'smbNonBrowsableEnabled': ?smbNonBrowsableEnabled,
      'snapshotDirectoryVisible': ?snapshotDirectoryVisible,
      'storageQuotaInGb': storageQuotaInGb,
      'subnetId': subnetId,
      'tags': ?tags,
      'throughputInMibps': ?throughputInMibps,
      'volumePath': volumePath,
      'zone': ?zone,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      acceptGrowCapacityPoolForShortTermCloneSplit: (() { final guardedValue = map['acceptGrowCapacityPoolForShortTermCloneSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      azureVmwareDataStoreEnabled: (() { final guardedValue = map['azureVmwareDataStoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coolAccess: (() { final guardedValue = map['coolAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeCoolAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createFromSnapshotResourceId: (() { final guardedValue = map['createFromSnapshotResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProtectionAdvancedRansomware: (() { final guardedValue = map['dataProtectionAdvancedRansomware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeDataProtectionAdvancedRansomware.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProtectionBackupPolicy: (() { final guardedValue = map['dataProtectionBackupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeDataProtectionBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProtectionReplication: (() { final guardedValue = map['dataProtectionReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeDataProtectionReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProtectionSnapshotPolicy: (() { final guardedValue = map['dataProtectionSnapshotPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeDataProtectionSnapshotPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionKeySource: (() { final guardedValue = map['encryptionKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportPolicyRules: (() { final guardedValue = map['exportPolicyRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeExportPolicyRule>(guardedValue, (value) => VolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kerberosEnabled: (() { final guardedValue = map['kerberosEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultPrivateEndpointId: (() { final guardedValue = map['keyVaultPrivateEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      largeVolumeEnabled: (() { final guardedValue = map['largeVolumeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFeatures: (() { final guardedValue = map['networkFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityStyle: (() { final guardedValue = map['securityStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLevel: pulumi.Input.fromValue(map['serviceLevel'] as String),
      smb3ProtocolEncryptionEnabled: (() { final guardedValue = map['smb3ProtocolEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbAccessBasedEnumerationEnabled: (() { final guardedValue = map['smbAccessBasedEnumerationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbContinuousAvailabilityEnabled: (() { final guardedValue = map['smbContinuousAvailabilityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbNonBrowsableEnabled: (() { final guardedValue = map['smbNonBrowsableEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotDirectoryVisible: (() { final guardedValue = map['snapshotDirectoryVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageQuotaInGb: pulumi.Input.fromValue(map['storageQuotaInGb'] as int),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputInMibps: (() { final guardedValue = map['throughputInMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      volumePath: pulumi.Input.fromValue(map['volumePath'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
