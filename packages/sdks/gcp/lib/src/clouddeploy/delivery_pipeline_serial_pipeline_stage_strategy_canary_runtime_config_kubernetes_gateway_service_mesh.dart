// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_runtime_config_kubernetes_gateway_service_mesh_route_destinations.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh {
  /// Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  final pulumi.Input<String> deployment;

  /// Required. Name of the Gateway API HTTPRoute.
  final pulumi.Input<String> httpRoute;

  /// Optional. The label to use when selecting Pods for the Deployment and Service resources. This label must already be present in both resources.
  final pulumi.Input<String>? podSelectorLabel;

  /// Optional. Route destinations allow configuring the Gateway API HTTPRoute to be deployed to additional clusters. This option is available for multi-cluster service mesh set ups that require the route to exist in the clusters that call the service. If unspecified, the HTTPRoute will only be deployed to the Target cluster.
  final pulumi.Input<
    DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations
  >?
  routeDestinations;

  /// Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  final pulumi.Input<String>? routeUpdateWaitTime;

  /// Required. Name of the Kubernetes Service.
  final pulumi.Input<String> service;

  /// Optional. The amount of time to migrate traffic back from the canary Service to the original Service during the stable phase deployment. If specified, must be between 15s and 3600s. If unspecified, there is no cutback time.
  final pulumi.Input<String>? stableCutbackDuration;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh].
  /// [deployment] Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  /// [httpRoute] Required. Name of the Gateway API HTTPRoute.
  /// [podSelectorLabel] Optional. The label to use when selecting Pods for the Deployment and Service resources. This label must already be present in both resources.
  /// [routeDestinations] Optional. Route destinations allow configuring the Gateway API HTTPRoute to be deployed to additional clusters. This option is available for multi-cluster service mesh set ups that require the route to exist in the clusters that call the service. If unspecified, the HTTPRoute will only be deployed to the Target cluster.
  /// [routeUpdateWaitTime] Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  /// [service] Required. Name of the Kubernetes Service.
  /// [stableCutbackDuration] Optional. The amount of time to migrate traffic back from the canary Service to the original Service during the stable phase deployment. If specified, must be between 15s and 3600s. If unspecified, there is no cutback time.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh({
    required this.deployment,
    required this.httpRoute,
    this.podSelectorLabel,
    this.routeDestinations,
    this.routeUpdateWaitTime,
    required this.service,
    this.stableCutbackDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'httpRoute': httpRoute,
      'podSelectorLabel': ?podSelectorLabel,
      'routeDestinations':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations,
            Map<String, dynamic>
          >(routeDestinations, (value) => value.toMap()),
      'routeUpdateWaitTime': ?routeUpdateWaitTime,
      'service': service,
      'stableCutbackDuration': ?stableCutbackDuration,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh(
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      httpRoute: pulumi.Input.fromValue(map['httpRoute'] as String),
      podSelectorLabel: (() {
        final guardedValue = map['podSelectorLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeDestinations: (() {
        final guardedValue = map['routeDestinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      routeUpdateWaitTime: (() {
        final guardedValue = map['routeUpdateWaitTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: pulumi.Input.fromValue(map['service'] as String),
      stableCutbackDuration: (() {
        final guardedValue = map['stableCutbackDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
