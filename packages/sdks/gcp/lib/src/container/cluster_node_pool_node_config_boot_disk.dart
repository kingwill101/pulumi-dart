// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigBootDisk {
  /// Type of the disk attached to each node
  /// (e.g. 'pd-standard', 'pd-balanced', 'pd-ssd', or 'hyperdisk-balanced'). Defaults to `hyperdisk-balanced` if `hyperdisk-balanced` is supported and `pd-balanced` is not supported for the machine type; otherwise defaults to `pd-balanced`. This is being migrated from `node_config.disk_type`, and must match if specified in both places. Prefer using this field.
  final pulumi.Input<String>? diskType;
  /// Configure disk IOPs. This is only valid if the `disk_type` is 'hyperdisk-balanced'. See [performance limit documention](https://cloud.google.com/compute/docs/disks/hyperdisk-perf-limits) for more information about valid values.
  final pulumi.Input<int>? provisionedIops;
  /// Configure disk throughput. This is only valid if the `disk_type` is 'hyperdisk-balanced'. See [performance limit documention](https://cloud.google.com/compute/docs/disks/hyperdisk-perf-limits) for more information about valid values.
  final pulumi.Input<int>? provisionedThroughput;
  /// Size of the disk attached to each node, specified
  /// in GB. The smallest allowed disk size is 10GB. Defaults to 100GB. This is being migrated from `node_config.disk_size_gb`, and must match if specified in both places. Prefer using this field.
  final pulumi.Input<int>? sizeGb;

  /// Creates a new [ClusterNodePoolNodeConfigBootDisk].
  /// [diskType] Type of the disk attached to each node
  /// [provisionedIops] Configure disk IOPs. This is only valid if the `disk_type` is 'hyperdisk-balanced'. See [performance limit documention](https://cloud.google.com/compute/docs/disks/hyperdisk-perf-limits) for more information about valid values.
  /// [provisionedThroughput] Configure disk throughput. This is only valid if the `disk_type` is 'hyperdisk-balanced'. See [performance limit documention](https://cloud.google.com/compute/docs/disks/hyperdisk-perf-limits) for more information about valid values.
  /// [sizeGb] Size of the disk attached to each node, specified
  ClusterNodePoolNodeConfigBootDisk({
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'sizeGb': ?sizeGb,
    };
  }

  factory ClusterNodePoolNodeConfigBootDisk.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigBootDisk(
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops'] as int).input(),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : (map['provisionedThroughput'] as int).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
    );
  }
}

