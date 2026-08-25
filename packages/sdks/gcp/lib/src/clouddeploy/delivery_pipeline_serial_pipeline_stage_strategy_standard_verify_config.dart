// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_verify_config_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig {
  /// Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfigTask>?>? tasks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig].
  /// [tasks] Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  const DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig({
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfigTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfigTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfig(
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfigTask>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyStandardVerifyConfigTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
