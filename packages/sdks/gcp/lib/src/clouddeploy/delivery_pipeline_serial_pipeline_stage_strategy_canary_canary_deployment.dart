// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_analysis.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_predeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_verify_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment {
  /// Optional. Configuration for the analysis job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis>? analysis;
  /// Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  final pulumi.Input<List<int>> percentages;
  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy>? postdeploy;
  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy>? predeploy;
  /// Whether to run verify tests after each percentage deployment.
  final pulumi.Input<bool>? verify;
  /// Optional. Configuration for the verify job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig>? verifyConfig;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment].
  /// [analysis] Optional. Configuration for the analysis job.
  /// [percentages] Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to run verify tests after each percentage deployment.
  /// [verifyConfig] Optional. Configuration for the verify job.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment({
    this.analysis,
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
    this.verifyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'percentages': percentages,
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': ?verify,
      'verifyConfig': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig, Map<String, dynamic>>(verifyConfig, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      percentages: pulumi.Input.fromValue((map['percentages'] as List).cast<int>()),
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verifyConfig: (() { final guardedValue = map['verifyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
