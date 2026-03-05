// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_service_health_check_http.dart';

class GetLoadBalancersLoadBalancerServiceHealthCheck {
  final pulumi.Input<List<GetLoadBalancersLoadBalancerServiceHealthCheckHttp>> https;
  final pulumi.Input<int> interval;
  final pulumi.Input<int> port;
  final pulumi.Input<String> protocol;
  final pulumi.Input<int> retries;
  final pulumi.Input<int> timeout;

  /// Creates a new [GetLoadBalancersLoadBalancerServiceHealthCheck].
  /// [https] Required.
  /// [interval] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [retries] Required.
  /// [timeout] Required.
  GetLoadBalancersLoadBalancerServiceHealthCheck({
    required this.https,
    required this.interval,
    required this.port,
    required this.protocol,
    required this.retries,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'https': pulumi.Input.mapInputValue<List<GetLoadBalancersLoadBalancerServiceHealthCheckHttp>, List<Map<String, dynamic>>>(https, (value) => pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHealthCheckHttp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interval': interval,
      'port': port,
      'protocol': protocol,
      'retries': retries,
      'timeout': timeout,
    };
  }

  factory GetLoadBalancersLoadBalancerServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerServiceHealthCheck(
      https: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHealthCheckHttp>(map['https']!, (value) => GetLoadBalancersLoadBalancerServiceHealthCheckHttp.fromMap((value as Map).cast<String, dynamic>()))),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      retries: pulumi.Input.fromValue(map['retries'] as int),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}

