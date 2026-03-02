// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking {
  /// Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final pulumi.Input<String> deployment;
  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final pulumi.Input<bool>? disablePodOverprovisioning;
  /// Optional. The label to use when selecting Pods for the Deployment resource. This label must already be present in the Deployment.
  final pulumi.Input<String>? podSelectorLabel;
  /// Required. Name of the Kubernetes Service.
  final pulumi.Input<String> service;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking].
  /// [deployment] Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  /// [disablePodOverprovisioning] Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  /// [podSelectorLabel] Optional. The label to use when selecting Pods for the Deployment resource. This label must already be present in the Deployment.
  /// [service] Required. Name of the Kubernetes Service.
  DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    this.podSelectorLabel,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'disablePodOverprovisioning': ?disablePodOverprovisioning,
      'podSelectorLabel': ?podSelectorLabel,
      'service': service,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryRuntimeConfigKubernetesServiceNetworking(
      deployment: (map['deployment'] as String).input(),
      disablePodOverprovisioning: map['disablePodOverprovisioning'] == null ? null : (map['disablePodOverprovisioning'] as bool).input(),
      podSelectorLabel: map['podSelectorLabel'] == null ? null : (map['podSelectorLabel'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

