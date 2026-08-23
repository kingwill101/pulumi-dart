// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis_custom_check_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck {
  /// Optional. The frequency at which the custom check will be run, with a minimum and default of 5 minutes.
  final pulumi.Input<String>? frequency;
  /// Required. The ID of the custom Analysis check.
  final pulumi.Input<String> id;
  /// Required. The Task to be run for this custom check.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask>? task;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck].
  /// [frequency] Optional. The frequency at which the custom check will be run, with a minimum and default of 5 minutes.
  /// [id] Required. The ID of the custom Analysis check.
  /// [task] Required. The Task to be run for this custom check.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck({
    this.frequency,
    required this.id,
    this.task,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'id': id,
      'task': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask, Map<String, dynamic>>(task, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheck(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      task: (() { final guardedValue = map['task']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
