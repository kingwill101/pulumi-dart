// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// A new or an existing persistent disk (PD) or a local ssd attached to a VM instance.
class AttachedDisk {
  /// Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.
  final pulumi.Input<String>? deviceName;
  /// Name of an existing PD.
  final pulumi.Input<String>? existingDisk;
  final pulumi.Input<Disk>? newDisk;

  /// Creates a new [AttachedDisk].
  /// [deviceName] Device name that the guest operating system will see. It is used by Runnable.volumes field to mount disks. So please specify the device_name if you want Batch to help mount the disk, and it should match the device_name field in volumes.
  /// [existingDisk] Name of an existing PD.
  /// [newDisk] Optional.
  AttachedDisk({
    this.deviceName,
    this.existingDisk,
    this.newDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'existingDisk': ?existingDisk,
      'newDisk': ?pulumi.Input.mapOptionalInputValue<Disk, Map<String, dynamic>>(newDisk, (value) => value.toMap()),
    };
  }

  factory AttachedDisk.fromMap(Map<String, dynamic> map) {
    return AttachedDisk(
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      existingDisk: map['existingDisk'] == null ? null : (map['existingDisk'] as String).input(),
      newDisk: map['newDisk'] == null ? null : (Disk.fromMap((map['newDisk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

