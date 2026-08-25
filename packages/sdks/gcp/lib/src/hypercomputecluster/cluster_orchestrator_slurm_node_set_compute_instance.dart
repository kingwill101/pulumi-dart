// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_orchestrator_slurm_node_set_compute_instance_boot_disk.dart';

class ClusterOrchestratorSlurmNodeSetComputeInstance {
  /// A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
  /// boot disk for a Compute Engine VM instance.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk?>? bootDisk;
  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// should be applied to each VM instance in the nodeset.
  final pulumi.Input<Map<String, String>?>? labels;
  /// [Startup
  /// script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
  /// to be run on each VM instance in the nodeset. Max 256KB.
  final pulumi.Input<String?>? startupScript;

  /// Creates a new [ClusterOrchestratorSlurmNodeSetComputeInstance].
  /// [bootDisk] A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
  /// [labels] [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// [startupScript] [Startup
  const ClusterOrchestratorSlurmNodeSetComputeInstance({
    this.bootDisk,
    this.labels,
    this.startupScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'labels': ?labels,
      'startupScript': ?startupScript,
    };
  }

  factory ClusterOrchestratorSlurmNodeSetComputeInstance.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmNodeSetComputeInstance(
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOrchestratorSlurmNodeSetComputeInstanceBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      startupScript: (() { final guardedValue = map['startupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
