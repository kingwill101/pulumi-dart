// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineManagerVirtualMachineInstanceStorageDisk {
  /// The disk bus. Possible values are between `0` and `3`.
  final pulumi.Input<int>? bus;
  /// The disk bus type. Possible values are `IDE` and `SCSI`.
  final pulumi.Input<String>? busType;
  /// The disk total size.
  final pulumi.Input<int>? diskSizeGb;
  /// The disk lun. Possible values are between `0` and `63`.
  final pulumi.Input<int>? lun;
  /// The name of the disk.
  final pulumi.Input<String>? name;
  /// The name of the Storage QoS policy.
  final pulumi.Input<String>? storageQosPolicyName;
  /// The disk ID in the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  final pulumi.Input<String>? templateDiskId;
  /// The disk vhd type. Possible values are `Dynamic` and `Fixed`.
  final pulumi.Input<String>? vhdType;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceStorageDisk].
  /// [bus] The disk bus. Possible values are between `0` and `3`.
  /// [busType] The disk bus type. Possible values are `IDE` and `SCSI`.
  /// [diskSizeGb] The disk total size.
  /// [lun] The disk lun. Possible values are between `0` and `63`.
  /// [name] The name of the disk.
  /// [storageQosPolicyName] The name of the Storage QoS policy.
  /// [templateDiskId] The disk ID in the System Center Virtual Machine Manager Virtual Machine Template. Changing this forces a new resource to be created.
  /// [vhdType] The disk vhd type. Possible values are `Dynamic` and `Fixed`.
  const VirtualMachineManagerVirtualMachineInstanceStorageDisk({
    this.bus,
    this.busType,
    this.diskSizeGb,
    this.lun,
    this.name,
    this.storageQosPolicyName,
    this.templateDiskId,
    this.vhdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'busType': ?busType,
      'diskSizeGb': ?diskSizeGb,
      'lun': ?lun,
      'name': ?name,
      'storageQosPolicyName': ?storageQosPolicyName,
      'templateDiskId': ?templateDiskId,
      'vhdType': ?vhdType,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceStorageDisk.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceStorageDisk(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      busType: (() { final guardedValue = map['busType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageQosPolicyName: (() { final guardedValue = map['storageQosPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateDiskId: (() { final guardedValue = map['templateDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhdType: (() { final guardedValue = map['vhdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

