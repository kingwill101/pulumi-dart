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
      domain: pulumi.Input.fromValue(map['domain'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      response: pulumi.Input.fromValue(map['response'] as String),
      statusCodes: pulumi.Input.fromValue((map['statusCodes'] as List).cast<int>()),
      tls: pulumi.Input.fromValue(map['tls'] as bool),
    );
  }
}

