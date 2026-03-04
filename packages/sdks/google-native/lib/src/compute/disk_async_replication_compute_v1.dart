// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskAsyncReplicationComputeV1 {
  /// The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String>? disk;

  /// Creates a new [DiskAsyncReplicationComputeV1].
  /// [disk] The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  DiskAsyncReplicationComputeV1({this.disk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': ?disk};
  }

  factory DiskAsyncReplicationComputeV1.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationComputeV1(
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
