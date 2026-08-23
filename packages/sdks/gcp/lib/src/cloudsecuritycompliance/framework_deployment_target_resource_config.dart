// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_target_resource_config_target_resource_creation_config.dart';

class FrameworkDeploymentTargetResourceConfig {
  /// CRM node in format organizations/{organization}, folders/{folder},
  /// or projects/{project}
  final pulumi.Input<String>? existingTargetResource;
  /// TargetResourceCreationConfig contains the config to create a new resource to
  /// be used as the targetResource of a deployment.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig>? targetResourceCreationConfig;

  /// Creates a new [FrameworkDeploymentTargetResourceConfig].
  /// [existingTargetResource] CRM node in format organizations/{organization}, folders/{folder},
  /// [targetResourceCreationConfig] TargetResourceCreationConfig contains the config to create a new resource to
  const FrameworkDeploymentTargetResourceConfig({
    this.existingTargetResource,
    this.targetResourceCreationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'existingTargetResource': ?existingTargetResource,
      'targetResourceCreationConfig': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig, Map<String, dynamic>>(targetResourceCreationConfig, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentTargetResourceConfig.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfig(
      existingTargetResource: (() { final guardedValue = map['existingTargetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceCreationConfig: (() { final guardedValue = map['targetResourceCreationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
