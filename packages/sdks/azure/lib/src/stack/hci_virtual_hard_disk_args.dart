// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_stack_hci_virtual_hard_disk_hci_virtual_hard_disk_args_doc}
/// The set of arguments for HciVirtualHardDisk.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_virtual_hard_disk_hci_virtual_hard_disk_args_doc}
class HciVirtualHardDiskArgs {
  /// The block size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int>? blockSizeInBytes;
  /// The ID of the Custom Location where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String> customLocationId;
  /// The format of the disk file. Possible values are `vhdx` and `vhd`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? diskFileFormat;
  /// The size of the disk in GB. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int> diskSizeInGb;
  /// Whether to enable dynamic sizing for the Azure Stack HCI Virtual Hard Disk. Defaults to `false`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<bool>? dynamicEnabled;
  /// The hypervisor generation of the Azure Stack HCI Virtual Hard Disk. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? hypervGeneration;
  /// The Azure Region where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? location;
  /// The logical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int>? logicalSectorInBytes;
  /// The name which should be used for this Azure Stack HCI Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? name;
  /// The physical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int>? physicalSectorInBytes;
  /// The name of the Resource Group where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Azure Stack HCI Storage Path used for this Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  ///
  /// > **Note:** If `storage_path_id` is not specified, the Virtual Hard Disk will be placed in a high availability Storage Path. If you experience a diff you may need to add this to `ignore_changes`.
  final pulumi.Input<String>? storagePathId;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Virtual Hard Disk.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciVirtualHardDiskArgs].
  /// [blockSizeInBytes] The block size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [customLocationId] The ID of the Custom Location where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [diskFileFormat] The format of the disk file. Possible values are `vhdx` and `vhd`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [diskSizeInGb] The size of the disk in GB. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [dynamicEnabled] Whether to enable dynamic sizing for the Azure Stack HCI Virtual Hard Disk. Defaults to `false`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [hypervGeneration] The hypervisor generation of the Azure Stack HCI Virtual Hard Disk. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [location] The Azure Region where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [logicalSectorInBytes] The logical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [name] The name which should be used for this Azure Stack HCI Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [physicalSectorInBytes] The physical sector size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [storagePathId] The ID of the Azure Stack HCI Storage Path used for this Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Virtual Hard Disk.
  HciVirtualHardDiskArgs({
    this.blockSizeInBytes,
    required this.customLocationId,
    this.diskFileFormat,
    required this.diskSizeInGb,
    this.dynamicEnabled,
    this.hypervGeneration,
    this.location,
    this.logicalSectorInBytes,
    this.name,
    this.physicalSectorInBytes,
    required this.resourceGroupName,
    this.storagePathId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockSizeInBytes': ?blockSizeInBytes,
      'customLocationId': customLocationId,
      'diskFileFormat': ?diskFileFormat,
      'diskSizeInGb': diskSizeInGb,
      'dynamicEnabled': ?dynamicEnabled,
      'hypervGeneration': ?hypervGeneration,
      'location': ?location,
      'logicalSectorInBytes': ?logicalSectorInBytes,
      'name': ?name,
      'physicalSectorInBytes': ?physicalSectorInBytes,
      'resourceGroupName': resourceGroupName,
      'storagePathId': ?storagePathId,
      'tags': ?tags,
    };
  }

  factory HciVirtualHardDiskArgs.fromMap(Map<String, dynamic> map) {
    return HciVirtualHardDiskArgs(
      blockSizeInBytes: map['blockSizeInBytes'] == null ? null : (map['blockSizeInBytes'] as int).input(),
      customLocationId: (map['customLocationId'] as String).input(),
      diskFileFormat: map['diskFileFormat'] == null ? null : (map['diskFileFormat'] as String).input(),
      diskSizeInGb: (map['diskSizeInGb'] as int).input(),
      dynamicEnabled: map['dynamicEnabled'] == null ? null : (map['dynamicEnabled'] as bool).input(),
      hypervGeneration: map['hypervGeneration'] == null ? null : (map['hypervGeneration'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logicalSectorInBytes: map['logicalSectorInBytes'] == null ? null : (map['logicalSectorInBytes'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      physicalSectorInBytes: map['physicalSectorInBytes'] == null ? null : (map['physicalSectorInBytes'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storagePathId: map['storagePathId'] == null ? null : (map['storagePathId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

