// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_gke_deployment_target_dataproc_v1beta2.dart';

/// The GKE config for this cluster.
class GkeClusterConfigDataprocV1beta2 {
  /// Optional. A target for the deployment.
  final pulumi.Input<NamespacedGkeDeploymentTargetDataprocV1beta2>? namespacedGkeDeploymentTarget;

  /// Creates a new [GkeClusterConfigDataprocV1beta2].
  /// [namespacedGkeDeploymentTarget] Optional. A target for the deployment.
  GkeClusterConfigDataprocV1beta2({
    this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedGkeDeploymentTarget': ?pulumi.Input.mapOptionalInputValue<NamespacedGkeDeploymentTargetDataprocV1beta2, Map<String, dynamic>>(namespacedGkeDeploymentTarget, (value) => value.toMap()),
    };
  }

  factory GkeClusterConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigDataprocV1beta2(
      namespacedGkeDeploymentTarget: (() { final guardedValue = map['namespacedGkeDeploymentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespacedGkeDeploymentTargetDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

