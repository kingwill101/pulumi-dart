// ignore_for_file: unused_element, unnecessary_cast

import 'linux_virtual_machine_scale_set_os_disk_diff_disk_settings.dart';

class LinuxVirtualMachineScaleSetOsDisk {
  /// The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final String caching;
  /// A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  final LinuxVirtualMachineScaleSetOsDiskDiffDiskSettings? diffDiskSettings;
  /// The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with `secure_vm_disk_encryption_set_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  ///
  /// > **Note:** Disk Encryption Sets are in Public Preview in a limited set of regions
  final String? diskEncryptionSetId;
  /// The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  ///
  /// > **Note:** If specified this must be equal to or larger than the size of the Image the VM Scale Set is based on. When creating a larger disk than exists in the image you'll need to repartition the disk to use the remaining space.
  final int? diskSizeGb;
  /// The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `secure_vm_disk_encryption_set_id` can only be specified when `security_encryption_type` is set to `DiskWithVMGuestState`.
  final String? secureVmDiskEncryptionSetId;
  /// Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `vtpm_enabled` must be set to `true` when `security_encryption_type` is specified.
  ///
  /// > **Note:** `encryption_at_host_enabled` cannot be set to `true` when `security_encryption_type` is set to `DiskWithVMGuestState`.
  final String? securityEncryptionType;
  /// The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final String storageAccountType;
  /// Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  ///
  /// > **Note:** This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`.
  final bool? writeAcceleratorEnabled;

  /// Creates a new [LinuxVirtualMachineScaleSetOsDisk].
  /// [caching] The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [diffDiskSettings] A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to encrypt this OS Disk. Conflicts with `secure_vm_disk_encryption_set_id`. Changing this forces a new resource to be created.
  /// [diskSizeGb] The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine Scale Set is sourced from.
  /// [secureVmDiskEncryptionSetId] The ID of the Disk Encryption Set which should be used to Encrypt the OS Disk when the Virtual Machine Scale Set is Confidential VMSS. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  /// [securityEncryptionType] Encryption Type when the Virtual Machine Scale Set is Confidential VMSS. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  /// [storageAccountType] The Type of Storage Account which should back this the Internal OS Disk. Possible values include `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS`, `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  LinuxVirtualMachineScaleSetOsDisk({
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
      'diffDiskSettings': ?diffDiskSettings == null ? null : diffDiskSettings!.toMap(),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': ?diskSizeGb,
      'secureVmDiskEncryptionSetId': ?secureVmDiskEncryptionSetId,
      'securityEncryptionType': ?securityEncryptionType,
      'storageAccountType': storageAccountType,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory LinuxVirtualMachineScaleSetOsDisk.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetOsDisk(
      caching: map['caching'] as String,
      diffDiskSettings: map['diffDiskSettings'] == null ? null : LinuxVirtualMachineScaleSetOsDiskDiffDiskSettings.fromMap((map['diffDiskSettings'] as Map).cast<String, dynamic>()),
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      secureVmDiskEncryptionSetId: map['secureVmDiskEncryptionSetId'] == null ? null : map['secureVmDiskEncryptionSetId'] as String,
      securityEncryptionType: map['securityEncryptionType'] == null ? null : map['securityEncryptionType'] as String,
      storageAccountType: map['storageAccountType'] as String,
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : map['writeAcceleratorEnabled'] as bool,
    );
  }
}

