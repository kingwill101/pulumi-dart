// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_orchestrator_slurm.dart';

class ClusterOrchestrator {
  /// When set in Orchestrator, indicates that the cluster should use
  /// [Slurm](https://slurm.schedmd.com/) as the orchestrator.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestratorSlurm?>? slurm;

  /// Creates a new [ClusterOrchestrator].
  /// [slurm] When set in Orchestrator, indicates that the cluster should use
  const ClusterOrchestrator({
    this.slurm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slurm': ?pulumi.Input.mapOptionalInputValue<ClusterOrchestratorSlurm, Map<String, dynamic>>(slurm, (value) => value.toMap()),
    };
  }

  factory ClusterOrchestrator.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestrator(
      slurm: (() { final guardedValue = map['slurm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOrchestratorSlurm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
