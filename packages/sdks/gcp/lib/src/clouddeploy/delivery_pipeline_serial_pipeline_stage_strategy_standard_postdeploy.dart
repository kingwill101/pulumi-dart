// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_postdeploy_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  final pulumi.Input<List<String>>? actions;
  /// Optional. The tasks that will run as a part of the postdeploy job. Only one of `actions` or `tasks` can be specified.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask>>? tasks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the postdeploy job.
  /// [tasks] Optional. The tasks that will run as a part of the postdeploy job. Only one of `actions` or `tasks` can be specified.
  const DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy({
    this.actions,
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyStandardPostdeployTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
