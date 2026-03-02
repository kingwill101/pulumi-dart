// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_encryption_settings.dart';

/// Input properties used for looking up and filtering ManagedDisk resources.
class ManagedDiskState {
  /// The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include:
  /// * `Import` - Import a VHD file in to the managed disk (VHD specified with `source_uri`).
  /// * `ImportSecure` - Securely import a VHD file in to the managed disk (VHD specified with `source_uri`).
  /// * `Empty` - Create an empty managed disk.
  /// * `Copy` - Copy an existing managed disk or snapshot (specified with `source_resource_id`).
  /// * `FromImage` - Copy a Platform Image (specified with `image_reference_id`)
  /// * `Restore` - Set by Azure Backup or Site Recovery on a restored disk (specified with `source_resource_id`).
  /// * `Upload` - Upload a VHD disk with the help of SAS URL (to be used with `upload_size_bytes`).
  final pulumi.Input<String>? createOption;
  /// The ID of the disk access resource for using private endpoints on disks.
  ///
  /// > **Note:** `disk_access_id` is only supported when `network_access_policy` is set to `AllowPrivate`.
  final pulumi.Input<String>? diskAccessId;
  /// The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with `secure_vm_disk_encryption_set_id`.
  ///
  /// > **NOTE:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// > **NOTE:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes.
  final pulumi.Input<int>? diskIopsReadOnly;
  /// The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes.
  final pulumi.Input<int>? diskIopsReadWrite;
  /// The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second.
  final pulumi.Input<int>? diskMbpsReadOnly;
  /// The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second.
  final pulumi.Input<int>? diskMbpsReadWrite;
  /// (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If `create_option` is `Copy` or `FromImage`, then the value must be equal to or greater than the source's size. The size can only be increased.
  ///
  /// > **NOTE:** In certain conditions the Data Disk size can be updated without shutting down the Virtual Machine, however only a subset of Virtual Machine SKUs/Disk combinations support this. More information can be found [for Linux Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/expand-disks?tabs=azure-cli%2Cubuntu#expand-without-downtime) and [Windows Virtual Machines](https://learn.microsoft.com/azure/virtual-machines/windows/expand-os-disk#expand-without-downtime) respectively.
  ///
  /// > **NOTE:** If No Downtime Resizing is not available, be aware that changing this value is disruptive if the disk is attached to a Virtual Machine. The VM will be shut down and de-allocated as required by Azure to action the change. The provider will attempt to start the machine again after the update if it was in a `running` state when the apply was started.
  ///
  /// > **NOTE:** When upgrading `disk_size_gb` from a value less than 4095 to one greater than 4095, and if `storage_account_type` is not set to `PremiumV2_LRS` or `UltraSSD_LRS`, the disk will be detached from its associated Virtual Machine as required by Azure to action the change. Terraform will attempt to reattach the disk again after the update.
  ///
  /// > **Note:** Expanding Ultra Disks and Premium SSD v2 disks without downtime has additional limitations. Allow up to 10 minutes for the correct size to be reflected, and a `rescan` function may be required. For more details, refer to [Expand with Ultra Disks and Premium SSD v2](https://learn.microsoft.com/azure/virtual-machines/linux/expand-disks?tabs=ubuntu#expand-with-ultra-disks-and-premium-ssd-v2).
  final pulumi.Input<int>? diskSizeGb;
  /// Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created.
  final pulumi.Input<String>? edgeZone;
  /// A `encryption_settings` block as defined below.
  ///
  /// > **NOTE:** Removing `encryption_settings` forces a new resource to be created.
  final pulumi.Input<ManagedDiskEncryptionSettings>? encryptionSettings;
  /// ID of a Gallery Image Version to copy when `create_option` is `FromImage`. This field cannot be specified if image_reference_id is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? galleryImageReferenceId;
  /// The HyperV Generation of the Disk when the source of an `Import` or `Copy` operation targets a source that contains an operating system. Possible values are `V1` and `V2`. For `ImportSecure` it must be set to `V2`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hyperVGeneration;
  /// ID of an existing platform/marketplace disk image to copy when `create_option` is `FromImage`. This field cannot be specified if gallery_image_reference_id is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? imageReferenceId;
  /// Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Logical Sector Size. Possible values are: `512` and `4096`. Defaults to `4096`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Setting logical sector size is supported only with `UltraSSD_LRS` disks and `PremiumV2_LRS` disks.
  final pulumi.Input<int>? logicalSectorSize;
  /// The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  ///
  /// > **Note:** Premium SSD maxShares limit: `P15` and `P20` disks: 2. `P30`,`P40`,`P50` disks: 5. `P60`,`P70`,`P80` disks: 10. For ultra disks the `max_shares` minimum value is 1 and the maximum is 5.
  final pulumi.Input<int>? maxShares;
  /// Specifies the name of the Managed Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Policy for accessing the disk via network. Allowed values are `AllowAll`, `AllowPrivate`, and `DenyAll`. Defaults to `AllowAll`.
  final pulumi.Input<String>? networkAccessPolicy;
  /// Specifies if On-Demand Bursting is enabled for the Managed Disk.
  ///
  /// > **Note:** Credit-Based Bursting is enabled by default on all eligible disks. More information on [Credit-Based and On-Demand Bursting can be found in the documentation](https://docs.microsoft.com/azure/virtual-machines/disk-bursting#disk-level-bursting).
  final pulumi.Input<bool>? onDemandBurstingEnabled;
  /// Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to `false`.
  ///
  /// > **Note:** Setting `optimized_frequent_attach_enabled` to `true` causes the disks to not align with the fault domain of the Virtual Machine, which can have operational implications.
  final pulumi.Input<bool>? optimizedFrequentAttachEnabled;
  /// Specify a value when the source of an `Import`, `ImportSecure` or `Copy` operation targets a source that contains an operating system. Valid values are `Linux` or `Windows`.
  final pulumi.Input<String>? osType;
  /// Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? performancePlusEnabled;
  /// Whether it is allowed to access the disk via public network. Defaults to `true`.
  ///
  /// For more information on managed disks, such as sizing options and pricing, please check out the [Azure Documentation](https://docs.microsoft.com/azure/storage/storage-managed-disks-overview).
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** `secure_vm_disk_encryption_set_id` can only be specified when `security_type` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey`.
  final pulumi.Input<String>? secureVmDiskEncryptionSetId;
  /// Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey` and `ConfidentialVM_DiskEncryptedWithCustomerKey`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** When `security_type` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey` the value of `create_option` must be one of `FromImage` or `ImportSecure`.
  ///
  ///
  /// > **NOTE:** `security_type` cannot be specified when `trusted_launch_enabled` is set to true.
  ///
  /// > **NOTE:** `secure_vm_disk_encryption_set_id` must be specified when `security_type` is set to `ConfidentialVM_DiskEncryptedWithCustomerKey`.
  final pulumi.Input<String>? securityType;
  /// The ID of an existing Managed Disk or Snapshot to copy when `create_option` is `Copy` or the recovery point to restore when `create_option` is `Restore`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// URI to a valid VHD file to be used when `create_option` is `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceUri;
  /// The ID of the Storage Account where the `source_uri` is located. Required when `create_option` is set to `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountId;
  /// The type of storage to use for the managed disk. Possible values are `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS` or `UltraSSD_LRS`.
  ///
  /// > **Note:** Azure Ultra Disk Storage is only available in a region that support availability zones and can only enabled on the following VM series: `ESv3`, `DSv3`, `FSv3`, `LSv2`, `M` and `Mv2`. For more information see the `Azure Ultra Disk Storage` [product documentation](https://docs.microsoft.com/azure/virtual-machines/windows/disks-enable-ultra-ssd).
  final pulumi.Input<String>? storageAccountType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs.
  ///
  /// > **NOTE:** Changing this value is disruptive if the disk is attached to a Virtual Machine. The VM will be shut down and de-allocated as required by Azure to action the change. Terraform will attempt to start the machine again after the update if it was in a `running` state when the apply was started.
  final pulumi.Input<String>? tier;
  /// Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Trusted Launch can only be enabled when `create_option` is `FromImage` or `Import`.
  final pulumi.Input<bool>? trustedLaunchEnabled;
  /// Specifies the size of the managed disk to create in bytes. Required when `create_option` is `Upload`. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with `ls -l` or `wc -c`. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created.
  final pulumi.Input<int>? uploadSizeBytes;
  /// Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created.
  ///
  /// > **Note:** Availability Zones are [only supported in select regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<String>? zone;

  /// Creates a new [ManagedDiskState].
  /// [createOption] The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include:
  /// [diskAccessId] The ID of the disk access resource for using private endpoints on disks.
  /// [diskEncryptionSetId] The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with `secure_vm_disk_encryption_set_id`.
  /// [diskIopsReadOnly] The number of IOPS allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. One operation can transfer between 4k and 256k bytes.
  /// [diskIopsReadWrite] The number of IOPS allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. One operation can transfer between 4k and 256k bytes.
  /// [diskMbpsReadOnly] The bandwidth allowed across all VMs mounting the shared disk as read-only; only settable for UltraSSD disks and PremiumV2 disks with shared disk enabled. MBps means millions of bytes per second.
  /// [diskMbpsReadWrite] The bandwidth allowed for this disk; only settable for UltraSSD disks and PremiumV2 disks. MBps means millions of bytes per second.
  /// [diskSizeGb] (Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If `create_option` is `Copy` or `FromImage`, then the value must be equal to or greater than the source's size. The size can only be increased.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Managed Disk should exist. Changing this forces a new Managed Disk to be created.
  /// [encryptionSettings] A `encryption_settings` block as defined below.
  /// [galleryImageReferenceId] ID of a Gallery Image Version to copy when `create_option` is `FromImage`. This field cannot be specified if image_reference_id is specified. Changing this forces a new resource to be created.
  /// [hyperVGeneration] The HyperV Generation of the Disk when the source of an `Import` or `Copy` operation targets a source that contains an operating system. Possible values are `V1` and `V2`. For `ImportSecure` it must be set to `V2`. Changing this forces a new resource to be created.
  /// [imageReferenceId] ID of an existing platform/marketplace disk image to copy when `create_option` is `FromImage`. This field cannot be specified if gallery_image_reference_id is specified. Changing this forces a new resource to be created.
  /// [location] Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logicalSectorSize] Logical Sector Size. Possible values are: `512` and `4096`. Defaults to `4096`. Changing this forces a new resource to be created.
  /// [maxShares] The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  /// [name] Specifies the name of the Managed Disk. Changing this forces a new resource to be created.
  /// [networkAccessPolicy] Policy for accessing the disk via network. Allowed values are `AllowAll`, `AllowPrivate`, and `DenyAll`. Defaults to `AllowAll`.
  /// [onDemandBurstingEnabled] Specifies if On-Demand Bursting is enabled for the Managed Disk.
  /// [optimizedFrequentAttachEnabled] Specifies whether this Managed Disk should be optimized for frequent disk attachments (where a disk is attached/detached more than 5 times in a day). Defaults to `false`.
  /// [osType] Specify a value when the source of an `Import`, `ImportSecure` or `Copy` operation targets a source that contains an operating system. Valid values are `Linux` or `Windows`.
  /// [performancePlusEnabled] Specifies whether Performance Plus is enabled for this Managed Disk. Defaults to `false`. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether it is allowed to access the disk via public network. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created.
  /// [secureVmDiskEncryptionSetId] The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  /// [securityType] Security Type of the Managed Disk when it is used for a Confidential VM. Possible values are `ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey`, `ConfidentialVM_DiskEncryptedWithPlatformKey` and `ConfidentialVM_DiskEncryptedWithCustomerKey`. Changing this forces a new resource to be created.
  /// [sourceResourceId] The ID of an existing Managed Disk or Snapshot to copy when `create_option` is `Copy` or the recovery point to restore when `create_option` is `Restore`. Changing this forces a new resource to be created.
  /// [sourceUri] URI to a valid VHD file to be used when `create_option` is `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the Storage Account where the `source_uri` is located. Required when `create_option` is set to `Import` or `ImportSecure`. Changing this forces a new resource to be created.
  /// [storageAccountType] The type of storage to use for the managed disk. Possible values are `Standard_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `StandardSSD_LRS` or `UltraSSD_LRS`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tier] The disk performance tier to use. Possible values are documented [here](https://docs.microsoft.com/azure/virtual-machines/disks-change-performance). This feature is currently supported only for premium SSDs.
  /// [trustedLaunchEnabled] Specifies if Trusted Launch is enabled for the Managed Disk. Changing this forces a new resource to be created.
  /// [uploadSizeBytes] Specifies the size of the managed disk to create in bytes. Required when `create_option` is `Upload`. The value must be equal to the source disk to be copied in bytes. Source disk size could be calculated with `ls -l` or `wc -c`. More information can be found at [Copy a managed disk](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/disks-upload-vhd-to-managed-disk-cli#copy-a-managed-disk). Changing this forces a new resource to be created.
  /// [zone] Specifies the Availability Zone in which this Managed Disk should be located. Changing this property forces a new resource to be created.
  ManagedDiskState({
    this.createOption,
    this.diskAccessId,
    this.diskEncryptionSetId,
    this.diskIopsReadOnly,
    this.diskIopsReadWrite,
    this.diskMbpsReadOnly,
    this.diskMbpsReadWrite,
    this.diskSizeGb,
    this.edgeZone,
    this.encryptionSettings,
    this.galleryImageReferenceId,
    this.hyperVGeneration,
    this.imageReferenceId,
    this.location,
    this.logicalSectorSize,
    this.maxShares,
    this.name,
    this.networkAccessPolicy,
    this.onDemandBurstingEnabled,
    this.optimizedFrequentAttachEnabled,
    this.osType,
    this.performancePlusEnabled,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.secureVmDiskEncryptionSetId,
    this.securityType,
    this.sourceResourceId,
    this.sourceUri,
    this.storageAccountId,
    this.storageAccountType,
    this.tags,
    this.tier,
    this.trustedLaunchEnabled,
    this.uploadSizeBytes,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': ?createOption,
      'diskAccessId': ?diskAccessId,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskIopsReadOnly': ?diskIopsReadOnly,
      'diskIopsReadWrite': ?diskIopsReadWrite,
      'diskMbpsReadOnly': ?diskMbpsReadOnly,
      'diskMbpsReadWrite': ?diskMbpsReadWrite,
      'diskSizeGb': ?diskSizeGb,
      'edgeZone': ?edgeZone,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<ManagedDiskEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'galleryImageReferenceId': ?galleryImageReferenceId,
      'hyperVGeneration': ?hyperVGeneration,
      'imageReferenceId': ?imageReferenceId,
      'location': ?location,
      'logicalSectorSize': ?logicalSectorSize,
      'maxShares': ?maxShares,
      'name': ?name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'onDemandBurstingEnabled': ?onDemandBurstingEnabled,
      'optimizedFrequentAttachEnabled': ?optimizedFrequentAttachEnabled,
      'osType': ?osType,
      'performancePlusEnabled': ?performancePlusEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'secureVmDiskEncryptionSetId': ?secureVmDiskEncryptionSetId,
      'securityType': ?securityType,
      'sourceResourceId': ?sourceResourceId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'tier': ?tier,
      'trustedLaunchEnabled': ?trustedLaunchEnabled,
      'uploadSizeBytes': ?uploadSizeBytes,
      'zone': ?zone,
    };
  }

  factory ManagedDiskState.fromMap(Map<String, dynamic> map) {
    return ManagedDiskState(
      createOption: map['createOption'] == null ? null : (map['createOption'] as String).input(),
      diskAccessId: map['diskAccessId'] == null ? null : (map['diskAccessId'] as String).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      diskIopsReadOnly: map['diskIopsReadOnly'] == null ? null : (map['diskIopsReadOnly'] as int).input(),
      diskIopsReadWrite: map['diskIopsReadWrite'] == null ? null : (map['diskIopsReadWrite'] as int).input(),
      diskMbpsReadOnly: map['diskMbpsReadOnly'] == null ? null : (map['diskMbpsReadOnly'] as int).input(),
      diskMbpsReadWrite: map['diskMbpsReadWrite'] == null ? null : (map['diskMbpsReadWrite'] as int).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      edgeZone: map['edgeZone'] == null ? null : (map['edgeZone'] as String).input(),
      encryptionSettings: map['encryptionSettings'] == null ? null : (ManagedDiskEncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>())).input(),
      galleryImageReferenceId: map['galleryImageReferenceId'] == null ? null : (map['galleryImageReferenceId'] as String).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration'] as String).input(),
      imageReferenceId: map['imageReferenceId'] == null ? null : (map['imageReferenceId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logicalSectorSize: map['logicalSectorSize'] == null ? null : (map['logicalSectorSize'] as int).input(),
      maxShares: map['maxShares'] == null ? null : (map['maxShares'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkAccessPolicy: map['networkAccessPolicy'] == null ? null : (map['networkAccessPolicy'] as String).input(),
      onDemandBurstingEnabled: map['onDemandBurstingEnabled'] == null ? null : (map['onDemandBurstingEnabled'] as bool).input(),
      optimizedFrequentAttachEnabled: map['optimizedFrequentAttachEnabled'] == null ? null : (map['optimizedFrequentAttachEnabled'] as bool).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      performancePlusEnabled: map['performancePlusEnabled'] == null ? null : (map['performancePlusEnabled'] as bool).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secureVmDiskEncryptionSetId: map['secureVmDiskEncryptionSetId'] == null ? null : (map['secureVmDiskEncryptionSetId'] as String).input(),
      securityType: map['securityType'] == null ? null : (map['securityType'] as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId'] as String).input(),
      sourceUri: map['sourceUri'] == null ? null : (map['sourceUri'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      trustedLaunchEnabled: map['trustedLaunchEnabled'] == null ? null : (map['trustedLaunchEnabled'] as bool).input(),
      uploadSizeBytes: map['uploadSizeBytes'] == null ? null : (map['uploadSizeBytes'] as int).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

