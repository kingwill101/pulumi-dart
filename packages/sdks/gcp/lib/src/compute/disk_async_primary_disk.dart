// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final pulumi.Input<String> disk;

  /// Creates a new [DiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  DiskAsyncPrimaryDisk({required this.disk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': disk};
  }

  factory DiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return DiskAsyncPrimaryDisk(
      disk: pulumi.Input.fromValue(map['disk'] as String),
    );
  }
}
