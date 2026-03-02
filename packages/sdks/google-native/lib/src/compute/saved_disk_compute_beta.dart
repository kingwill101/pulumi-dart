// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An instance-attached disk resource.
class SavedDiskComputeBeta {
  /// Specifies a URL of the disk attached to the source instance.
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [SavedDiskComputeBeta].
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  SavedDiskComputeBeta({
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SavedDiskComputeBeta.fromMap(Map<String, dynamic> map) {
    return SavedDiskComputeBeta(
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
    );
  }
}

