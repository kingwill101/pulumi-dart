// ignore_for_file: unused_element, unnecessary_cast


class DiskAsyncReplication {
  /// The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String? disk;

  /// Creates a new [DiskAsyncReplication].
  /// [disk] The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  DiskAsyncReplication({
    this.disk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': ?disk,
    };
  }

  factory DiskAsyncReplication.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplication(
      disk: map['disk'] == null ? null : map['disk'] as String,
    );
  }
}

