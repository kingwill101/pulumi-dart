// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_disk.dart';

class StorageProfile {
  /// The disk to use with this virtual machine.
  final pulumi.Input<OsDisk> osDisk;
  /// The resource IDs of volumes that are requested to be attached to the virtual machine.
  final pulumi.Input<List<String>>? volumeAttachments;

  /// Creates a new [StorageProfile].
  /// [osDisk] The disk to use with this virtual machine.
  /// [volumeAttachments] The resource IDs of volumes that are requested to be attached to the virtual machine.
  StorageProfile({
    required this.osDisk,
    this.volumeAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDisk': pulumi.Input.mapInputValue<OsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'volumeAttachments': ?volumeAttachments,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      osDisk: (OsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())).input(),
      volumeAttachments: map['volumeAttachments'] == null ? null : ((map['volumeAttachments'] as List).cast<String>()).input(),
    );
  }
}

