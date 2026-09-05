// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_os_disk_diff_disk_settings.dart';

class WindowsVirtualMachineScaleSetOsDisk {
  /// The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// A `diffDiskSettings` block as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings?>? diffDiskSettings;
  /// The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with `secureVmDiskEncryptionSetId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// &gt; **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  ///
  /// &gt; **Note:** If specified this must be equal to or larger than the size of the Image the VM Scale Set is based on. When creating a larger disk than exists in the image you'll need to repartition the disk to use the remaining space.
  final pulumi.Input<int?>? diskSizeGb;
  /// The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with `diskEncryptionSetId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `secureVmDiskEncryptionSetId` can only be specified when `securityEncryptionType` is set to `DiskWithVMGuestState`.
  final pulumi.Input<String?>? secureVmDiskEncryptionSetId;
  /// Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `vtpmEnabled` must be set to `true` when `securityEncryptionType` is specified.
  ///
  /// &gt; **Note:** `encryptionAtHostEnabled` cannot be set to `true` when `securityEncryptionType` is set to `DiskWithVMGuestState`.
  final pulumi.Input<String?>? securityEncryptionType;
  /// The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountType;
  /// Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  ///
  /// &gt; **Note:** This requires that the `storageAccountType` is set to `Premium_LRS` and that `caching` is set to `None`.
  final pulumi.Input<bool?>? writeAcceleratorEnabled;

  /// Creates a new [WindowsVirtualMachineScaleSetOsDisk].
  /// [caching] The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [diffDiskSettings] A `diffDiskSettings` block as defined above. Changing this forces a new resource to be created.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with `secureVmDiskEncryptionSetId`. Changing this forces a new resource to be created.
  /// [diskSizeGb] The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  /// [secureVmDiskEncryptionSetId] The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with `diskEncryptionSetId`. Changing this forces a new resource to be created.
  /// [securityEncryptionType] Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  /// [storageAccountType] The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  const WindowsVirtualMachineScaleSetOsDisk({
    required this.caching,
    this.diffDiskSettings,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    this.secureVmDiskEncryptionSetId,
    this.securityEncryptionType,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diffDiskSettings': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings, Map<String, dynamic>>(diffDiskSettings, (value) => value.toMap()),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': ?diskSizeGb,
      'secureVmDiskEncryptionSetId': ?secureVmDiskEncryptionSetId,
      'securityEncryptionType': ?securityEncryptionType,
      'storageAccountType': storageAccountType,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory WindowsVirtualMachineScaleSetOsDisk.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetOsDisk(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diffDiskSettings: (() { final guardedValue = map['diffDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      secureVmDiskEncryptionSetId: (() { final guardedValue = map['secureVmDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityEncryptionType: (() { final guardedValue = map['securityEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: pulumi.Input.fromValue(map['storageAccountType'] as String),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
