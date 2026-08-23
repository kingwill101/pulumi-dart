// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_analysis.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_predeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_verify_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandard {
  /// Optional. Configuration for the analysis job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis>? analysis;
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy>? postdeploy;
  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy>? predeploy;
  /// Whether to verify a deployment.
  final pulumi.Input<bool>? verify;
  /// Optional. Configuration for the verify job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig>? verifyConfig;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandard].
  /// [analysis] Optional. Configuration for the analysis job.
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  /// [verifyConfig] Optional. Configuration for the verify job.
  const DeliveryPipelineSerialPipelineStageStrategyStandard({
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verify,
    this.verifyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': ?verify,
      'verifyConfig': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig, Map<String, dynamic>>(verifyConfig, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandard.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandard(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verifyConfig: (() { final guardedValue = map['verifyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
