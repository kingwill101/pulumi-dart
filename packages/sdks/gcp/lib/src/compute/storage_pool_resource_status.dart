// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoragePoolResourceStatus {
  /// (Output)
  /// Number of disks used.
  final pulumi.Input<String?>? diskCount;
  /// (Output)
  /// Timestamp of the last successful resize in RFC3339 text format.
  final pulumi.Input<String?>? lastResizeTimestamp;
  /// (Output)
  /// Maximum allowed aggregate disk size in gigabytes.
  final pulumi.Input<String?>? maxTotalProvisionedDiskCapacityGb;
  /// (Output)
  /// Space used by data stored in disks within the storage pool (in bytes).
  /// This will reflect the total number of bytes written to the disks in the pool, in contrast to the capacity of those disks.
  final pulumi.Input<String?>? poolUsedCapacityBytes;
  /// (Output)
  /// Sum of all the disks' provisioned IOPS, minus some amount that is allowed per disk that is not counted towards pool's IOPS capacity. For more information, see https://cloud.google.com/compute/docs/disks/storage-pools.
  final pulumi.Input<String?>? poolUsedIops;
  /// (Output)
  /// Sum of all the disks' provisioned throughput in MB/s.
  final pulumi.Input<String?>? poolUsedThroughput;
  /// (Output)
  /// Amount of data written into the pool, before it is compacted.
  final pulumi.Input<String?>? poolUserWrittenBytes;
  /// (Output)
  /// Sum of all the capacity provisioned in disks in this storage pool.
  /// A disk's provisioned capacity is the same as its total capacity.
  final pulumi.Input<String?>? totalProvisionedDiskCapacityGb;
  /// (Output)
  /// Sum of all the disks' provisioned IOPS.
  final pulumi.Input<String?>? totalProvisionedDiskIops;
  /// (Output)
  /// Sum of all the disks' provisioned throughput in MB/s,
  /// minus some amount that is allowed per disk that is not counted towards pool's throughput capacity.
  final pulumi.Input<String?>? totalProvisionedDiskThroughput;

  /// Creates a new [StoragePoolResourceStatus].
  /// [diskCount] (Output)
  /// [lastResizeTimestamp] (Output)
  /// [maxTotalProvisionedDiskCapacityGb] (Output)
  /// [poolUsedCapacityBytes] (Output)
  /// [poolUsedIops] (Output)
  /// [poolUsedThroughput] (Output)
  /// [poolUserWrittenBytes] (Output)
  /// [totalProvisionedDiskCapacityGb] (Output)
  /// [totalProvisionedDiskIops] (Output)
  /// [totalProvisionedDiskThroughput] (Output)
  const StoragePoolResourceStatus({
    this.diskCount,
    this.lastResizeTimestamp,
    this.maxTotalProvisionedDiskCapacityGb,
    this.poolUsedCapacityBytes,
    this.poolUsedIops,
    this.poolUsedThroughput,
    this.poolUserWrittenBytes,
    this.totalProvisionedDiskCapacityGb,
    this.totalProvisionedDiskIops,
    this.totalProvisionedDiskThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': ?diskCount,
      'lastResizeTimestamp': ?lastResizeTimestamp,
      'maxTotalProvisionedDiskCapacityGb': ?maxTotalProvisionedDiskCapacityGb,
      'poolUsedCapacityBytes': ?poolUsedCapacityBytes,
      'poolUsedIops': ?poolUsedIops,
      'poolUsedThroughput': ?poolUsedThroughput,
      'poolUserWrittenBytes': ?poolUserWrittenBytes,
      'totalProvisionedDiskCapacityGb': ?totalProvisionedDiskCapacityGb,
      'totalProvisionedDiskIops': ?totalProvisionedDiskIops,
      'totalProvisionedDiskThroughput': ?totalProvisionedDiskThroughput,
    };
  }

  factory StoragePoolResourceStatus.fromMap(Map<String, dynamic> map) {
    return StoragePoolResourceStatus(
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastResizeTimestamp: (() { final guardedValue = map['lastResizeTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTotalProvisionedDiskCapacityGb: (() { final guardedValue = map['maxTotalProvisionedDiskCapacityGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolUsedCapacityBytes: (() { final guardedValue = map['poolUsedCapacityBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolUsedIops: (() { final guardedValue = map['poolUsedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolUsedThroughput: (() { final guardedValue = map['poolUsedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolUserWrittenBytes: (() { final guardedValue = map['poolUserWrittenBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalProvisionedDiskCapacityGb: (() { final guardedValue = map['totalProvisionedDiskCapacityGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalProvisionedDiskIops: (() { final guardedValue = map['totalProvisionedDiskIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalProvisionedDiskThroughput: (() { final guardedValue = map['totalProvisionedDiskThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
