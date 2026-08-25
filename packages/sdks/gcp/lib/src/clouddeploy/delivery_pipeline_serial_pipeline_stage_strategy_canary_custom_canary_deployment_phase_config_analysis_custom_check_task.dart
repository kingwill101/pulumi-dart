// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_analysis_custom_check_task_container.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask {
  /// Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTaskContainer?>? container;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask].
  /// [container] Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTaskContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTask(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigAnalysisCustomCheckTaskContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
