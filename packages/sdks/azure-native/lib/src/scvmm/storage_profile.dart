// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_disk.dart';

/// Defines the resource properties.
class StorageProfile {
  /// Gets or sets the list of virtual disks associated with the virtual machine.
  final List<VirtualDisk>? disks;

  /// Creates a new [StorageProfile].
  /// [disks] Gets or sets the list of virtual disks associated with the virtual machine.
  StorageProfile({
    this.disks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<VirtualDisk, Map<String, dynamic>>(disks!, (value) => value.toMap()),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<VirtualDisk>(map['disks'], (value) => VirtualDisk.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

