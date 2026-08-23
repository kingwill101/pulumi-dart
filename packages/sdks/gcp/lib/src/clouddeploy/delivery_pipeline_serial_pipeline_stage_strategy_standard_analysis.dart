// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_analysis_custom_check.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_analysis_google_cloud.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis {
  /// Optional. Custom analysis checks from 3P metric providers.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheck>>? customChecks;
  /// Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  final pulumi.Input<String> duration;
  /// Optional. Google Cloud - based analysis checks.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud>? googleCloud;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis].
  /// [customChecks] Optional. Custom analysis checks from 3P metric providers.
  /// [duration] Required. The amount of time in minutes the analysis on the target will last. If all analysis checks have successfully completed before the specified duration, the analysis is successful. If a check is still running while the specified duration passes, it will wait for that check to complete to determine if the analysis is successful. The maximum duration is 48 hours.
  /// [googleCloud] Optional. Google Cloud - based analysis checks.
  const DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis({
    this.customChecks,
    required this.duration,
    this.googleCloud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customChecks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheck>, List<Map<String, dynamic>>>(customChecks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'duration': duration,
      'googleCloud': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud, Map<String, dynamic>>(googleCloud, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis(
      customChecks: (() { final guardedValue = map['customChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheck>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      googleCloud: (() { final guardedValue = map['googleCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisGoogleCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
