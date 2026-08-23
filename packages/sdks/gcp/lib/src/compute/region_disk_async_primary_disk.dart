// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final pulumi.Input<String> disk;

  /// Creates a new [RegionDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  const RegionDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
    };
  }

  factory RegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return RegionDiskAsyncPrimaryDisk(
      disk: pulumi.Input.fromValue(map['disk'] as String),
    );
  }
}
