// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk {
  /// Size of the disk in gigabytes. Must be at least 10GB.
  final pulumi.Input<String> sizeGb;
  /// [Persistent disk
  /// type](https://cloud.google.com/compute/docs/disks#disk-types), in the
  /// format `projects/{project}/zones/{zone}/diskTypes/{disk_type}`.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk].
  /// [sizeGb] Size of the disk in gigabytes. Must be at least 10GB.
  /// [type] [Persistent disk
  const ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk({
    required this.sizeGb,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': sizeGb,
      'type': type,
    };
  }

  factory ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk(
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
