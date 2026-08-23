// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_deployment_apps_v1beta2.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategyAppsV1beta2 {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final pulumi.Input<RollingUpdateDeploymentAppsV1beta2>? rollingUpdate;
  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DeploymentStrategyAppsV1beta2].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  const DeploymentStrategyAppsV1beta2({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDeploymentAppsV1beta2, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DeploymentStrategyAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyAppsV1beta2(
      rollingUpdate: (() { final guardedValue = map['rollingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpdateDeploymentAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
