// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_os_disk_diff_disk_settings.dart';

class WindowsVirtualMachineOsDisk {
  /// The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `diff_disk_settings` can only be set when `caching` is set to `ReadOnly`. More information can be found [here](https://docs.microsoft.com/azure/virtual-machines/ephemeral-os-disks-deploy#vm-template-deployment). Additionally, this property cannot be set when an existing Managed Disk is used to create the Virtual Machine by setting `os_managed_disk_id`.
  final pulumi.Input<WindowsVirtualMachineOsDiskDiffDiskSettings>? diffDiskSettings;
  /// The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with `secure_vm_disk_encryption_set_id`.
  ///
  /// &gt; **NOTE:** The Disk Encryption Set must have the `Reader` Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from.
  ///
  /// &gt; **NOTE:** If specified this must be equal to or larger than the size of the Image the Virtual Machine is based on. When creating a larger disk than exists in the image you'll need to repartition the disk to use the remaining space.
  final pulumi.Input<int>? diskSizeGb;
  /// The ID of the OS disk.
  final pulumi.Input<String>? id;
  /// The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** a value for `name` cannot be specified if/when the Virtual Machine has been created using an existing Managed Disk for the OS by setting `os_managed_disk_id`.
  final pulumi.Input<String>? name;
  /// The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `secure_vm_disk_encryption_set_id` can only be specified when `security_encryption_type` is set to `DiskWithVMGuestState`.
  final pulumi.Input<String>? secureVmDiskEncryptionSetId;
  /// Encryption Type when the Virtual Machine is a Confidential VM. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `vtpm_enabled` must be set to `true` when `security_encryption_type` is specified.
  ///
  /// &gt; **NOTE:** `encryption_at_host_enabled` cannot be set to `true` when `security_encryption_type` is set to `DiskWithVMGuestState`.
  final pulumi.Input<String>? securityEncryptionType;
  /// The Type of Storage Account which should back this the Internal OS Disk. Possible values are `Standard_LRS`, `StandardSSD_LRS`, `Premium_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  final pulumi.Input<String>? storageAccountType;
  /// Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  ///
  /// &gt; **NOTE:** This requires that the `storage_account_type` is set to `Premium_LRS` and that `caching` is set to `None`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [WindowsVirtualMachineOsDisk].
  /// [caching] The Type of Caching which should be used for the Internal OS Disk. Possible values are `None`, `ReadOnly` and `ReadWrite`.
  /// [diffDiskSettings] A `diff_disk_settings` block as defined above. Changing this forces a new resource to be created.
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with `secure_vm_disk_encryption_set_id`.
  /// [diskSizeGb] The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from.
  /// [id] The ID of the OS disk.
  /// [name] The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created.
  /// [secureVmDiskEncryptionSetId] The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with `disk_encryption_set_id`. Changing this forces a new resource to be created.
  /// [securityEncryptionType] Encryption Type when the Virtual Machine is a Confidential VM. Possible values are `VMGuestStateOnly` and `DiskWithVMGuestState`. Changing this forces a new resource to be created.
  /// [storageAccountType] The Type of Storage Account which should back this the Internal OS Disk. Possible values are `Standard_LRS`, `StandardSSD_LRS`, `Premium_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Should Write Accelerator be Enabled for this OS Disk? Defaults to `false`.
  const WindowsVirtualMachineOsDisk({
    required this.caching,
    this.diffDiskSettings,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    this.id,
    this.name,
    this.secureVmDiskEncryptionSetId,
    this.securityEncryptionType,
    this.storageAccountType,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'diffDiskSettings': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineOsDiskDiffDiskSettings, Map<String, dynamic>>(diffDiskSettings, (value) => value.toMap()),
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': ?diskSizeGb,
      'id': ?id,
      'name': ?name,
      'secureVmDiskEncryptionSetId': ?secureVmDiskEncryptionSetId,
      'securityEncryptionType': ?securityEncryptionType,
      'storageAccountType': ?storageAccountType,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory WindowsVirtualMachineOsDisk.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineOsDisk(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      diffDiskSettings: (() { final guardedValue = map['diffDiskSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineOsDiskDiffDiskSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secureVmDiskEncryptionSetId: (() { final guardedValue = map['secureVmDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityEncryptionType: (() { final guardedValue = map['securityEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

