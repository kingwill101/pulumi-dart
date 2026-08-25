// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_verify_config_task_container.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask {
  /// Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTaskContainer?>? container;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask].
  /// [container] Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTaskContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTaskContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
