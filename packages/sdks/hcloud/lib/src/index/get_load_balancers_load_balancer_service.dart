// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_service_health_check.dart';
import 'get_load_balancers_load_balancer_service_http.dart';

class GetLoadBalancersLoadBalancerService {
  final pulumi.Input<int> destinationPort;
  final pulumi.Input<List<GetLoadBalancersLoadBalancerServiceHealthCheck>> healthChecks;
  final pulumi.Input<List<GetLoadBalancersLoadBalancerServiceHttp>> https;
  final pulumi.Input<int> listenPort;
  final pulumi.Input<String> protocol;
  final pulumi.Input<bool> proxyprotocol;

  /// Creates a new [GetLoadBalancersLoadBalancerService].
  /// [destinationPort] Required.
  /// [healthChecks] Required.
  /// [https] Required.
  /// [listenPort] Required.
  /// [protocol] Required.
  /// [proxyprotocol] Required.
  const GetLoadBalancersLoadBalancerService({
    required this.destinationPort,
    required this.healthChecks,
    required this.https,
    required this.listenPort,
    required this.protocol,
    required this.proxyprotocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPort': destinationPort,
      'healthChecks': pulumi.Input.mapInputValue<List<GetLoadBalancersLoadBalancerServiceHealthCheck>, List<Map<String, dynamic>>>(healthChecks, (value) => pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'https': pulumi.Input.mapInputValue<List<GetLoadBalancersLoadBalancerServiceHttp>, List<Map<String, dynamic>>>(https, (value) => pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHttp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenPort': listenPort,
      'protocol': protocol,
      'proxyprotocol': proxyprotocol,
    };
  }

  factory GetLoadBalancersLoadBalancerService.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerService(
      destinationPort: pulumi.Input.fromValue(map['destinationPort'] as int),
      healthChecks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHealthCheck>(map['healthChecks']!, (value) => GetLoadBalancersLoadBalancerServiceHealthCheck.fromMap((value as Map).cast<String, dynamic>()))),
      https: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHttp>(map['https']!, (value) => GetLoadBalancersLoadBalancerServiceHttp.fromMap((value as Map).cast<String, dynamic>()))),
      listenPort: pulumi.Input.fromValue(map['listenPort'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxyprotocol: pulumi.Input.fromValue(map['proxyprotocol'] as bool),
    );
  }
}
