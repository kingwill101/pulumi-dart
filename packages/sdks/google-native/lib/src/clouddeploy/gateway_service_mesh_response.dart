// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the Kubernetes Gateway API service mesh configuration.
class GatewayServiceMeshResponse {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  final pulumi.Input<String> deployment;
  /// Name of the Gateway API HTTPRoute.
  final pulumi.Input<String> httpRoute;
  /// Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  final pulumi.Input<String> routeUpdateWaitTime;
  /// Name of the Kubernetes Service.
  final pulumi.Input<String> service;

  /// Creates a new [GatewayServiceMeshResponse].
  /// [deployment] Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  /// [httpRoute] Name of the Gateway API HTTPRoute.
  /// [routeUpdateWaitTime] Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  /// [service] Name of the Kubernetes Service.
  GatewayServiceMeshResponse({
    required this.deployment,
    required this.httpRoute,
    required this.routeUpdateWaitTime,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'httpRoute': httpRoute,
      'routeUpdateWaitTime': routeUpdateWaitTime,
      'service': service,
    };
  }

  factory GatewayServiceMeshResponse.fromMap(Map<String, dynamic> map) {
    return GatewayServiceMeshResponse(
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      httpRoute: pulumi.Input.fromValue(map['httpRoute'] as String),
      routeUpdateWaitTime: pulumi.Input.fromValue(map['routeUpdateWaitTime'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

