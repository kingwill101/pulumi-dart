// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis_google_cloud_alert_policy_check.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud {
  /// Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloudAlertPolicyCheck>?>? alertPolicyChecks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud].
  /// [alertPolicyChecks] Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertPolicyChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloudAlertPolicyCheck>, List<Map<String, dynamic>>>(alertPolicyChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloudAlertPolicyCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud(
      alertPolicyChecks: (() { final guardedValue = map['alertPolicyChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloudAlertPolicyCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloudAlertPolicyCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
