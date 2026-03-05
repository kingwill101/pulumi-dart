// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_disk_diff_disk_settings.dart';

class OrchestratedVirtualMachineScaleSetOsDisk {
  /// The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings>? diffDiskSettings;
  /// The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  final pulumi.Input<int>? diskSizeGb;
  /// The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountType;
  /// Specifies if Write Accelerator is enabled on the OS Disk. Defaults to `false`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

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
      'diffDiskSettings': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings, Map<String, dynamic>>(diffDiskSettings, (value) => value.toMap()),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': ?diskSizeGb,
      'storageAccountType': storageAccountType,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsDisk.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsDisk(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diffDiskSettings: (() { final guardedValue = map['diffDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountType: pulumi.Input.fromValue(map['storageAccountType'] as String),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

