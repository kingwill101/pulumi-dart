// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_analysis_custom_check.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_analysis_google_cloud.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis {
  /// Optional. Custom analysis checks from 3P metric providers.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisCustomCheck>>? customChecks;
  /// Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  final pulumi.Input<String> duration;
  /// Optional. Google Cloud - based analysis checks.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud>? googleCloud;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis].
  /// [customChecks] Optional. Custom analysis checks from 3P metric providers.
  /// [duration] Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  /// [googleCloud] Optional. Google Cloud - based analysis checks.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis({
    this.customChecks,
    required this.duration,
    this.googleCloud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisCustomCheck>, List<Map<String, dynamic>>>(customChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisCustomCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'duration': duration,
      'googleCloud': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud, Map<String, dynamic>>(googleCloud, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis(
      customChecks: (() { final guardedValue = map['customChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisCustomCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisCustomCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      googleCloud: (() { final guardedValue = map['googleCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysisGoogleCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
