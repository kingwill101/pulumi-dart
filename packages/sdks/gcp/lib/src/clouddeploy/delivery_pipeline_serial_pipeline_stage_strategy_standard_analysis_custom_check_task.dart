// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_analysis_custom_check_task_container.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTask {
  /// Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTaskContainer>? container;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTask].
  /// [container] Optional. This task is represented by a container that is executed in the Cloud Build execution environment.
  const DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTask({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTaskContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTask.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTask(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandardAnalysisCustomCheckTaskContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
