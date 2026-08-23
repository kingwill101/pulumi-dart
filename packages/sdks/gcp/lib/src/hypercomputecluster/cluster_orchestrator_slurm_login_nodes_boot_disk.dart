// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOrchestratorSlurmLoginNodesBootDisk {
  /// Size of the disk in gigabytes. Must be at least 10GB.
  final pulumi.Input<String> sizeGb;
  /// [Persistent disk
  /// type](https://cloud.google.com/compute/docs/disks#disk-types), in the
  /// format `projects/{project}/zones/{zone}/diskTypes/{disk_type}`.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterOrchestratorSlurmLoginNodesBootDisk].
  /// [sizeGb] Size of the disk in gigabytes. Must be at least 10GB.
  /// [type] [Persistent disk
  const ClusterOrchestratorSlurmLoginNodesBootDisk({
    required this.sizeGb,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': sizeGb,
      'type': type,
    };
  }

  factory ClusterOrchestratorSlurmLoginNodesBootDisk.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmLoginNodesBootDisk(
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
