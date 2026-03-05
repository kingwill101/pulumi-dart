// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final pulumi.Input<String> disk;

  /// Creates a new [GetRegionDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  GetRegionDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
    };
  }

  factory GetRegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskAsyncPrimaryDisk(
      disk: pulumi.Input.fromValue(map['disk'] as String),
    );
  }
}

