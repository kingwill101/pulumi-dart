// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_deployment_patch.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategyPatch {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final pulumi.Input<RollingUpdateDeploymentPatch>? rollingUpdate;

  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DeploymentStrategyPatch].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  DeploymentStrategyPatch({this.rollingUpdate, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate':
          ?pulumi.Input.mapOptionalInputValue<
            RollingUpdateDeploymentPatch,
            Map<String, dynamic>
          >(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DeploymentStrategyPatch.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyPatch(
      rollingUpdate: (() {
        final guardedValue = map['rollingUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RollingUpdateDeploymentPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
