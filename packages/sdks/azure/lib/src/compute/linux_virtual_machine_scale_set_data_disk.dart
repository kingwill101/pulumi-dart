// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetDataDisk {
  /// The type of Caching which should be used for this Data Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// The create option which should be used for this Data Disk. Possible values are `Empty` and `FromImage`. Defaults to `Empty`. (`FromImage` should only be used if the source image includes data disks).
  final pulumi.Input<String>? createOption;
  /// The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// > **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The size of the Data Disk which should be created.
  final pulumi.Input<int> diskSizeGb;
  /// The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
  final pulumi.Input<int> lun;
  /// The name of the Data Disk.
  final pulumi.Input<String>? name;
  /// The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  ///
  /// > **Note:** `UltraSSD_LRS` is only supported when `ultra_ssd_enabled` within the `additional_capabilities` block is enabled.
  final pulumi.Input<String> storageAccountType;
  /// Specifies the Read-Write IOPS for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int>? ultraSsdDiskIopsReadWrite;
  /// Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int>? ultraSsdDiskMbpsReadWrite;
  /// Should Write Accelerator be enabled for this Data Disk? Defaults to `false`.
  ///
  /// > **Note:** This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [LinuxVirtualMachineScaleSetDataDisk].
  /// [caching] The type of Caching which should be used for this Data Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] The create option which should be used for this Data Disk. Possible values are `Empty` and `FromImage`. Defaults to `Empty`. (`FromImage` should only be used if the source image includes data disks).
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created.
  /// [diskSizeGb] The size of the Data Disk which should be created.
  /// [lun] The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
  /// [name] The name of the Data Disk.
  /// [storageAccountType] The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  /// [ultraSsdDiskIopsReadWrite] Specifies the Read-Write IOPS for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [ultraSsdDiskMbpsReadWrite] Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [writeAcceleratorEnabled] Should Write Accelerator be enabled for this Data Disk? Defaults to `false`.
  LinuxVirtualMachineScaleSetDataDisk({
    required this.caching,
    this.createOption,
    this.diskEncryptionSetId,
    required this.diskSizeGb,
    required this.lun,
    this.name,
    required this.storageAccountType,
    this.ultraSsdDiskIopsReadWrite,
    this.ultraSsdDiskMbpsReadWrite,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'createOption': ?createOption,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': diskSizeGb,
      'lun': lun,
      'name': ?name,
      'storageAccountType': storageAccountType,
      'ultraSsdDiskIopsReadWrite': ?ultraSsdDiskIopsReadWrite,
      'ultraSsdDiskMbpsReadWrite': ?ultraSsdDiskMbpsReadWrite,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory LinuxVirtualMachineScaleSetDataDisk.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetDataDisk(
      caching: (map['caching'] as String).input(),
      createOption: map['createOption'] == null ? null : (map['createOption'] as String).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      diskSizeGb: (map['diskSizeGb'] as int).input(),
      lun: (map['lun'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageAccountType: (map['storageAccountType'] as String).input(),
      ultraSsdDiskIopsReadWrite: map['ultraSsdDiskIopsReadWrite'] == null ? null : (map['ultraSsdDiskIopsReadWrite'] as int).input(),
      ultraSsdDiskMbpsReadWrite: map['ultraSsdDiskMbpsReadWrite'] == null ? null : (map['ultraSsdDiskMbpsReadWrite'] as int).input(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : (map['writeAcceleratorEnabled'] as bool).input(),
    );
  }
}

