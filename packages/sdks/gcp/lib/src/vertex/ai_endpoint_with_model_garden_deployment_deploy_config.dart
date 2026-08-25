// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources.dart';

class AiEndpointWithModelGardenDeploymentDeployConfig {
  /// A description of resources that are dedicated to a DeployedModel or
  /// DeployedIndex, and that need a higher degree of manual configuration.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources?>? dedicatedResources;
  /// If true, enable the QMT fast tryout feature for this model if possible.
  final pulumi.Input<bool?>? fastTryoutEnabled;
  /// System labels for Model Garden deployments.
  /// These labels are managed by Google and for tracking purposes only.
  final pulumi.Input<Map<String, String>?>? systemLabels;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfig].
  /// [dedicatedResources] A description of resources that are dedicated to a DeployedModel or
  /// [fastTryoutEnabled] If true, enable the QMT fast tryout feature for this model if possible.
  /// [systemLabels] System labels for Model Garden deployments.
  const AiEndpointWithModelGardenDeploymentDeployConfig({
    this.dedicatedResources,
    this.fastTryoutEnabled,
    this.systemLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources, Map<String, dynamic>>(dedicatedResources, (value) => value.toMap()),
      'fastTryoutEnabled': ?fastTryoutEnabled,
      'systemLabels': ?systemLabels,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfig(
      dedicatedResources: (() { final guardedValue = map['dedicatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fastTryoutEnabled: (() { final guardedValue = map['fastTryoutEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      systemLabels: (() { final guardedValue = map['systemLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
