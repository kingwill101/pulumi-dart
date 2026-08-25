// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config_verify_config_task.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig {
  /// Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask>?>? tasks;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig].
  /// [tasks] Optional. The tasks that will run as a part of the verify job. The tasks are executed sequentially in the order specified.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig({
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfig(
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask>(guardedValue, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfigVerifyConfigTask.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
