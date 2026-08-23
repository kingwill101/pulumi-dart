// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_deployment_patch_apps_v1beta1.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategyPatchAppsV1beta1 {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final pulumi.Input<RollingUpdateDeploymentPatchAppsV1beta1>? rollingUpdate;
  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DeploymentStrategyPatchAppsV1beta1].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  const DeploymentStrategyPatchAppsV1beta1({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDeploymentPatchAppsV1beta1, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DeploymentStrategyPatchAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyPatchAppsV1beta1(
      rollingUpdate: (() { final guardedValue = map['rollingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpdateDeploymentPatchAppsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
