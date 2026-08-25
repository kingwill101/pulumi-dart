// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis_custom_check.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis_google_cloud.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis {
  /// Optional. Custom analysis checks from 3P metric providers.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck>?>? customChecks;
  /// Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  final pulumi.Input<String> duration;
  /// Optional. Google Cloud - based analysis checks.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud?>? googleCloud;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis].
  /// [customChecks] Optional. Custom analysis checks from 3P metric providers.
  /// [duration] Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  /// [googleCloud] Optional. Google Cloud - based analysis checks.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis({
    this.customChecks,
    required this.duration,
    this.googleCloud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck>, List<Map<String, dynamic>>>(customChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'duration': duration,
      'googleCloud': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud, Map<String, dynamic>>(googleCloud, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis(
      customChecks: (() { final guardedValue = map['customChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      googleCloud: (() { final guardedValue = map['googleCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisGoogleCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
