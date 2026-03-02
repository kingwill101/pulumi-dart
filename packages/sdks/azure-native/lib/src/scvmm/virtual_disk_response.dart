// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_qo_spolicy_details_response.dart';

/// Virtual disk model
class VirtualDiskResponse {
  /// Gets or sets the disk bus.
  final pulumi.Input<int>? bus;
  /// Gets or sets the disk bus type.
  final pulumi.Input<String>? busType;
  /// Gets or sets a value indicating diff disk.
  final pulumi.Input<String>? createDiffDisk;
  /// Gets or sets the disk id.
  final pulumi.Input<String>? diskId;
  /// Gets or sets the disk total size.
  final pulumi.Input<int>? diskSizeGB;
  /// Gets the display name of the virtual disk as shown in the vmmServer. This is the fallback label for a disk when the name is not set.
  final pulumi.Input<String> displayName;
  /// Gets or sets the disk lun.
  final pulumi.Input<int>? lun;
  /// Gets or sets the max disk size.
  final pulumi.Input<int> maxDiskSizeGB;
  /// Gets or sets the name of the disk.
  final pulumi.Input<String>? name;
  /// The QoS policy for the disk.
  final pulumi.Input<StorageQoSPolicyDetailsResponse>? storageQoSPolicy;
  /// Gets or sets the disk id in the template.
  final pulumi.Input<String>? templateDiskId;
  /// Gets the disk vhd format type.
  final pulumi.Input<String> vhdFormatType;
  /// Gets or sets the disk vhd type.
  final pulumi.Input<String>? vhdType;
  /// Gets or sets the disk volume type.
  final pulumi.Input<String> volumeType;

  /// Creates a new [VirtualDiskResponse].
  /// [bus] Gets or sets the disk bus.
  /// [busType] Gets or sets the disk bus type.
  /// [createDiffDisk] Gets or sets a value indicating diff disk.
  /// [diskId] Gets or sets the disk id.
  /// [diskSizeGB] Gets or sets the disk total size.
  /// [displayName] Gets the display name of the virtual disk as shown in the vmmServer. This is the fallback label for a disk when the name is not set.
  /// [lun] Gets or sets the disk lun.
  /// [maxDiskSizeGB] Gets or sets the max disk size.
  /// [name] Gets or sets the name of the disk.
  /// [storageQoSPolicy] The QoS policy for the disk.
  /// [templateDiskId] Gets or sets the disk id in the template.
  /// [vhdFormatType] Gets the disk vhd format type.
  /// [vhdType] Gets or sets the disk vhd type.
  /// [volumeType] Gets or sets the disk volume type.
  VirtualDiskResponse({
    this.bus,
    this.busType,
    this.createDiffDisk,
    this.diskId,
    this.diskSizeGB,
    required this.displayName,
    this.lun,
    required this.maxDiskSizeGB,
    this.name,
    this.storageQoSPolicy,
    this.templateDiskId,
    required this.vhdFormatType,
    this.vhdType,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'busType': ?busType,
      'createDiffDisk': ?createDiffDisk,
      'diskId': ?diskId,
      'diskSizeGB': ?diskSizeGB,
      'displayName': displayName,
      'lun': ?lun,
      'maxDiskSizeGB': maxDiskSizeGB,
      'name': ?name,
      'storageQoSPolicy': ?pulumi.Input.mapOptionalInputValue<StorageQoSPolicyDetailsResponse, Map<String, dynamic>>(storageQoSPolicy, (value) => value.toMap()),
      'templateDiskId': ?templateDiskId,
      'vhdFormatType': vhdFormatType,
      'vhdType': ?vhdType,
      'volumeType': volumeType,
    };
  }

  factory VirtualDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDiskResponse(
      bus: map['bus'] == null ? null : (map['bus'] as int).input(),
      busType: map['busType'] == null ? null : (map['busType'] as String).input(),
      createDiffDisk: map['createDiffDisk'] == null ? null : (map['createDiffDisk'] as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId'] as String).input(),
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB'] as int).input(),
      displayName: (map['displayName'] as String).input(),
      lun: map['lun'] == null ? null : (map['lun'] as int).input(),
      maxDiskSizeGB: (map['maxDiskSizeGB'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageQoSPolicy: map['storageQoSPolicy'] == null ? null : (StorageQoSPolicyDetailsResponse.fromMap((map['storageQoSPolicy'] as Map).cast<String, dynamic>())).input(),
      templateDiskId: map['templateDiskId'] == null ? null : (map['templateDiskId'] as String).input(),
      vhdFormatType: (map['vhdFormatType'] as String).input(),
      vhdType: map['vhdType'] == null ? null : (map['vhdType'] as String).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

