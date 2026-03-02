// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output Only] Contains output only fields.
class StoragePoolResourceStatusResponse {
  /// Sum of all the disks' provisioned IOPS.
  final pulumi.Input<String> aggregateDiskProvisionedIops;
  /// Sum of all the capacity provisioned in disks in this storage pool. A disk's provisioned capacity is the same as its total capacity.
  final pulumi.Input<String> aggregateDiskSizeGb;
  /// Timestamp of the last successful resize in RFC3339 text format.
  final pulumi.Input<String> lastResizeTimestamp;
  /// Maximum allowed aggregate disk size in gigabytes.
  final pulumi.Input<String> maxAggregateDiskSizeGb;
  /// Number of disks used.
  final pulumi.Input<String> numberOfDisks;
  /// Space used by data stored in disks within the storage pool (in bytes).
  final pulumi.Input<String> usedBytes;
  /// Space used by compressed and deduped data stored in disks within the storage pool (in bytes).
  final pulumi.Input<String> usedReducedBytes;
  /// Sum of all the disks' provisioned throughput in MB/s.
  final pulumi.Input<String> usedThroughput;

  /// Creates a new [StoragePoolResourceStatusResponse].
  /// [aggregateDiskProvisionedIops] Sum of all the disks' provisioned IOPS.
  /// [aggregateDiskSizeGb] Sum of all the capacity provisioned in disks in this storage pool. A disk's provisioned capacity is the same as its total capacity.
  /// [lastResizeTimestamp] Timestamp of the last successful resize in RFC3339 text format.
  /// [maxAggregateDiskSizeGb] Maximum allowed aggregate disk size in gigabytes.
  /// [numberOfDisks] Number of disks used.
  /// [usedBytes] Space used by data stored in disks within the storage pool (in bytes).
  /// [usedReducedBytes] Space used by compressed and deduped data stored in disks within the storage pool (in bytes).
  /// [usedThroughput] Sum of all the disks' provisioned throughput in MB/s.
  StoragePoolResourceStatusResponse({
    required this.aggregateDiskProvisionedIops,
    required this.aggregateDiskSizeGb,
    required this.lastResizeTimestamp,
    required this.maxAggregateDiskSizeGb,
    required this.numberOfDisks,
    required this.usedBytes,
    required this.usedReducedBytes,
    required this.usedThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateDiskProvisionedIops': aggregateDiskProvisionedIops,
      'aggregateDiskSizeGb': aggregateDiskSizeGb,
      'lastResizeTimestamp': lastResizeTimestamp,
      'maxAggregateDiskSizeGb': maxAggregateDiskSizeGb,
      'numberOfDisks': numberOfDisks,
      'usedBytes': usedBytes,
      'usedReducedBytes': usedReducedBytes,
      'usedThroughput': usedThroughput,
    };
  }

  factory StoragePoolResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return StoragePoolResourceStatusResponse(
      aggregateDiskProvisionedIops: (map['aggregateDiskProvisionedIops'] as String).input(),
      aggregateDiskSizeGb: (map['aggregateDiskSizeGb'] as String).input(),
      lastResizeTimestamp: (map['lastResizeTimestamp'] as String).input(),
      maxAggregateDiskSizeGb: (map['maxAggregateDiskSizeGb'] as String).input(),
      numberOfDisks: (map['numberOfDisks'] as String).input(),
      usedBytes: (map['usedBytes'] as String).input(),
      usedReducedBytes: (map['usedReducedBytes'] as String).input(),
      usedThroughput: (map['usedThroughput'] as String).input(),
    );
  }
}

