// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_deployment.dart';

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategy {
  /// Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  final pulumi.Input<RollingUpdateDeployment>? rollingUpdate;
  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DeploymentStrategy].
  /// [rollingUpdate] Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
  /// [type] Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  DeploymentStrategy({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDeployment, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DeploymentStrategy.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategy(
      rollingUpdate: map['rollingUpdate'] == null ? null : (RollingUpdateDeployment.fromMap((map['rollingUpdate']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

