// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerHealthcheck {
  /// the number of seconds between between two consecutive health checks
  final int checkIntervalSeconds;
  /// the number of times a health check must pass for a backend droplet to be marked 'healthy' and be re-added to the pool
  final int healthyThreshold;
  /// the path on the backend Droplets to which the Load Balancer will send a request
  final String path;
  /// the port on the backend droplets on which the health check will attempt a connection
  final int port;
  /// the protocol used for health checks sent to the backend droplets
  final String protocol;
  /// the number of seconds to wait for a response until marking a health check as failed
  final int responseTimeoutSeconds;
  /// The number of times a health check must fail for a backend droplet to be marked 'unhealthy' and be removed from the pool
  final int unhealthyThreshold;

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
      checkIntervalSeconds: map['checkIntervalSeconds'] as int,
      healthyThreshold: map['healthyThreshold'] as int,
      path: map['path'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      responseTimeoutSeconds: map['responseTimeoutSeconds'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

