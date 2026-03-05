// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_response.dart';

/// ModelDeploymentMonitoringObjectiveConfig contains the pair of deployed_model_id to ModelMonitoringObjectiveConfig.
class GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse {
  /// The DeployedModel ID of the objective config.
  final pulumi.Input<String> deployedModelId;
  /// The objective config of for the modelmonitoring job of this deployed model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse> objectiveConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse].
  /// [deployedModelId] The DeployedModel ID of the objective config.
  /// [objectiveConfig] The objective config of for the modelmonitoring job of this deployed model.
  GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse({
    required this.deployedModelId,
    required this.objectiveConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedModelId': deployedModelId,
      'objectiveConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse, Map<String, dynamic>>(objectiveConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse(
      deployedModelId: pulumi.Input.fromValue(map['deployedModelId'] as String),
      objectiveConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse.fromMap((map['objectiveConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

