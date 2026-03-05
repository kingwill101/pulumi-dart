// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An instance-attached disk resource.
class SavedDiskResponseComputeV1 {
  /// The architecture of the attached disk.
  final pulumi.Input<String> architecture;
  /// Type of the resource. Always compute#savedDisk for attached disks.
  final pulumi.Input<String> kind;
  /// Specifies a URL of the disk attached to the source instance.
  final pulumi.Input<String> sourceDisk;
  /// Size of the individual disk snapshot used by this machine image.
  final pulumi.Input<String> storageBytes;
  /// An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  final pulumi.Input<String> storageBytesStatus;

  /// Creates a new [SavedDiskResponseComputeV1].
  /// [architecture] The architecture of the attached disk.
  /// [kind] Type of the resource. Always compute#savedDisk for attached disks.
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  /// [storageBytes] Size of the individual disk snapshot used by this machine image.
  /// [storageBytesStatus] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  SavedDiskResponseComputeV1({
    required this.architecture,
    required this.kind,
    required this.sourceDisk,
    required this.storageBytes,
    required this.storageBytesStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'kind': kind,
      'sourceDisk': sourceDisk,
      'storageBytes': storageBytes,
      'storageBytesStatus': storageBytesStatus,
    };
  }

  factory SavedDiskResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SavedDiskResponseComputeV1(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
      storageBytes: pulumi.Input.fromValue(map['storageBytes'] as String),
      storageBytesStatus: pulumi.Input.fromValue(map['storageBytesStatus'] as String),
    );
  }
}

