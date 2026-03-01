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
  /// > **Note:** If `storage_path_id` is not specified, the Virtual Hard Disk will be placed in a high availability Storage Path. If you experience a diff you may need to add this to `ignore_changes`.
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
  HciVirtualHardDiskState({
    pulumi.Output<int>? blockSizeInBytes,
    pulumi.Output<String>? customLocationId,
    pulumi.Output<String>? diskFileFormat,
    pulumi.Output<int>? diskSizeInGb,
    pulumi.Output<bool>? dynamicEnabled,
    pulumi.Output<String>? hypervGeneration,
    pulumi.Output<String>? location,
    pulumi.Output<int>? logicalSectorInBytes,
    pulumi.Output<String>? name,
    pulumi.Output<int>? physicalSectorInBytes,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storagePathId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      blockSizeInBytes = pulumi.Input.asOptionalInput<int>(blockSizeInBytes),
      customLocationId = pulumi.Input.asOptionalInput<String>(customLocationId),
      diskFileFormat = pulumi.Input.asOptionalInput<String>(diskFileFormat),
      diskSizeInGb = pulumi.Input.asOptionalInput<int>(diskSizeInGb),
      dynamicEnabled = pulumi.Input.asOptionalInput<bool>(dynamicEnabled),
      hypervGeneration = pulumi.Input.asOptionalInput<String>(hypervGeneration),
      location = pulumi.Input.asOptionalInput<String>(location),
      logicalSectorInBytes = pulumi.Input.asOptionalInput<int>(logicalSectorInBytes),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalSectorInBytes = pulumi.Input.asOptionalInput<int>(physicalSectorInBytes),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storagePathId = pulumi.Input.asOptionalInput<String>(storagePathId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      blockSizeInBytes: map['blockSizeInBytes'] == null ? null : pulumi.Output.create<int>(map['blockSizeInBytes'] as int),
      customLocationId: map['customLocationId'] == null ? null : pulumi.Output.create<String>(map['customLocationId'] as String),
      diskFileFormat: map['diskFileFormat'] == null ? null : pulumi.Output.create<String>(map['diskFileFormat'] as String),
      diskSizeInGb: map['diskSizeInGb'] == null ? null : pulumi.Output.create<int>(map['diskSizeInGb'] as int),
      dynamicEnabled: map['dynamicEnabled'] == null ? null : pulumi.Output.create<bool>(map['dynamicEnabled'] as bool),
      hypervGeneration: map['hypervGeneration'] == null ? null : pulumi.Output.create<String>(map['hypervGeneration'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logicalSectorInBytes: map['logicalSectorInBytes'] == null ? null : pulumi.Output.create<int>(map['logicalSectorInBytes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      physicalSectorInBytes: map['physicalSectorInBytes'] == null ? null : pulumi.Output.create<int>(map['physicalSectorInBytes'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storagePathId: map['storagePathId'] == null ? null : pulumi.Output.create<String>(map['storagePathId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

