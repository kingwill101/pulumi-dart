// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a created Persistent Disk.
class PersistentDiskResponseVmmigrationV1alpha1 {
  /// The URI of the Persistent Disk.
  final pulumi.Input<String> diskUri;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;

  /// Creates a new [PersistentDiskResponseVmmigrationV1alpha1].
  /// [diskUri] The URI of the Persistent Disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  PersistentDiskResponseVmmigrationV1alpha1({
    required this.diskUri,
    required this.sourceDiskNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUri': diskUri,
      'sourceDiskNumber': sourceDiskNumber,
    };
  }

  factory PersistentDiskResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return PersistentDiskResponseVmmigrationV1alpha1(
      diskUri: (map['diskUri'] as String).input(),
      sourceDiskNumber: (map['sourceDiskNumber'] as int).input(),
    );
  }
}

