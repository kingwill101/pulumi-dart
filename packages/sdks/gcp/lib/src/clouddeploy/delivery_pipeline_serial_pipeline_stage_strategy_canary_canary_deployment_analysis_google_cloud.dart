// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_analysis_google_cloud_alert_policy_check.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud {
  /// Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck>?>? alertPolicyChecks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud].
  /// [alertPolicyChecks] Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertPolicyChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck>, List<Map<String, dynamic>>>(alertPolicyChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud(
      alertPolicyChecks: (() { final guardedValue = map['alertPolicyChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
