// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_service_health_check_http.dart';

class LoadBalancerServiceHealthCheck {
  /// HTTP configuration. Required if `protocol` is `http`.
  final pulumi.Input<LoadBalancerServiceHealthCheckHttp>? http;
  /// Interval how often the health check will be performed, in seconds.
  final pulumi.Input<int> interval;
  /// Port the health check tries to connect to, required if protocol is `tcp`. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  final pulumi.Input<int> port;
  /// Protocol the health check uses. `http` or `tcp`
  final pulumi.Input<String> protocol;
  /// Number of tries a health check will be performed until a target will be listed as `unhealthy`.
  final pulumi.Input<int> retries;
  /// Timeout when a health check try will be canceled if there is no response, in seconds.
  final pulumi.Input<int> timeout;

  /// Creates a new [LoadBalancerServiceHealthCheck].
  /// [http] HTTP configuration. Required if `protocol` is `http`.
  /// [interval] Interval how often the health check will be performed, in seconds.
  /// [port] Port the health check tries to connect to, required if protocol is `tcp`. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  /// [protocol] Protocol the health check uses. `http` or `tcp`
  /// [retries] Number of tries a health check will be performed until a target will be listed as `unhealthy`.
  /// [timeout] Timeout when a health check try will be canceled if there is no response, in seconds.
  LoadBalancerServiceHealthCheck({
    this.http,
    required this.interval,
    required this.port,
    required this.protocol,
    required this.retries,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http': ?pulumi.Input.mapOptionalInputValue<LoadBalancerServiceHealthCheckHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'interval': interval,
      'port': port,
      'protocol': protocol,
      'retries': retries,
      'timeout': timeout,
    };
  }

  factory LoadBalancerServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return LoadBalancerServiceHealthCheck(
      http: map['http'] == null ? null : (LoadBalancerServiceHealthCheckHttp.fromMap((map['http'] as Map).cast<String, dynamic>())).input(),
      interval: (map['interval'] as int).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      retries: (map['retries'] as int).input(),
      timeout: (map['timeout'] as int).input(),
    );
  }
}

