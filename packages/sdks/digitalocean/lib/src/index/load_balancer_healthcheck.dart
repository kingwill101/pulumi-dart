// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerHealthcheck {
  /// The number of seconds between two consecutive health checks. If not specified, the default value is `10`.
  final pulumi.Input<int>? checkIntervalSeconds;
  /// The number of times a health check must pass for a backend Droplet to be marked "healthy" and be re-added to the pool. If not specified, the default value is `5`.
  final pulumi.Input<int>? healthyThreshold;
  /// The path on the backend Droplets to which the Load Balancer instance will send a request.
  final pulumi.Input<String>? path;
  /// An integer representing the port on the backend Droplets on which the health check will attempt a connection.
  final pulumi.Input<int> port;
  /// The protocol used for health checks sent to the backend Droplets. The possible values are `http`, `https` or `tcp`.
  final pulumi.Input<String> protocol;
  /// The number of seconds the Load Balancer instance will wait for a response until marking a health check as failed. If not specified, the default value is `5`.
  final pulumi.Input<int>? responseTimeoutSeconds;
  /// The number of times a health check must fail for a backend Droplet to be marked "unhealthy" and be removed from the pool. If not specified, the default value is `3`.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [LoadBalancerHealthcheck].
  /// [checkIntervalSeconds] The number of seconds between two consecutive health checks. If not specified, the default value is `10`.
  /// [healthyThreshold] The number of times a health check must pass for a backend Droplet to be marked "healthy" and be re-added to the pool. If not specified, the default value is `5`.
  /// [path] The path on the backend Droplets to which the Load Balancer instance will send a request.
  /// [port] An integer representing the port on the backend Droplets on which the health check will attempt a connection.
  /// [protocol] The protocol used for health checks sent to the backend Droplets. The possible values are `http`, `https` or `tcp`.
  /// [responseTimeoutSeconds] The number of seconds the Load Balancer instance will wait for a response until marking a health check as failed. If not specified, the default value is `5`.
  /// [unhealthyThreshold] The number of times a health check must fail for a backend Droplet to be marked "unhealthy" and be removed from the pool. If not specified, the default value is `3`.
  const LoadBalancerHealthcheck({
    this.checkIntervalSeconds,
    this.healthyThreshold,
    this.path,
    required this.port,
    required this.protocol,
    this.responseTimeoutSeconds,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSeconds': ?checkIntervalSeconds,
      'healthyThreshold': ?healthyThreshold,
      'path': ?path,
      'port': port,
      'protocol': protocol,
      'responseTimeoutSeconds': ?responseTimeoutSeconds,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory LoadBalancerHealthcheck.fromMap(Map<String, dynamic> map) {
    return LoadBalancerHealthcheck(
      checkIntervalSeconds: (() { final guardedValue = map['checkIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      responseTimeoutSeconds: (() { final guardedValue = map['responseTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
