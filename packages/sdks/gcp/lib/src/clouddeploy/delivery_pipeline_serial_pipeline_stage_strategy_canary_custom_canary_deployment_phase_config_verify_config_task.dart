// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_verify_config_task_container.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask {
  /// Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTaskContainer?>? container;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask].
  /// [container] Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTaskContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTaskContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
