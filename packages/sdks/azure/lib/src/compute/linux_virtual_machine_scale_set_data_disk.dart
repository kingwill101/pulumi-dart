// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetDataDisk {
  /// The type of Caching which should be used for this Data Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// The create option which should be used for this Data Disk. Possible values are `Empty` and `FromImage`. Defaults to `Empty`. (`FromImage` should only be used if the source image includes data disks).
  final pulumi.Input<String?>? createOption;
  /// The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// &gt; **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// Specifies the Read-Write IOPS for this Data Disk. Only settable when `storageAccountType` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int?>? diskIopsReadWrite;
  /// Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storageAccountType` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  final pulumi.Input<int?>? diskMbpsReadWrite;
  /// The size of the Data Disk which should be created.
  final pulumi.Input<int> diskSizeGb;
  /// The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
  final pulumi.Input<int> lun;
  /// The name of the Data Disk.
  final pulumi.Input<String?>? name;
  /// The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  ///
  /// &gt; **Note:** `UltraSSD_LRS` is only supported when `ultraSsdEnabled` within the `additionalCapabilities` block is enabled.
  final pulumi.Input<String> storageAccountType;
  final pulumi.Input<int?>? ultraSsdDiskIopsReadWrite;
  final pulumi.Input<int?>? ultraSsdDiskMbpsReadWrite;
  /// Should Write Accelerator be enabled for this Data Disk? Defaults to `false`.
  ///
  /// &gt; **Note:** This requires that the `storageAccountType` is set to `Premium_LRS` and that `caching` is set to `None`.
  final pulumi.Input<bool?>? writeAcceleratorEnabled;

  /// Creates a new [LinuxVirtualMachineScaleSetDataDisk].
  /// [caching] The type of Caching which should be used for this Data Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] The create option which should be used for this Data Disk. Possible values are `Empty` and `FromImage`. Defaults to `Empty`. (`FromImage` should only be used if the source image includes data disks).
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this Data Disk. Changing this forces a new resource to be created.
  /// [diskIopsReadWrite] Specifies the Read-Write IOPS for this Data Disk. Only settable when `storageAccountType` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [diskMbpsReadWrite] Specifies the bandwidth in MB per second for this Data Disk. Only settable when `storageAccountType` is `PremiumV2_LRS` or `UltraSSD_LRS`.
  /// [diskSizeGb] The size of the Data Disk which should be created.
  /// [lun] The Logical Unit Number of the Data Disk, which must be unique within the Virtual Machine.
  /// [name] The name of the Data Disk.
  /// [storageAccountType] The Type of Storage Account which should back this Data Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS` and `UltraSSD_LRS`.
  /// [ultraSsdDiskIopsReadWrite] Optional.
  /// [ultraSsdDiskMbpsReadWrite] Optional.
  /// [writeAcceleratorEnabled] Should Write Accelerator be enabled for this Data Disk? Defaults to `false`.
  const LinuxVirtualMachineScaleSetDataDisk({
    required this.caching,
    this.createOption,
    this.diskEncryptionSetId,
    this.diskIopsReadWrite,
    this.diskMbpsReadWrite,
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
      'diskIopsReadWrite': ?diskIopsReadWrite,
      'diskMbpsReadWrite': ?diskMbpsReadWrite,
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
      caching: pulumi.Input.fromValue(map['caching'] as String),
      createOption: (() { final guardedValue = map['createOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIopsReadWrite: (() { final guardedValue = map['diskIopsReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      diskMbpsReadWrite: (() { final guardedValue = map['diskMbpsReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      diskSizeGb: pulumi.Input.fromValue((map['diskSizeGb'] as num).toInt()),
      lun: pulumi.Input.fromValue((map['lun'] as num).toInt()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: pulumi.Input.fromValue(map['storageAccountType'] as String),
      ultraSsdDiskIopsReadWrite: (() { final guardedValue = map['ultraSsdDiskIopsReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ultraSsdDiskMbpsReadWrite: (() { final guardedValue = map['ultraSsdDiskMbpsReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
