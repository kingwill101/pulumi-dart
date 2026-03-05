// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Kubernetes Service networking configuration.
class ServiceNetworking {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  final pulumi.Input<String> deployment;
  /// Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  final pulumi.Input<bool>? disablePodOverprovisioning;
  /// Name of the Kubernetes Service.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceNetworking].
  /// [deployment] Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  /// [disablePodOverprovisioning] Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  /// [service] Name of the Kubernetes Service.
  ServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'disablePodOverprovisioning': ?disablePodOverprovisioning,
      'service': service,
    };
  }

  factory ServiceNetworking.fromMap(Map<String, dynamic> map) {
    return ServiceNetworking(
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      disablePodOverprovisioning: (() { final guardedValue = map['disablePodOverprovisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

