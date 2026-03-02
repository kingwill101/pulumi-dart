// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerServiceHealthCheckHttp {
  /// string) Domain we try to access when performing the Health Check.
  final pulumi.Input<String> domain;
  /// (string) Path we try to access when performing the Health Check.
  final pulumi.Input<String> path;
  /// (string) Response we expect to be included in the Target response when a Health Check was performed.
  final pulumi.Input<String> response;
  /// (list[int]) We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  final pulumi.Input<List<int>> statusCodes;
  /// (bool) Enable TLS certificate checking.
  final pulumi.Input<bool> tls;

  /// Creates a new [GetLoadBalancerServiceHealthCheckHttp].
  /// [domain] string) Domain we try to access when performing the Health Check.
  /// [path] (string) Path we try to access when performing the Health Check.
  /// [response] (string) Response we expect to be included in the Target response when a Health Check was performed.
  /// [statusCodes] (list[int]) We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  /// [tls] (bool) Enable TLS certificate checking.
  GetLoadBalancerServiceHealthCheckHttp({
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

  factory GetLoadBalancerServiceHealthCheckHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerServiceHealthCheckHttp(
      domain: (map['domain'] as String).input(),
      path: (map['path'] as String).input(),
      response: (map['response'] as String).input(),
      statusCodes: ((map['statusCodes'] as List).cast<int>()).input(),
      tls: (map['tls'] as bool).input(),
    );
  }
}

