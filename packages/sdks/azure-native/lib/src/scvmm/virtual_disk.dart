// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_qo_spolicy_details.dart';

/// Virtual disk model
class VirtualDisk {
  /// Gets or sets the disk bus.
  final pulumi.Input<int?>? bus;
  /// Gets or sets the disk bus type.
  final pulumi.Input<String?>? busType;
  /// Gets or sets a value indicating diff disk.
  final pulumi.Input<dynamic>? createDiffDisk;
  /// Gets or sets the disk id.
  final pulumi.Input<String?>? diskId;
  /// Gets or sets the disk total size.
  final pulumi.Input<int?>? diskSizeGB;
  /// Gets or sets the disk lun.
  final pulumi.Input<int?>? lun;
  /// Gets or sets the name of the disk.
  final pulumi.Input<String?>? name;
  /// The QoS policy for the disk.
  final pulumi.Input<StorageQoSPolicyDetails?>? storageQoSPolicy;
  /// Gets or sets the disk id in the template.
  final pulumi.Input<String?>? templateDiskId;
  /// Gets or sets the disk vhd type.
  final pulumi.Input<String?>? vhdType;

  /// Creates a new [VirtualDisk].
  /// [bus] Gets or sets the disk bus.
  /// [busType] Gets or sets the disk bus type.
  /// [createDiffDisk] Gets or sets a value indicating diff disk.
  /// [diskId] Gets or sets the disk id.
  /// [diskSizeGB] Gets or sets the disk total size.
  /// [lun] Gets or sets the disk lun.
  /// [name] Gets or sets the name of the disk.
  /// [storageQoSPolicy] The QoS policy for the disk.
  /// [templateDiskId] Gets or sets the disk id in the template.
  /// [vhdType] Gets or sets the disk vhd type.
  const VirtualDisk({
    this.bus,
    this.busType,
    this.createDiffDisk,
    this.diskId,
    this.diskSizeGB,
    this.lun,
    this.name,
    this.storageQoSPolicy,
    this.templateDiskId,
    this.vhdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'busType': ?busType,
      'createDiffDisk': ?createDiffDisk,
      'diskId': ?diskId,
      'diskSizeGB': ?diskSizeGB,
      'lun': ?lun,
      'name': ?name,
      'storageQoSPolicy': ?pulumi.Input.mapOptionalInputValue<StorageQoSPolicyDetails, Map<String, dynamic>>(storageQoSPolicy, (value) => value.toMap()),
      'templateDiskId': ?templateDiskId,
      'vhdType': ?vhdType,
    };
  }

  factory VirtualDisk.fromMap(Map<String, dynamic> map) {
    return VirtualDisk(
      bus: (() { final guardedValue = map['bus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      busType: (() { final guardedValue = map['busType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDiffDisk: (() { final guardedValue = map['createDiffDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageQoSPolicy: (() { final guardedValue = map['storageQoSPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageQoSPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDiskId: (() { final guardedValue = map['templateDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhdType: (() { final guardedValue = map['vhdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
