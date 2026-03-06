// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_data_disk_attachment_data_disk_attachment_args_doc}
/// The set of arguments for DataDiskAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_data_disk_attachment_data_disk_attachment_args_doc}
class DataDiskAttachmentArgs {
  /// Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  final pulumi.Input<String> caching;
  /// The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? createOption;
  /// The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<int> lun;
  /// The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedDiskId;
  /// The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  final pulumi.Input<bool>? writeAcceleratorEnabled;

  /// Creates a new [DataDiskAttachmentArgs].
  /// [caching] Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  /// [createOption] The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created.
  /// [lun] The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  /// [managedDiskId] The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  /// [writeAcceleratorEnabled] Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  const DataDiskAttachmentArgs({
    required this.caching,
    this.createOption,
    required this.lun,
    required this.managedDiskId,
    required this.virtualMachineId,
    this.writeAcceleratorEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': caching,
      'createOption': ?createOption,
      'lun': lun,
      'managedDiskId': managedDiskId,
      'virtualMachineId': virtualMachineId,
      'writeAcceleratorEnabled': ?writeAcceleratorEnabled,
    };
  }

  factory DataDiskAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DataDiskAttachmentArgs(
      caching: pulumi.Input.fromValue(map['caching'] as String),
      createOption: (() { final guardedValue = map['createOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
      managedDiskId: pulumi.Input.fromValue(map['managedDiskId'] as String),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
      writeAcceleratorEnabled: (() { final guardedValue = map['writeAcceleratorEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

