// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerHealthcheck {
  /// the number of seconds between between two consecutive health checks
  final pulumi.Input<int> checkIntervalSeconds;
  /// the number of times a health check must pass for a backend droplet to be marked 'healthy' and be re-added to the pool
  final pulumi.Input<int> healthyThreshold;
  /// the path on the backend Droplets to which the Load Balancer will send a request
  final pulumi.Input<String> path;
  /// the port on the backend droplets on which the health check will attempt a connection
  final pulumi.Input<int> port;
  /// the protocol used for health checks sent to the backend droplets
  final pulumi.Input<String> protocol;
  /// the number of seconds to wait for a response until marking a health check as failed
  final pulumi.Input<int> responseTimeoutSeconds;
  /// The number of times a health check must fail for a backend droplet to be marked 'unhealthy' and be removed from the pool
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetLoadBalancerHealthcheck].
  /// [checkIntervalSeconds] the number of seconds between between two consecutive health checks
  /// [healthyThreshold] the number of times a health check must pass for a backend droplet to be marked 'healthy' and be re-added to the pool
  /// [path] the path on the backend Droplets to which the Load Balancer will send a request
  /// [port] the port on the backend droplets on which the health check will attempt a connection
  /// [protocol] the protocol used for health checks sent to the backend droplets
  /// [responseTimeoutSeconds] the number of seconds to wait for a response until marking a health check as failed
  /// [unhealthyThreshold] The number of times a health check must fail for a backend droplet to be marked 'unhealthy' and be removed from the pool
  GetLoadBalancerHealthcheck({
    required this.checkIntervalSeconds,
    required this.healthyThreshold,
    required this.path,
    required this.port,
    required this.protocol,
    required this.responseTimeoutSeconds,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSeconds': checkIntervalSeconds,
      'healthyThreshold': healthyThreshold,
      'path': path,
      'port': port,
      'protocol': protocol,
      'responseTimeoutSeconds': responseTimeoutSeconds,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetLoadBalancerHealthcheck.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerHealthcheck(
      checkIntervalSeconds: (map['checkIntervalSeconds'] as int).input(),
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      path: (map['path'] as String).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      responseTimeoutSeconds: (map['responseTimeoutSeconds'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

