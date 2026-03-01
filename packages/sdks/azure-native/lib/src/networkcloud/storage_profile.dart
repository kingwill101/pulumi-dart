// ignore_for_file: unused_element, unnecessary_cast

import 'os_disk.dart';

class StorageProfile {
  /// The disk to use with this virtual machine.
  final OsDisk osDisk;
  /// The resource IDs of volumes that are requested to be attached to the virtual machine.
  final List<String>? volumeAttachments;

  /// Creates a new [StorageProfile].
  /// [osDisk] The disk to use with this virtual machine.
  /// [volumeAttachments] The resource IDs of volumes that are requested to be attached to the virtual machine.
  StorageProfile({
    required this.osDisk,
    this.volumeAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDisk': osDisk.toMap(),
      'volumeAttachments': ?volumeAttachments,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      osDisk: OsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      volumeAttachments: map['volumeAttachments'] == null ? null : (map['volumeAttachments'] as List).cast<String>(),
    );
  }
}

