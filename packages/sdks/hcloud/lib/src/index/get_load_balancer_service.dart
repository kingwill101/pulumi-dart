// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_service_health_check.dart';
import 'get_load_balancer_service_http.dart';

class GetLoadBalancerService {
  /// (int) Port the service connects to the targets on. Can be everything between `1` and `65535`.
  final pulumi.Input<int> destinationPort;
  /// (list) List of http configurations when `protocol` is `http` or `https`.
  final pulumi.Input<List<GetLoadBalancerServiceHealthCheck>> healthChecks;
  /// (list) List of http configurations when `protocol` is `http` or `https`.
  final pulumi.Input<List<GetLoadBalancerServiceHttp>> https;
  /// (int) Port the service listen on. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  final pulumi.Input<int> listenPort;
  /// (string) Protocol the health check uses. `http`, `https` or `tcp`
  final pulumi.Input<String> protocol;
  /// (bool) Enable proxyprotocol.
  final pulumi.Input<bool> proxyprotocol;

  /// Creates a new [GetLoadBalancerService].
  /// [destinationPort] (int) Port the service connects to the targets on. Can be everything between `1` and `65535`.
  /// [healthChecks] (list) List of http configurations when `protocol` is `http` or `https`.
  /// [https] (list) List of http configurations when `protocol` is `http` or `https`.
  /// [listenPort] (int) Port the service listen on. Can be everything between `1` and `65535`. Must be unique per Load Balancer.
  /// [protocol] (string) Protocol the health check uses. `http`, `https` or `tcp`
  /// [proxyprotocol] (bool) Enable proxyprotocol.
  GetLoadBalancerService({
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
      'healthChecks': pulumi.Input.mapInputValue<List<GetLoadBalancerServiceHealthCheck>, List<Map<String, dynamic>>>(healthChecks, (value) => pulumi.Input.encodeList<GetLoadBalancerServiceHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'https': pulumi.Input.mapInputValue<List<GetLoadBalancerServiceHttp>, List<Map<String, dynamic>>>(https, (value) => pulumi.Input.encodeList<GetLoadBalancerServiceHttp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listenPort': listenPort,
      'protocol': protocol,
      'proxyprotocol': proxyprotocol,
    };
  }

  factory GetLoadBalancerService.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerService(
      destinationPort: (map['destinationPort'] as int).input(),
      healthChecks: (pulumi.Input.decodeList<GetLoadBalancerServiceHealthCheck>(map['healthChecks'], (value) => GetLoadBalancerServiceHealthCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
      https: (pulumi.Input.decodeList<GetLoadBalancerServiceHttp>(map['https'], (value) => GetLoadBalancerServiceHttp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      listenPort: (map['listenPort'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      proxyprotocol: (map['proxyprotocol'] as bool).input(),
    );
  }
}

