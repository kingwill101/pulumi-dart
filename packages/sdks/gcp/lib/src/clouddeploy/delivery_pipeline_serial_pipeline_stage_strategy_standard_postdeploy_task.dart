// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_postdeploy_task_container.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask {
  /// Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTaskContainer?>? container;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask].
  /// [container] Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  const DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTaskContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTaskContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
