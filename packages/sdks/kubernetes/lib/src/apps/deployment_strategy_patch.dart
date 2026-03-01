// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_deployment_patch.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategyPatch {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final RollingUpdateDeploymentPatch? rollingUpdate;
  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final String? type;

  /// Creates a new [DeploymentStrategyPatch].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  DeploymentStrategyPatch({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory DeploymentStrategyPatch.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyPatch(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateDeploymentPatch.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

