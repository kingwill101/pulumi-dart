// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetDataDisk {
  /// The type of Caching which should be used for this Data Disk. Possible values are None, ReadOnly and ReadWrite.
  final pulumi.Input<String> caching;
  /// The create option which should be used for this Data Disk. Possible values are Empty and FromImage. Defaults to `Empty`. (FromImage should only be used if the source image includes data disks).
  final pulumi.Input<String>? createOption;
  /// The ID of the Disk Encryption Set which should be used to encrypt the Data Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The size of the Data Disk which should be created. Required if `create_option` is specified as `Empty`.
  final pulumi.Input<int>? diskSizeGb;
  /// The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine. Required if `create_option` is specified as `Empty`.
  final pulumi.Input<int>? lun;
  /// The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  final pulumi.Input<String> storageAccountType;
  /// Specifies the Read-Write IOPS for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int>? ultraSsdDiskIopsReadWrite;
  /// Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int>? ultraSsdDiskMbpsReadWrite;
  /// Specifies if Write Accelerator is enabled on the Data Disk. Defaults to `false`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [OrchestratedVirtualMachineScaleSetDataDisk].
  /// [caching] The type of Caching which should be used for this Data Disk. Possible values are None, ReadOnly and ReadWrite.
  /// [createOption] The create option which should be used for this Data Disk. Possible values are Empty and FromImage. Defaults to `Empty`. (FromImage should only be used if the source image includes data disks).
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt the Data Disk. Changing this forces a new resource to be created.
  /// [diskSizeGb] The size of the Data Disk which should be created. Required if `create_option` is specified as `Empty`.
  /// [lun] The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine. Required if `create_option` is specified as `Empty`.
  /// [storageAccountType] The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  /// [ultraSsdDiskIopsReadWrite] Specifies the Read-Write IOPS for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [ultraSsdDiskMbpsReadWrite] Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storage_account_type` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the Data Disk. Defaults to `false`.
  OrchestratedVirtualMachineScaleSetDataDisk({
    required this.caching,
    this.createOption,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    this.lun,
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
      'diskSizeGb': ?diskSizeGb,
      'lun': ?lun,
      'storageAccountType': storageAccountType,
      'ultraSsdDiskIopsReadWrite': ?ultraSsdDiskIopsReadWrite,
      'ultraSsdDiskMbpsReadWrite': ?ultraSsdDiskMbpsReadWrite,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OrchestratedVirtualMachineScaleSetDataDisk.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetDataDisk(
      caching: (map['caching'] as String).input(),
      createOption: map['createOption'] == null ? null : (map['createOption']! as String).input(),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb']! as int).input(),
      lun: map['lun'] == null ? null : (map['lun']! as int).input(),
      storageAccountType: (map['storageAccountType'] as String).input(),
      ultraSsdDiskIopsReadWrite: map['ultraSsdDiskIopsReadWrite'] == null ? null : (map['ultraSsdDiskIopsReadWrite']! as int).input(),
      ultraSsdDiskMbpsReadWrite: map['ultraSsdDiskMbpsReadWrite'] == null ? null : (map['ultraSsdDiskMbpsReadWrite']! as int).input(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : (map['writeAcceleratorEnabled']! as bool).input(),
    );
  }
}

