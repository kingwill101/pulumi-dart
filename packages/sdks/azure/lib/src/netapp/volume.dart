import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_cool_access.dart';
import 'volume_data_protection_advanced_ransomware.dart';
import 'volume_data_protection_backup_policy.dart';
import 'volume_data_protection_replication.dart';
import 'volume_data_protection_snapshot_policy.dart';
import 'volume_export_policy_rule.dart';
import 'volume_state.dart';

/// Manages a NetApp Volume.
///
/// &gt; **Note:** This resource uses a feature to prevent deletion called `preventVolumeDestruction`, defaulting to `true`. It is intentionally set to `true` to prevent the possibility of accidental data loss. The example in this page shows all possible protection options you can apply, it is using same values as the defaults.
///
/// ## Import
///
/// NetApp Volumes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volume:Volume example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/volume1
/// ```
class Volume extends pulumi.CustomResource {
  /// While auto splitting the short term clone volume, if the parent pool does not have enough space to accommodate the volume after split, it will be automatically resized, which will lead to increased billing. To accept capacity pool size auto grow and create a short term clone volume, set the property as `Accepted`. If `Declined`, the short term clone volume creation operation will fail. This property can only be used in conjunction with `createFromSnapshotResourceId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Short-term clones are not supported on large volumes or volumes enabled for cool access. Short-term clones automatically convert to regular volumes after 32 days. For more information, please refer to [Create a short-term clone volume in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/create-short-term-clone)
  late final pulumi.Output<String?> acceptGrowCapacityPoolForShortTermCloneSplit;
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> azureVmwareDataStoreEnabled;
  /// A `coolAccess` block as defined below.
  late final pulumi.Output<VolumeCoolAccess?> coolAccess;
  /// Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: `protocols`, `subnetId`, `location`, `serviceLevel`, `resourceGroupName` and `accountName`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> createFromSnapshotResourceId;
  /// A `dataProtectionAdvancedRansomware` block as defined below.
  late final pulumi.Output<VolumeDataProtectionAdvancedRansomware?> dataProtectionAdvancedRansomware;
  /// A `dataProtectionBackupPolicy` block as defined below.
  late final pulumi.Output<VolumeDataProtectionBackupPolicy?> dataProtectionBackupPolicy;
  /// A `dataProtectionReplication` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<VolumeDataProtectionReplication?> dataProtectionReplication;
  /// A `dataProtectionSnapshotPolicy` block as defined below.
  late final pulumi.Output<VolumeDataProtectionSnapshotPolicy?> dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `keyVaultPrivateEndpointId`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> encryptionKeySource;
  /// One or more `exportPolicyRule` block defined below.
  late final pulumi.Output<List<VolumeExportPolicyRule>?> exportPolicyRules;
  /// Enable to allow Kerberos secured volumes. Requires appropriate export rules. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `kerberosEnabled` requires that the parent `azure.netapp.Account` has a *valid* AD connection defined. If the configuration is invalid, the volume will still be created but in a failed state. This requires manually deleting the volume and recreating it again via Terraform once the AD configuration has been corrected.
  late final pulumi.Output<bool?> kerberosEnabled;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryptionKeySource`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultPrivateEndpointId;
  /// A boolean specifying if the volume is a large volume. Defaults to `false`.
  ///
  /// &gt; **Note:** Large volumes must be at least 50 TiB in size and can be up to 1,024 TiB (1 PiB). For more information, please refer to [Requirements and considerations for large volumes](https://learn.microsoft.com/en-us/azure/azure-netapp-files/large-volumes-requirements-considerations)
  late final pulumi.Output<bool?> largeVolumeEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A list of IPv4 Addresses which should be used to mount the volume.
  late final pulumi.Output<List<String>> mountIpAddresses;
  /// The name of the NetApp Volume. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Indicates which network feature to use, accepted values are `Basic` or `Standard`, it defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features).
  late final pulumi.Output<String> networkFeatures;
  /// The name of the NetApp pool in which the NetApp Volume should be created.
  late final pulumi.Output<String> poolName;
  /// The target volume protocol expressed as a list. Supported single value include `CIFS`, `NFSv3`, or `NFSv4.1`. If argument is not defined it will default to `NFSv3`. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3Enabled = false` and `nfsv41Enabled = true` in export policy rules). Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document.
  ///
  /// &gt; **Note:** When converting protocols, ensure that export policy rules are updated to match the new protocol to avoid configuration drift. For example, when changing from NFSv3 to NFSv4.1, update the `protocol` field in export policy rules accordingly.
  late final pulumi.Output<List<String>> protocols;
  /// The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Volume security style, accepted values are `unix` or `ntfs`. If not provided, single-protocol volume is created defaulting to `unix` if it is `NFSv3` or `NFSv4.1` volume, if `CIFS`, it will default to `ntfs`. In a dual-protocol volume, if not provided, its value will be `ntfs`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> securityStyle;
  /// The target performance of the file system. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`.
  ///
  /// &gt; **Note:** When updating `serviceLevel` by migrating it to another Capacity Pool, both `serviceLevel` and `poolName` must be changed, otherwise the volume will be recreated with the specified `serviceLevel`.
  ///
  /// &gt; **Note:** After updating `serviceLevel` the `id` for the volume will change to include the new Capacity Pool so any resources referencing the Volume will be silently removed from state. They will still exist in Azure but need to reimported into Terraform.
  late final pulumi.Output<String> serviceLevel;
  /// Enable SMB encryption. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> smb3ProtocolEncryptionEnabled;
  /// Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share. For instance, if a user doesn't have access to read a file or folder in a share with access-based enumeration enabled, then the file or folder doesn't show up in directory listings. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=security%20for%20administrators.-,Access%2Dbased%20enumeration,in%20an%20Azure%20NetApp%20Files%20SMB%20volume.%20Only%20contosoadmin%20has%20access.,-In%20the%20below)
  late final pulumi.Output<bool?> smbAccessBasedEnumerationEnabled;
  /// Enable SMB Continuous Availability. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> smbContinuousAvailabilityEnabled;
  /// Limits clients from browsing for an SMB share by hiding the share from view in Windows Explorer or when listing shares in "net view." Only end users that know the absolute paths to the share are able to find the share. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=Non%2Dbrowsable%20shares,find%20the%20share.)
  late final pulumi.Output<bool?> smbNonBrowsableEnabled;
  /// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible. Defaults to `true`.
  late final pulumi.Output<bool?> snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  late final pulumi.Output<int> storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; **Note:** It is highly recommended to use the **lifecycle** property as noted in the example since it will prevent an accidental deletion of the volume if the `protocols` argument changes to a different protocol type.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Throughput of this volume in Mibps.
  late final pulumi.Output<double> throughputInMibps;
  /// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumePath;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature).
  late final pulumi.Output<String?> zone;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_netapp_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    acceptGrowCapacityPoolForShortTermCloneSplit = registerOutput<String?>('acceptGrowCapacityPoolForShortTermCloneSplit');
    accountName = registerOutput<String>('accountName');
    azureVmwareDataStoreEnabled = registerOutput<bool?>('azureVmwareDataStoreEnabled');
    coolAccess = registerOutput<VolumeCoolAccess?>('coolAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCoolAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createFromSnapshotResourceId = registerOutput<String?>('createFromSnapshotResourceId');
    dataProtectionAdvancedRansomware = registerOutput<VolumeDataProtectionAdvancedRansomware?>('dataProtectionAdvancedRansomware', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionAdvancedRansomware.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionBackupPolicy = registerOutput<VolumeDataProtectionBackupPolicy?>('dataProtectionBackupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionReplication = registerOutput<VolumeDataProtectionReplication?>('dataProtectionReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionSnapshotPolicy = registerOutput<VolumeDataProtectionSnapshotPolicy?>('dataProtectionSnapshotPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionSnapshotPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionKeySource = registerOutput<String>('encryptionKeySource');
    exportPolicyRules = registerOutput<List<VolumeExportPolicyRule>?>('exportPolicyRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeExportPolicyRule>(guardedValue, (value) => VolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    keyVaultPrivateEndpointId = registerOutput<String>('keyVaultPrivateEndpointId');
    largeVolumeEnabled = registerOutput<bool?>('largeVolumeEnabled');
    location = registerOutput<String>('location');
    mountIpAddresses = registerOutput<List<String>>('mountIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    networkFeatures = registerOutput<String>('networkFeatures');
    poolName = registerOutput<String>('poolName');
    protocols = registerOutput<List<String>>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityStyle = registerOutput<String>('securityStyle');
    serviceLevel = registerOutput<String>('serviceLevel');
    smb3ProtocolEncryptionEnabled = registerOutput<bool?>('smb3ProtocolEncryptionEnabled');
    smbAccessBasedEnumerationEnabled = registerOutput<bool?>('smbAccessBasedEnumerationEnabled');
    smbContinuousAvailabilityEnabled = registerOutput<bool?>('smbContinuousAvailabilityEnabled');
    smbNonBrowsableEnabled = registerOutput<bool?>('smbNonBrowsableEnabled');
    snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    storageQuotaInGb = registerOutput<int>('storageQuotaInGb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputInMibps = registerOutput<double>('throughputInMibps');
    volumePath = registerOutput<String>('volumePath');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [Volume] resource's state with the given [name] and [id].
  static Volume get(
    String name,
    pulumi.Input<String> id, {
    VolumeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Volume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Volume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptGrowCapacityPoolForShortTermCloneSplit = registerOutput<String?>('acceptGrowCapacityPoolForShortTermCloneSplit');
    accountName = registerOutput<String>('accountName');
    azureVmwareDataStoreEnabled = registerOutput<bool?>('azureVmwareDataStoreEnabled');
    coolAccess = registerOutput<VolumeCoolAccess?>('coolAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCoolAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createFromSnapshotResourceId = registerOutput<String?>('createFromSnapshotResourceId');
    dataProtectionAdvancedRansomware = registerOutput<VolumeDataProtectionAdvancedRansomware?>('dataProtectionAdvancedRansomware', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionAdvancedRansomware.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionBackupPolicy = registerOutput<VolumeDataProtectionBackupPolicy?>('dataProtectionBackupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionReplication = registerOutput<VolumeDataProtectionReplication?>('dataProtectionReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionSnapshotPolicy = registerOutput<VolumeDataProtectionSnapshotPolicy?>('dataProtectionSnapshotPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionSnapshotPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionKeySource = registerOutput<String>('encryptionKeySource');
    exportPolicyRules = registerOutput<List<VolumeExportPolicyRule>?>('exportPolicyRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeExportPolicyRule>(guardedValue, (value) => VolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    keyVaultPrivateEndpointId = registerOutput<String>('keyVaultPrivateEndpointId');
    largeVolumeEnabled = registerOutput<bool?>('largeVolumeEnabled');
    location = registerOutput<String>('location');
    mountIpAddresses = registerOutput<List<String>>('mountIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    networkFeatures = registerOutput<String>('networkFeatures');
    poolName = registerOutput<String>('poolName');
    protocols = registerOutput<List<String>>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityStyle = registerOutput<String>('securityStyle');
    serviceLevel = registerOutput<String>('serviceLevel');
    smb3ProtocolEncryptionEnabled = registerOutput<bool?>('smb3ProtocolEncryptionEnabled');
    smbAccessBasedEnumerationEnabled = registerOutput<bool?>('smbAccessBasedEnumerationEnabled');
    smbContinuousAvailabilityEnabled = registerOutput<bool?>('smbContinuousAvailabilityEnabled');
    smbNonBrowsableEnabled = registerOutput<bool?>('smbNonBrowsableEnabled');
    snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    storageQuotaInGb = registerOutput<int>('storageQuotaInGb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputInMibps = registerOutput<double>('throughputInMibps');
    volumePath = registerOutput<String>('volumePath');
    zone = registerOutput<String?>('zone');
  }

  /// Creates a typed reference to an existing [Volume] resource.
  Volume.reference(String urn)
    : super(
        'azure:netapp/volume:Volume',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptGrowCapacityPoolForShortTermCloneSplit = registerOutput<String?>('acceptGrowCapacityPoolForShortTermCloneSplit');
    accountName = registerOutput<String>('accountName');
    azureVmwareDataStoreEnabled = registerOutput<bool?>('azureVmwareDataStoreEnabled');
    coolAccess = registerOutput<VolumeCoolAccess?>('coolAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeCoolAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createFromSnapshotResourceId = registerOutput<String?>('createFromSnapshotResourceId');
    dataProtectionAdvancedRansomware = registerOutput<VolumeDataProtectionAdvancedRansomware?>('dataProtectionAdvancedRansomware', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionAdvancedRansomware.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionBackupPolicy = registerOutput<VolumeDataProtectionBackupPolicy?>('dataProtectionBackupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionReplication = registerOutput<VolumeDataProtectionReplication?>('dataProtectionReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProtectionSnapshotPolicy = registerOutput<VolumeDataProtectionSnapshotPolicy?>('dataProtectionSnapshotPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeDataProtectionSnapshotPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionKeySource = registerOutput<String>('encryptionKeySource');
    exportPolicyRules = registerOutput<List<VolumeExportPolicyRule>?>('exportPolicyRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeExportPolicyRule>(guardedValue, (value) => VolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    keyVaultPrivateEndpointId = registerOutput<String>('keyVaultPrivateEndpointId');
    largeVolumeEnabled = registerOutput<bool?>('largeVolumeEnabled');
    location = registerOutput<String>('location');
    mountIpAddresses = registerOutput<List<String>>('mountIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    networkFeatures = registerOutput<String>('networkFeatures');
    poolName = registerOutput<String>('poolName');
    protocols = registerOutput<List<String>>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityStyle = registerOutput<String>('securityStyle');
    serviceLevel = registerOutput<String>('serviceLevel');
    smb3ProtocolEncryptionEnabled = registerOutput<bool?>('smb3ProtocolEncryptionEnabled');
    smbAccessBasedEnumerationEnabled = registerOutput<bool?>('smbAccessBasedEnumerationEnabled');
    smbContinuousAvailabilityEnabled = registerOutput<bool?>('smbContinuousAvailabilityEnabled');
    smbNonBrowsableEnabled = registerOutput<bool?>('smbNonBrowsableEnabled');
    snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    storageQuotaInGb = registerOutput<int>('storageQuotaInGb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputInMibps = registerOutput<double>('throughputInMibps');
    volumePath = registerOutput<String>('volumePath');
    zone = registerOutput<String?>('zone');
  }
}
