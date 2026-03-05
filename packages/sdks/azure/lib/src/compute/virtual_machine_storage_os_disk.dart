// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageOsDisk {
  /// Specifies the caching requirements for the OS Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// Specifies how the OS Disk should be created. Possible values are `Attach` (managed disks only) and `FromImage`.
  final pulumi.Input<String> createOption;
  /// Specifies the size of the OS Disk in gigabytes.
  final pulumi.Input<int>? diskSizeGb;
  /// Specifies the Image URI in the format `publisherName:offer:skus:version`. This field can also specify the [VHD URI](https://docs.microsoft.com/azure/virtual-machines/linux/tutorial-custom-images) of a custom VM image to clone. When cloning a Custom (Unmanaged) Disk Image the `os_type` field must be set.
  final pulumi.Input<String>? imageUri;
  /// Specifies the ID of an existing Managed Disk which should be attached as the OS Disk of this Virtual Machine. If this is set then the `create_option` must be set to `Attach`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedDiskId;
  /// Specifies the type of Managed Disk which should be created. Possible values are `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`.
  ///
  /// The following properties apply when using Unmanaged Disks:
  final pulumi.Input<String>? managedDiskType;
  /// Specifies the name of the OS Disk.
  final pulumi.Input<String> name;
  /// Specifies the Operating System on the OS Disk. Possible values are `Linux` and `Windows`.
  final pulumi.Input<String>? osType;
  /// Specifies the URI of the VHD file backing this Unmanaged OS Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vhdUri;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  ///
  /// The following properties apply when using Managed Disks:
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [VirtualMachineStorageOsDisk].
  /// [caching] Specifies the caching requirements for the OS Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] Specifies how the OS Disk should be created. Possible values are `Attach` (managed disks only) and `FromImage`.
  /// [diskSizeGb] Specifies the size of the OS Disk in gigabytes.
  /// [imageUri] Specifies the Image URI in the format `publisherName:offer:skus:version`. This field can also specify the [VHD URI](https://docs.microsoft.com/azure/virtual-machines/linux/tutorial-custom-images) of a custom VM image to clone. When cloning a Custom (Unmanaged) Disk Image the `os_type` field must be set.
  /// [managedDiskId] Specifies the ID of an existing Managed Disk which should be attached as the OS Disk of this Virtual Machine. If this is set then the `create_option` must be set to `Attach`. Changing this forces a new resource to be created.
  /// [managedDiskType] Specifies the type of Managed Disk which should be created. Possible values are `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`.
  /// [name] Specifies the name of the OS Disk.
  /// [osType] Specifies the Operating System on the OS Disk. Possible values are `Linux` and `Windows`.
  /// [vhdUri] Specifies the URI of the VHD file backing this Unmanaged OS Disk. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  VirtualMachineStorageOsDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    this.imageUri,
    this.managedDiskId,
    this.managedDiskType,
    required this.name,
    this.osType,
    this.vhdUri,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': createOption,
      'diskSizeGb': ?diskSizeGb,
      'imageUri': ?imageUri,
      'managedDiskId': ?managedDiskId,
      'managedDiskType': ?managedDiskType,
      'name': name,
      'osType': ?osType,
      'vhdUri': ?vhdUri,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory VirtualMachineStorageOsDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageOsDisk(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedDiskType: (() { final guardedValue = map['managedDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhdUri: (() { final guardedValue = map['vhdUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

