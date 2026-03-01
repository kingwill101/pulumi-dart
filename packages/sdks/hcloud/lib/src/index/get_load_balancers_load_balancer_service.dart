// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_service_health_check.dart';
import 'get_load_balancers_load_balancer_service_http.dart';

class GetLoadBalancersLoadBalancerService {
  final int destinationPort;
  final List<GetLoadBalancersLoadBalancerServiceHealthCheck> healthChecks;
  final List<GetLoadBalancersLoadBalancerServiceHttp> https;
  final int listenPort;
  final String protocol;
  final bool proxyprotocol;

  /// Creates a new [GetLoadBalancersLoadBalancerService].
  /// [destinationPort] Required.
  /// [healthChecks] Required.
  /// [https] Required.
  /// [listenPort] Required.
  /// [protocol] Required.
  /// [proxyprotocol] Required.
  GetLoadBalancersLoadBalancerService({
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
      'healthChecks': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHealthCheck, Map<String, dynamic>>(healthChecks, (value) => value.toMap()),
      'https': pulumi.Input.encodeList<GetLoadBalancersLoadBalancerServiceHttp, Map<String, dynamic>>(https, (value) => value.toMap()),
      'listenPort': listenPort,
      'protocol': protocol,
      'proxyprotocol': proxyprotocol,
    };
  }

  factory GetLoadBalancersLoadBalancerService.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerService(
      destinationPort: map['destinationPort'] as int,
      healthChecks: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHealthCheck>(map['healthChecks'], (value) => GetLoadBalancersLoadBalancerServiceHealthCheck.fromMap((value as Map).cast<String, dynamic>())),
      https: pulumi.Input.decodeList<GetLoadBalancersLoadBalancerServiceHttp>(map['https'], (value) => GetLoadBalancersLoadBalancerServiceHttp.fromMap((value as Map).cast<String, dynamic>())),
      listenPort: map['listenPort'] as int,
      protocol: map['protocol'] as String,
      proxyprotocol: map['proxyprotocol'] as bool,
    );
  }
}

