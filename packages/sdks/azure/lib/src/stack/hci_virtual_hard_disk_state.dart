// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HciVirtualHardDisk resources.
class HciVirtualHardDiskState {
  /// The block size of the disk in bytes. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int>? blockSizeInBytes;
  /// The ID of the Custom Location where the Azure Stack HCI Virtual Hard Disk should exist. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? customLocationId;
  /// The format of the disk file. Possible values are `vhdx` and `vhd`. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<String>? diskFileFormat;
  /// The size of the disk in GB. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  final pulumi.Input<int>? diskSizeInGb;
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
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Azure Stack HCI Storage Path used for this Virtual Hard Disk. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  ///
  /// &gt; **Note:** If `storagePathId` is not specified, the Virtual Hard Disk will be placed in a high availability Storage Path. If you experience a diff you may need to add this to `ignoreChanges`.
  final pulumi.Input<String>? storagePathId;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Virtual Hard Disk.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciVirtualHardDiskState].
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
  const HciVirtualHardDiskState({
    this.blockSizeInBytes,
    this.customLocationId,
    this.diskFileFormat,
    this.diskSizeInGb,
    this.dynamicEnabled,
    this.hypervGeneration,
    this.location,
    this.logicalSectorInBytes,
    this.name,
    this.physicalSectorInBytes,
    this.resourceGroupName,
    this.storagePathId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockSizeInBytes': ?blockSizeInBytes,
      'customLocationId': ?customLocationId,
      'diskFileFormat': ?diskFileFormat,
      'diskSizeInGb': ?diskSizeInGb,
      'dynamicEnabled': ?dynamicEnabled,
      'hypervGeneration': ?hypervGeneration,
      'location': ?location,
      'logicalSectorInBytes': ?logicalSectorInBytes,
      'name': ?name,
      'physicalSectorInBytes': ?physicalSectorInBytes,
      'resourceGroupName': ?resourceGroupName,
      'storagePathId': ?storagePathId,
      'tags': ?tags,
    };
  }

  factory HciVirtualHardDiskState.fromMap(Map<String, dynamic> map) {
    return HciVirtualHardDiskState(
      blockSizeInBytes: (() { final guardedValue = map['blockSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customLocationId: (() { final guardedValue = map['customLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskFileFormat: (() { final guardedValue = map['diskFileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeInGb: (() { final guardedValue = map['diskSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dynamicEnabled: (() { final guardedValue = map['dynamicEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hypervGeneration: (() { final guardedValue = map['hypervGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalSectorInBytes: (() { final guardedValue = map['logicalSectorInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalSectorInBytes: (() { final guardedValue = map['physicalSectorInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePathId: (() { final guardedValue = map['storagePathId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
