// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_deployment_patch_apps_v1beta2.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategyPatchAppsV1beta2 {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final RollingUpdateDeploymentPatchAppsV1beta2? rollingUpdate;
  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final String? type;

  /// Creates a new [DeploymentStrategyPatchAppsV1beta2].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  DeploymentStrategyPatchAppsV1beta2({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory DeploymentStrategyPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyPatchAppsV1beta2(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateDeploymentPatchAppsV1beta2.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

