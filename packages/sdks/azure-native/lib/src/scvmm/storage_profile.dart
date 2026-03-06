// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_disk.dart';

/// Defines the resource properties.
class StorageProfile {
  /// Gets or sets the list of virtual disks associated with the virtual machine.
  final pulumi.Input<List<VirtualDisk>>? disks;

  /// Creates a new [StorageProfile].
  /// [disks] Gets or sets the list of virtual disks associated with the virtual machine.
  const StorageProfile({
    this.disks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?pulumi.Input.mapOptionalInputValue<List<VirtualDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<VirtualDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualDisk>(guardedValue, (value) => VirtualDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

