// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_predeploy_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy {
  /// Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  final pulumi.Input<List<String>?>? actions;
  /// Optional. The tasks that will run as a part of the predeploy job. Only one of `actions` or `tasks` can be specified.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyStandardPredeployTask>?>? tasks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy].
  /// [actions] Optional. A sequence of skaffold custom actions to invoke during execution of the predeploy job.
  /// [tasks] Optional. The tasks that will run as a part of the predeploy job. Only one of `actions` or `tasks` can be specified.
  const DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy({
    this.actions,
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyStandardPredeployTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyStandardPredeployTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyStandardPredeployTask>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyStandardPredeployTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
