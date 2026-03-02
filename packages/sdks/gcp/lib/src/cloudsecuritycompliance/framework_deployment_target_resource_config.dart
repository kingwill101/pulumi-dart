// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_target_resource_config_target_resource_creation_config.dart';

class FrameworkDeploymentTargetResourceConfig {
  /// CRM node in format organizations/{organization}, folders/{folder},
  /// or projects/{project}
  final pulumi.Input<String>? existingTargetResource;
  /// TargetResourceCreationConfig contains the config to create a new resource to
  /// be used as the target_resource of a deployment.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig>? targetResourceCreationConfig;

  /// Creates a new [FrameworkDeploymentTargetResourceConfig].
  /// [existingTargetResource] CRM node in format organizations/{organization}, folders/{folder},
  /// [targetResourceCreationConfig] TargetResourceCreationConfig contains the config to create a new resource to
  FrameworkDeploymentTargetResourceConfig({
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
      existingTargetResource: map['existingTargetResource'] == null ? null : (map['existingTargetResource']! as String).input(),
      targetResourceCreationConfig: map['targetResourceCreationConfig'] == null ? null : (FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig.fromMap((map['targetResourceCreationConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

