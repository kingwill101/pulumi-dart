// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_response.dart';

/// For display only. Metadata associated with a load balancer.
class LoadBalancerInfoResponse {
  /// Type of load balancer's backend configuration.
  final pulumi.Input<String> backendType;
  /// Backend configuration URI.
  final pulumi.Input<String> backendUri;
  /// Information for the loadbalancer backends.
  final pulumi.Input<List<LoadBalancerBackendResponse>> backends;
  /// URI of the health check for the load balancer. Deprecated and no longer populated as different load balancer backends might have different health checks.
  final pulumi.Input<String> healthCheckUri;
  /// Type of the load balancer.
  final pulumi.Input<String> loadBalancerType;

  /// Creates a new [LoadBalancerInfoResponse].
  /// [backendType] Type of load balancer's backend configuration.
  /// [backendUri] Backend configuration URI.
  /// [backends] Information for the loadbalancer backends.
  /// [healthCheckUri] URI of the health check for the load balancer. Deprecated and no longer populated as different load balancer backends might have different health checks.
  /// [loadBalancerType] Type of the load balancer.
  LoadBalancerInfoResponse({
    required this.backendType,
    required this.backendUri,
    required this.backends,
    required this.healthCheckUri,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendType': backendType,
      'backendUri': backendUri,
      'backends': pulumi.Input.mapInputValue<List<LoadBalancerBackendResponse>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<LoadBalancerBackendResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthCheckUri': healthCheckUri,
      'loadBalancerType': loadBalancerType,
    };
  }

  factory LoadBalancerInfoResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerInfoResponse(
      backendType: pulumi.Input.fromValue(map['backendType'] as String),
      backendUri: pulumi.Input.fromValue(map['backendUri'] as String),
      backends: pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerBackendResponse>(map['backends']!, (value) => LoadBalancerBackendResponse.fromMap((value as Map).cast<String, dynamic>()))),
      healthCheckUri: pulumi.Input.fromValue(map['healthCheckUri'] as String),
      loadBalancerType: pulumi.Input.fromValue(map['loadBalancerType'] as String),
    );
  }
}

