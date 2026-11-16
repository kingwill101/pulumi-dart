// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_orchestrator_spec_slurm_spec.dart';

class AiModelDevelopmentClusterOrchestratorSpec {
  /// The Slurm orchestrator related spec of the cluster.
  final pulumi.Input<AiModelDevelopmentClusterOrchestratorSpecSlurmSpec?>? slurmSpec;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpec].
  /// [slurmSpec] The Slurm orchestrator related spec of the cluster.
  const AiModelDevelopmentClusterOrchestratorSpec({
    this.slurmSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slurmSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterOrchestratorSpecSlurmSpec, Map<String, dynamic>>(slurmSpec, (value) => value.toMap()),
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpec(
      slurmSpec: (() { final guardedValue = map['slurmSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterOrchestratorSpecSlurmSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
