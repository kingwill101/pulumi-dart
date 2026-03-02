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
  VirtualMachineManagerVirtualMachineInstanceStorageDisk({
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
      bus: map['bus'] == null ? null : (map['bus'] as int).input(),
      busType: map['busType'] == null ? null : (map['busType'] as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      lun: map['lun'] == null ? null : (map['lun'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageQosPolicyName: map['storageQosPolicyName'] == null ? null : (map['storageQosPolicyName'] as String).input(),
      templateDiskId: map['templateDiskId'] == null ? null : (map['templateDiskId'] as String).input(),
      vhdType: map['vhdType'] == null ? null : (map['vhdType'] as String).input(),
    );
  }
}

