// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStoragePoolStatus {
  /// Number of disks used.
  final pulumi.Input<String> diskCount;
  /// Timestamp of the last successful resize in RFC3339 text format.
  final pulumi.Input<String> lastResizeTimestamp;
  /// Maximum allowed aggregate disk size in gigabytes.
  final pulumi.Input<String> maxTotalProvisionedDiskCapacityGb;
  /// Space used by data stored in disks within the storage pool (in bytes).
  /// This will reflect the total number of bytes written to the disks in the pool, in contrast to the capacity of those disks.
  final pulumi.Input<String> poolUsedCapacityBytes;
  /// Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  final pulumi.Input<String> poolUsedIops;
  /// Sum of all the disks' provisioned throughput in MB/s.
  final pulumi.Input<String> poolUsedThroughput;
  /// Amount of data written into the pool, before it is compacted.
  final pulumi.Input<String> poolUserWrittenBytes;
  /// Sum of all the capacity provisioned in disks in this storage pool.
  /// A disk's provisioned capacity is the same as its total capacity.
  final pulumi.Input<String> totalProvisionedDiskCapacityGb;
  /// Sum of all the disks' provisioned IOPS.
  final pulumi.Input<String> totalProvisionedDiskIops;
  /// Sum of all the disks' provisioned throughput in MB/s,
  /// minus some amount that is allowed per disk that is not counted towards pool's throughput capacity.
  final pulumi.Input<String> totalProvisionedDiskThroughput;

  /// Creates a new [GetStoragePoolStatus].
  /// [diskCount] Number of disks used.
  /// [lastResizeTimestamp] Timestamp of the last successful resize in RFC3339 text format.
  /// [maxTotalProvisionedDiskCapacityGb] Maximum allowed aggregate disk size in gigabytes.
  /// [poolUsedCapacityBytes] Space used by data stored in disks within the storage pool (in bytes).
  /// [poolUsedIops] Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  /// [poolUsedThroughput] Sum of all the disks' provisioned throughput in MB/s.
  /// [poolUserWrittenBytes] Amount of data written into the pool, before it is compacted.
  /// [totalProvisionedDiskCapacityGb] Sum of all the capacity provisioned in disks in this storage pool.
  /// [totalProvisionedDiskIops] Sum of all the disks' provisioned IOPS.
  /// [totalProvisionedDiskThroughput] Sum of all the disks' provisioned throughput in MB/s,
  const GetStoragePoolStatus({
    required this.diskCount,
    required this.lastResizeTimestamp,
    required this.maxTotalProvisionedDiskCapacityGb,
    required this.poolUsedCapacityBytes,
    required this.poolUsedIops,
    required this.poolUsedThroughput,
    required this.poolUserWrittenBytes,
    required this.totalProvisionedDiskCapacityGb,
    required this.totalProvisionedDiskIops,
    required this.totalProvisionedDiskThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
      'lastResizeTimestamp': lastResizeTimestamp,
      'maxTotalProvisionedDiskCapacityGb': maxTotalProvisionedDiskCapacityGb,
      'poolUsedCapacityBytes': poolUsedCapacityBytes,
      'poolUsedIops': poolUsedIops,
      'poolUsedThroughput': poolUsedThroughput,
      'poolUserWrittenBytes': poolUserWrittenBytes,
      'totalProvisionedDiskCapacityGb': totalProvisionedDiskCapacityGb,
      'totalProvisionedDiskIops': totalProvisionedDiskIops,
      'totalProvisionedDiskThroughput': totalProvisionedDiskThroughput,
    };
  }

  factory GetStoragePoolStatus.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolStatus(
      diskCount: pulumi.Input.fromValue(map['diskCount'] as String),
      lastResizeTimestamp: pulumi.Input.fromValue(map['lastResizeTimestamp'] as String),
      maxTotalProvisionedDiskCapacityGb: pulumi.Input.fromValue(map['maxTotalProvisionedDiskCapacityGb'] as String),
      poolUsedCapacityBytes: pulumi.Input.fromValue(map['poolUsedCapacityBytes'] as String),
      poolUsedIops: pulumi.Input.fromValue(map['poolUsedIops'] as String),
      poolUsedThroughput: pulumi.Input.fromValue(map['poolUsedThroughput'] as String),
      poolUserWrittenBytes: pulumi.Input.fromValue(map['poolUserWrittenBytes'] as String),
      totalProvisionedDiskCapacityGb: pulumi.Input.fromValue(map['totalProvisionedDiskCapacityGb'] as String),
      totalProvisionedDiskIops: pulumi.Input.fromValue(map['totalProvisionedDiskIops'] as String),
      totalProvisionedDiskThroughput: pulumi.Input.fromValue(map['totalProvisionedDiskThroughput'] as String),
    );
  }
}
