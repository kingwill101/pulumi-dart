// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageDataDisk {
  /// Specifies the caching requirements for the Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// Specifies how the data disk should be created. Possible values are `Attach`, `FromImage` and `Empty`.
  ///
  /// &gt; **NOTE:** If using an image that does not have data to be written to the Data Disk, use `Empty` as the create option in order to create the desired disk without any data.
  final pulumi.Input<String> createOption;
  /// Specifies the size of the data disk in gigabytes.
  final pulumi.Input<int>? diskSizeGb;
  /// Specifies the logical unit number of the data disk. This needs to be unique within all the Data Disks on the Virtual Machine.
  final pulumi.Input<int> lun;
  /// Specifies the ID of an Existing Managed Disk which should be attached to this Virtual Machine. When this field is set `createOption` must be set to `Attach`.
  ///
  /// The following properties apply when using Unmanaged Disks:
  final pulumi.Input<String>? managedDiskId;
  /// Specifies the type of managed disk to create. Possible values are either `Standard_LRS`, `StandardSSD_LRS`, `Premium_LRS` or `UltraSSD_LRS`.
  ///
  /// &gt; **Note:** `managedDiskType` of type `UltraSSD_LRS` is currently in preview and are not available to subscriptions that have not [requested](https://aka.ms/UltraSSDPreviewSignUp) onboarding to `Azure Ultra Disk Storage` preview. `Azure Ultra Disk Storage` is only available in `East US 2`, `North Europe`, and `Southeast Asia` regions. For more information see the `Azure Ultra Disk Storage` [product documentation](https://docs.microsoft.com/azure/virtual-machines/windows/disks-enable-ultra-ssd), [product blog](https://azure.microsoft.com/en-us/blog/announcing-the-general-availability-of-azure-ultra-disk-storage/) and [FAQ](https://docs.microsoft.com/azure/virtual-machines/windows/faq-for-disks#ultra-disks). You must also set `additional_capabilities.ultra_ssd_enabled` to `true`.
  final pulumi.Input<String>? managedDiskType;
  /// The name of the Data Disk.
  final pulumi.Input<String> name;
  /// Specifies the URI of the VHD file backing this Unmanaged Data Disk.
  final pulumi.Input<String>? vhdUri;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  ///
  /// The following properties apply when using Managed Disks:
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [VirtualMachineStorageDataDisk].
  /// [caching] Specifies the caching requirements for the Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] Specifies how the data disk should be created. Possible values are `Attach`, `FromImage` and `Empty`.
  /// [diskSizeGb] Specifies the size of the data disk in gigabytes.
  /// [lun] Specifies the logical unit number of the data disk. This needs to be unique within all the Data Disks on the Virtual Machine.
  /// [managedDiskId] Specifies the ID of an Existing Managed Disk which should be attached to this Virtual Machine. When this field is set `createOption` must be set to `Attach`.
  /// [managedDiskType] Specifies the type of managed disk to create. Possible values are either `Standard_LRS`, `StandardSSD_LRS`, `Premium_LRS` or `UltraSSD_LRS`.
  /// [name] The name of the Data Disk.
  /// [vhdUri] Specifies the URI of the VHD file backing this Unmanaged Data Disk.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  const VirtualMachineStorageDataDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    required this.lun,
    this.managedDiskId,
    this.managedDiskType,
    required this.name,
    this.vhdUri,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'diskSizeGb': ?diskSizeGb,
      'lun': lun,
      'managedDiskId': ?managedDiskId,
      'managedDiskType': ?managedDiskType,
      'name': name,
      'vhdUri': ?vhdUri,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory VirtualMachineStorageDataDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageDataDisk(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskType: (() { final guardedValue = map['managedDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      vhdUri: (() { final guardedValue = map['vhdUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
