// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes_gateway_service_mesh.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes_service_networking.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes {
  /// Kubernetes Gateway API service mesh configuration.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh>? gatewayServiceMesh;
  /// Kubernetes Service networking configuration.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking>? serviceNetworking;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes].
  /// [gatewayServiceMesh] Kubernetes Gateway API service mesh configuration.
  /// [serviceNetworking] Kubernetes Service networking configuration.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes({
    this.gatewayServiceMesh,
    this.serviceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayServiceMesh': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh, Map<String, dynamic>>(gatewayServiceMesh, (value) => value.toMap()),
      'serviceNetworking': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking, Map<String, dynamic>>(serviceNetworking, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetes(
      gatewayServiceMesh: (() { final guardedValue = map['gatewayServiceMesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNetworking: (() { final guardedValue = map['serviceNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

