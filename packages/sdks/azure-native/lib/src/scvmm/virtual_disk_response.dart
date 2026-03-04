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
      'storageQoSPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            StorageQoSPolicyDetailsResponse,
            Map<String, dynamic>
          >(storageQoSPolicy, (value) => value.toMap()),
      'templateDiskId': ?templateDiskId,
      'vhdFormatType': vhdFormatType,
      'vhdType': ?vhdType,
      'volumeType': volumeType,
    };
  }

  factory VirtualDiskResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDiskResponse(
      bus: (() {
        final guardedValue = map['bus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      busType: (() {
        final guardedValue = map['busType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createDiffDisk: (() {
        final guardedValue = map['createDiffDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskSizeGB: (() {
        final guardedValue = map['diskSizeGB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      lun: (() {
        final guardedValue = map['lun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxDiskSizeGB: pulumi.Input.fromValue(map['maxDiskSizeGB'] as int),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageQoSPolicy: (() {
        final guardedValue = map['storageQoSPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageQoSPolicyDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      templateDiskId: (() {
        final guardedValue = map['templateDiskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vhdFormatType: pulumi.Input.fromValue(map['vhdFormatType'] as String),
      vhdType: (() {
        final guardedValue = map['vhdType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}
