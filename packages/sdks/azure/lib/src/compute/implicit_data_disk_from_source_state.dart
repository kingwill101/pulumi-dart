// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImplicitDataDiskFromSource resources.
class ImplicitDataDiskFromSourceState {
  /// Specifies the caching requirements for this Data Disk. Possible values are `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// Specifies the Create Option of the Data Disk. The only possible value is `Copy`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createOption;
  /// Specifies the size of the Data Disk in gigabytes.
  ///
  /// > **Note:** Updating `disk_size_gb` to shrink the disk size is not supported on Azure and forces a new Data Disk to be created.
  ///
  /// > **Note:** In certain conditions the Data Disk size can be updated without shutting down the Virtual Machine, however only a subset of Virtual Machine SKUs/Disk combinations support this. More information can be found [for Linux Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/expand-disks?tabs=azure-cli%2Cubuntu#expand-without-downtime) and [Windows Virtual Machines](https://learn.microsoft.com/azure/virtual-machines/windows/expand-os-disk#expand-without-downtime) respectively.
  ///
  /// > **Note:** If the VM does not meet the requirements to expand the disk without downtime, changing this value is disruptive. The VM will be shut down and deallocated as required by Azure to action the change. Terraform will attempt to start the VM again after the update if it was in a `running` state prior to the change.
  ///
  /// > **Note:** Expanding Ultra Disks and Premium SSD v2 disks without downtime has additional limitations. Allow up to 10 minutes for the correct size to be reflected, and a `rescan` function may be required. For more details, refer to [Expand with Ultra Disks and Premium SSD v2](https://learn.microsoft.com/azure/virtual-machines/linux/expand-disks?tabs=ubuntu#expand-with-ultra-disks-and-premium-ssd-v2).
  final pulumi.Input<int>? diskSizeGb;
  /// The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<int>? lun;
  /// Specifies the name of this Data Disk. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the source resource which this Data Disk was created from. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [ImplicitDataDiskFromSourceState].
  /// [caching] Specifies the caching requirements for this Data Disk. Possible values are `ReadOnly` and `ReadWrite`.
  /// [createOption] Specifies the Create Option of the Data Disk. The only possible value is `Copy`. Changing this forces a new resource to be created.
  /// [diskSizeGb] Specifies the size of the Data Disk in gigabytes.
  /// [lun] The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Data Disk. Changing this forces a new resource to be created.
  /// [sourceResourceId] The ID of the source resource which this Data Disk was created from. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  ImplicitDataDiskFromSourceState({
    this.caching,
    this.createOption,
    this.diskSizeGb,
    this.lun,
    this.name,
    this.sourceResourceId,
    this.virtualMachineId,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': ?createOption,
      'diskSizeGb': ?diskSizeGb,
      'lun': ?lun,
      'name': ?name,
      'sourceResourceId': ?sourceResourceId,
      'virtualMachineId': ?virtualMachineId,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory ImplicitDataDiskFromSourceState.fromMap(Map<String, dynamic> map) {
    return ImplicitDataDiskFromSourceState(
      caching: map['caching'] == null ? null : (map['caching'] as String).input(),
      createOption: map['createOption'] == null ? null : (map['createOption'] as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      lun: map['lun'] == null ? null : (map['lun'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId'] as String).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId'] as String).input(),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : (map['writeAcceleratorEnabled'] as bool).input(),
    );
  }
}

