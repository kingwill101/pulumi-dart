// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_cloud_run.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig {
  /// Cloud Run runtime configuration.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun>? cloudRun;
  /// Kubernetes runtime configuration.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes>? kubernetes;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig].
  /// [cloudRun] Cloud Run runtime configuration.
  /// [kubernetes] Kubernetes runtime configuration.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRun': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfig(
      cloudRun: map['cloudRun'] == null ? null : (DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigCloudRun.fromMap((map['cloudRun']! as Map).cast<String, dynamic>())).input(),
      kubernetes: map['kubernetes'] == null ? null : (DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes.fromMap((map['kubernetes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

