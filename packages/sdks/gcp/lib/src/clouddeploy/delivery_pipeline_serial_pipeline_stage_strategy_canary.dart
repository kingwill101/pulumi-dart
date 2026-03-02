// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_custom_canary_deployment.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanary {
  /// Configures the progressive based deployment for a Target.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment>? canaryDeployment;
  /// Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment>? customCanaryDeployment;
  /// Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig>? runtimeConfig;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanary].
  /// [canaryDeployment] Configures the progressive based deployment for a Target.
  /// [customCanaryDeployment] Configures the progressive based deployment for a Target, but allows customizing at the phase level where a phase represents each of the percentage deployments.
  /// [runtimeConfig] Optional. Runtime specific configurations for the deployment strategy. The runtime configuration is used to determine how Cloud Deploy will split traffic to enable a progressive deployment.
  DeliveryPipelineSerialPipelineStageStrategyCanary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryDeployment': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment, Map<String, dynamic>>(canaryDeployment, (value) => value.toMap()),
      'customCanaryDeployment': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment, Map<String, dynamic>>(customCanaryDeployment, (value) => value.toMap()),
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanary.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanary(
      canaryDeployment: map['canaryDeployment'] == null ? null : (DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment.fromMap((map['canaryDeployment']! as Map).cast<String, dynamic>())).input(),
      customCanaryDeployment: map['customCanaryDeployment'] == null ? null : (DeliveryPipelineSerialPipelineStageStrategyCanaryCustomCanaryDeployment.fromMap((map['customCanaryDeployment']! as Map).cast<String, dynamic>())).input(),
      runtimeConfig: map['runtimeConfig'] == null ? null : (DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig.fromMap((map['runtimeConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

