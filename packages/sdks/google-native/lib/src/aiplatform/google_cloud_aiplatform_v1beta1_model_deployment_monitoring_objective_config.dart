// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config.dart';

/// ModelDeploymentMonitoringObjectiveConfig contains the pair of deployed_model_id to ModelMonitoringObjectiveConfig.
class GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig {
  /// The DeployedModel ID of the objective config.
  final pulumi.Input<String>? deployedModelId;
  /// The objective config of for the modelmonitoring job of this deployed model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig>? objectiveConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig].
  /// [deployedModelId] The DeployedModel ID of the objective config.
  /// [objectiveConfig] The objective config of for the modelmonitoring job of this deployed model.
  const GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig({
    this.deployedModelId,
    this.objectiveConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedModelId': ?deployedModelId,
      'objectiveConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig, Map<String, dynamic>>(objectiveConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfig(
      deployedModelId: (() { final guardedValue = map['deployedModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectiveConfig: (() { final guardedValue = map['objectiveConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

