// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_predeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_verify_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig {
  /// Optional. Configuration for the analysis job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis?>? analysis;
  /// Required. Percentage deployment for the phase.
  final pulumi.Input<int> percentage;
  /// Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  final pulumi.Input<String> phaseId;
  /// Optional. Configuration for the postdeploy job of this phase. If this is not configured, postdeploy job will not be present for this phase.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy?>? postdeploy;
  /// Optional. Configuration for the predeploy job of this phase. If this is not configured, predeploy job will not be present for this phase.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy?>? predeploy;
  /// Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  final pulumi.Input<List<String>?>? profiles;
  /// Whether to run verify tests after the deployment.
  final pulumi.Input<bool?>? verify;
  /// Optional. Configuration for the verify job.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig?>? verifyConfig;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig].
  /// [analysis] Optional. Configuration for the analysis job.
  /// [percentage] Required. Percentage deployment for the phase.
  /// [phaseId] Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  /// [postdeploy] Optional. Configuration for the postdeploy job of this phase. If this is not configured, postdeploy job will not be present for this phase.
  /// [predeploy] Optional. Configuration for the predeploy job of this phase. If this is not configured, predeploy job will not be present for this phase.
  /// [profiles] Skaffold profiles to use when rendering the manifest for this phase. These are in addition to the profiles list specified in the `DeliveryPipeline` stage.
  /// [verify] Whether to run verify tests after the deployment.
  /// [verifyConfig] Optional. Configuration for the verify job.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig({
    this.analysis,
    required this.percentage,
    required this.phaseId,
    this.postdeploy,
    this.predeploy,
    this.profiles,
    this.verify,
    this.verifyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'percentage': percentage,
      'phaseId': phaseId,
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'profiles': ?profiles,
      'verify': ?verify,
      'verifyConfig': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig, Map<String, dynamic>>(verifyConfig, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toInt()),
      phaseId: pulumi.Input.fromValue(map['phaseId'] as String),
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPostdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigPredeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verifyConfig: (() { final guardedValue = map['verifyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
