// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_analysis_google_cloud_alert_policy_check.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud {
  /// Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloudAlertPolicyCheck>?>? alertPolicyChecks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud].
  /// [alertPolicyChecks] Optional. A list of Cloud Monitoring Alert Policy checks to perform as part of the analysis.
  const DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertPolicyChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloudAlertPolicyCheck>, List<Map<String, dynamic>>>(alertPolicyChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloudAlertPolicyCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud(
      alertPolicyChecks: (() { final guardedValue = map['alertPolicyChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloudAlertPolicyCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloudAlertPolicyCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
