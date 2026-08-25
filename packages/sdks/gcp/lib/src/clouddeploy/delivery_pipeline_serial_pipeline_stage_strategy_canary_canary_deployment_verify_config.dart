// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_verify_config_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig {
  /// Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask>?>? tasks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig].
  /// [tasks] Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig({
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfig(
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentVerifyConfigTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
