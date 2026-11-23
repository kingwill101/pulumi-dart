// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_orchestrator_spec_kubernetes_spec.dart';
import 'ai_model_development_cluster_orchestrator_spec_slurm_spec.dart';

class AiModelDevelopmentClusterOrchestratorSpec {
  /// The GKE orchestrator related spec of the cluster.
  final pulumi.Input<AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec?>? kubernetesSpec;
  /// The Slurm orchestrator related spec of the cluster.
  final pulumi.Input<AiModelDevelopmentClusterOrchestratorSpecSlurmSpec?>? slurmSpec;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpec].
  /// [kubernetesSpec] The GKE orchestrator related spec of the cluster.
  /// [slurmSpec] The Slurm orchestrator related spec of the cluster.
  const AiModelDevelopmentClusterOrchestratorSpec({
    this.kubernetesSpec,
    this.slurmSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec, Map<String, dynamic>>(kubernetesSpec, (value) => value.toMap()),
      'slurmSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterOrchestratorSpecSlurmSpec, Map<String, dynamic>>(slurmSpec, (value) => value.toMap()),
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpec(
      kubernetesSpec: (() { final guardedValue = map['kubernetesSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slurmSpec: (() { final guardedValue = map['slurmSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterOrchestratorSpecSlurmSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
