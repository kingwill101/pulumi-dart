// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final pulumi.Input<String> disk;

  /// Creates a new [GetDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  const GetDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
    };
  }

  factory GetDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetDiskAsyncPrimaryDisk(
      disk: pulumi.Input.fromValue(map['disk'] as String),
    );
  }
}
