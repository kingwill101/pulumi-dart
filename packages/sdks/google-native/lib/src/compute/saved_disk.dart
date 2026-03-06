// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An instance-attached disk resource.
class SavedDisk {
  /// Specifies a URL of the disk attached to the source instance.
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [SavedDisk].
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  const SavedDisk({
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SavedDisk.fromMap(Map<String, dynamic> map) {
    return SavedDisk(
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

