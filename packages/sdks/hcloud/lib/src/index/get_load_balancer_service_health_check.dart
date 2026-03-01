// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_service_health_check_http.dart';

class GetLoadBalancerServiceHealthCheck {
  /// (list) List of http configurations when `protocol` is `http` or `https`.
  final List<GetLoadBalancerServiceHealthCheckHttp> https;
  /// (int) Interval how often the health check will be performed, in seconds.
  final int interval;
  /// (int) Port the health check tries to connect to. Can be everything between `1` and `65535`.
  final int port;
  /// (string) Protocol the health check uses. `http`, `https` or `tcp`
  final String protocol;
  /// (int) Number of tries a health check will be performed until a target will be listed as `unhealthy`.
  final int retries;
  /// (int) Timeout when a health check try will be canceled if there is no response, in seconds.
  final int timeout;

  /// Creates a new [GetLoadBalancerServiceHealthCheck].
  /// [https] (list) List of http configurations when `protocol` is `http` or `https`.
  /// [interval] (int) Interval how often the health check will be performed, in seconds.
  /// [port] (int) Port the health check tries to connect to. Can be everything between `1` and `65535`.
  /// [protocol] (string) Protocol the health check uses. `http`, `https` or `tcp`
  /// [retries] (int) Number of tries a health check will be performed until a target will be listed as `unhealthy`.
  /// [timeout] (int) Timeout when a health check try will be canceled if there is no response, in seconds.
  GetLoadBalancerServiceHealthCheck({
    required this.https,
    required this.interval,
    required this.port,
    required this.protocol,
    required this.retries,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'https': pulumi.Input.encodeList<GetLoadBalancerServiceHealthCheckHttp, Map<String, dynamic>>(https, (value) => value.toMap()),
      'interval': interval,
      'port': port,
      'protocol': protocol,
      'retries': retries,
      'timeout': timeout,
    };
  }

  factory GetLoadBalancerServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerServiceHealthCheck(
      https: pulumi.Input.decodeList<GetLoadBalancerServiceHealthCheckHttp>(map['https'], (value) => GetLoadBalancerServiceHealthCheckHttp.fromMap((value as Map).cast<String, dynamic>())),
      interval: map['interval'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      retries: map['retries'] as int,
      timeout: map['timeout'] as int,
    );
  }
}

