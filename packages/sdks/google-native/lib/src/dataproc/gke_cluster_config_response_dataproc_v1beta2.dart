// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_gke_deployment_target_response_dataproc_v1beta2.dart';

/// The GKE config for this cluster.
class GkeClusterConfigResponseDataprocV1beta2 {
  /// Optional. A target for the deployment.
  final pulumi.Input<NamespacedGkeDeploymentTargetResponseDataprocV1beta2> namespacedGkeDeploymentTarget;

  /// Creates a new [GkeClusterConfigResponseDataprocV1beta2].
  /// [namespacedGkeDeploymentTarget] Optional. A target for the deployment.
  const GkeClusterConfigResponseDataprocV1beta2({
    required this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedGkeDeploymentTarget': pulumi.Input.mapInputValue<NamespacedGkeDeploymentTargetResponseDataprocV1beta2, Map<String, dynamic>>(namespacedGkeDeploymentTarget, (value) => value.toMap()),
    };
  }

  factory GkeClusterConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return GkeClusterConfigResponseDataprocV1beta2(
      namespacedGkeDeploymentTarget: pulumi.Input.fromValue(NamespacedGkeDeploymentTargetResponseDataprocV1beta2.fromMap((map['namespacedGkeDeploymentTarget']! as Map).cast<String, dynamic>())),
    );
  }
}
