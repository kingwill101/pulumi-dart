// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An instance-attached disk resource.
class SavedDiskComputeV1 {
  /// Specifies a URL of the disk attached to the source instance.
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [SavedDiskComputeV1].
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  SavedDiskComputeV1({
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SavedDiskComputeV1.fromMap(Map<String, dynamic> map) {
    return SavedDiskComputeV1(
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
    );
  }
}

