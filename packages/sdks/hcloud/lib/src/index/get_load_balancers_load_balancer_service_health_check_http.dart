// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersLoadBalancerServiceHealthCheckHttp {
  final pulumi.Input<String> domain;
  final pulumi.Input<String> path;
  final pulumi.Input<String> response;
  final pulumi.Input<List<int>> statusCodes;
  final pulumi.Input<bool> tls;

  /// Creates a new [GetLoadBalancersLoadBalancerServiceHealthCheckHttp].
  /// [domain] Required.
  /// [path] Required.
  /// [response] Required.
  /// [statusCodes] Required.
  /// [tls] Required.
  GetLoadBalancersLoadBalancerServiceHealthCheckHttp({
    required this.domain,
    required this.path,
    required this.response,
    required this.statusCodes,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'path': path,
      'response': response,
      'statusCodes': statusCodes,
      'tls': tls,
    };
  }

  factory GetLoadBalancersLoadBalancerServiceHealthCheckHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerServiceHealthCheckHttp(
      domain: (map['domain'] as String).input(),
      path: (map['path'] as String).input(),
      response: (map['response'] as String).input(),
      statusCodes: ((map['statusCodes'] as List).cast<int>()).input(),
      tls: (map['tls'] as bool).input(),
    );
  }
}

