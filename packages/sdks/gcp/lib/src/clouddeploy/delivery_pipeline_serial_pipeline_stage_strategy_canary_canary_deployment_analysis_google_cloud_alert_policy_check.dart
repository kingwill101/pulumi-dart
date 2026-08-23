// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck {
  /// Required. The Cloud Monitoring Alert Policies to check for active alerts. Format is `projects/{project}/alertPolicies/{alert_policy}`.
  final pulumi.Input<List<String>> alertPolicies;
  /// Required. The ID of the analysis check.
  final pulumi.Input<String> id;
  /// Optional. A set of labels to filter active alerts. If set, only alerts having all of the specified labels will be considered. Otherwise, all active alerts will be considered.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck].
  /// [alertPolicies] Required. The Cloud Monitoring Alert Policies to check for active alerts. Format is `projects/{project}/alertPolicies/{alert_policy}`.
  /// [id] Required. The ID of the analysis check.
  /// [labels] Optional. A set of labels to filter active alerts. If set, only alerts having all of the specified labels will be considered. Otherwise, all active alerts will be considered.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck({
    required this.alertPolicies,
    required this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertPolicies': alertPolicies,
      'id': id,
      'labels': ?labels,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck(
      alertPolicies: pulumi.Input.fromValue((map['alertPolicies'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
