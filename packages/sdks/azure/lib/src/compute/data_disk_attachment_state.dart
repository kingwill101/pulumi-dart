// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataDiskAttachment resources.
class DataDiskAttachmentState {
  /// Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String>? caching;
  /// The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createOption;
  /// The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<int>? lun;
  /// The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedDiskId;
  /// The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [DataDiskAttachmentState].
  /// [caching] Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created.
  /// [lun] The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  /// [managedDiskId] The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  DataDiskAttachmentState({
    pulumi.Output<String>? caching,
    pulumi.Output<String>? createOption,
    pulumi.Output<int>? lun,
    pulumi.Output<String>? managedDiskId,
    pulumi.Output<String>? virtualMachineId,
    pulumi.Output<bool>? writeAcceleratorEnabled,
  }) :
      caching = pulumi.Input.asOptionalInput<String>(caching),
      createOption = pulumi.Input.asOptionalInput<String>(createOption),
      lun = pulumi.Input.asOptionalInput<int>(lun),
      managedDiskId = pulumi.Input.asOptionalInput<String>(managedDiskId),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId),
      writeAcceleratorEnabled = pulumi.Input.asOptionalInput<bool>(writeAcceleratorEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'createOption': ?createOption,
      'lun': ?lun,
      'managedDiskId': ?managedDiskId,
      'virtualMachineId': ?virtualMachineId,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory DataDiskAttachmentState.fromMap(Map<String, dynamic> map) {
    return DataDiskAttachmentState(
      caching: map['caching'] == null ? null : pulumi.Output.create<String>(map['caching'] as String),
      createOption: map['createOption'] == null ? null : pulumi.Output.create<String>(map['createOption'] as String),
      lun: map['lun'] == null ? null : pulumi.Output.create<int>(map['lun'] as int),
      managedDiskId: map['managedDiskId'] == null ? null : pulumi.Output.create<String>(map['managedDiskId'] as String),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
      writeAcceleratorEnabled: map['writeAcceleratorEnabled'] == null ? null : pulumi.Output.create<bool>(map['writeAcceleratorEnabled'] as bool),
    );
  }
}

