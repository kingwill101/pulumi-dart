// ignore_for_file: unused_element, unnecessary_cast

import 'orchestrated_virtual_machine_scale_set_os_disk_diff_disk_settings.dart';

class OrchestratedVirtualMachineScaleSetOsDisk {
  /// The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final String caching;
  /// A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  final OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings? diffDiskSettings;
  /// The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final String? diskEncryptionSetId;
  /// The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  final int? diskSizeGb;
  /// The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final String storageAccountType;
  /// Specifies if Write Accelerator is enabled on the OS Disk. Defaults to `false`.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsDisk].
  /// [caching] The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [diffDiskSettings] A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created.
  /// [diskSizeGb] The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  /// [storageAccountType] The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the OS Disk. Defaults to `false`.
  OrchestratedVirtualMachineScaleSetOsDisk({
    required this.caching,
    this.diffDiskSettings,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diffDiskSettings': ?diffDiskSettings == null ? null : diffDiskSettings!.toMap(),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': ?diskSizeGb,
      'storageAccountType': storageAccountType,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsDisk.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsDisk(
      caching: map['caching'] as String,
      diffDiskSettings: map['diffDiskSettings'] == null ? null : OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap((map['diffDiskSettings'] as Map).cast<String, dynamic>()),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      storageAccountType: map['storageAccountType'] as String,
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

