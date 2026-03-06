// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Kubernetes Service networking configuration.
class ServiceNetworkingResponse {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final pulumi.Input<String> deployment;
  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final pulumi.Input<bool> disablePodOverprovisioning;
  /// Name of the Kubernetes Service.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceNetworkingResponse].
  /// [deployment] Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  /// [disablePodOverprovisioning] Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  /// [service] Name of the Kubernetes Service.
  const ServiceNetworkingResponse({
    required this.deployment,
    required this.disablePodOverprovisioning,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'disablePodOverprovisioning': disablePodOverprovisioning,
      'service': service,
    };
  }

  factory ServiceNetworkingResponse.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkingResponse(
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      disablePodOverprovisioning: pulumi.Input.fromValue(map['disablePodOverprovisioning'] as bool),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

