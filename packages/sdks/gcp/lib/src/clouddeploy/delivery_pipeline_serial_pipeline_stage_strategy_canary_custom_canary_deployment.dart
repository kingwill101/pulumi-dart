// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment_phase_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment {
  /// Required. Configuration for each phase in the canary deployment in the order executed.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig>> phaseConfigs;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment].
  /// [phaseConfigs] Required. Configuration for each phase in the canary deployment in the order executed.
  DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment({
    required this.phaseConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phaseConfigs': pulumi.Input.mapInputValue<List<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig>, List<Map<String, dynamic>>>(phaseConfigs, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment(
      phaseConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig>(map['phaseConfigs']!, (value) => DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeploymentPhaseConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

