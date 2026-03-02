// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerServiceHealthCheckHttp {
  /// Domain we try to access when performing the Health Check.
  final pulumi.Input<String>? domain;
  /// Path we try to access when performing the Health Check.
  final pulumi.Input<String>? path;
  /// Response we expect to be included in the Target response when a Health Check was performed.
  final pulumi.Input<String>? response;
  /// We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  final pulumi.Input<List<String>>? statusCodes;
  /// Enable TLS certificate checking.
  final pulumi.Input<bool>? tls;

  /// Creates a new [LoadBalancerServiceHealthCheckHttp].
  /// [domain] Domain we try to access when performing the Health Check.
  /// [path] Path we try to access when performing the Health Check.
  /// [response] Response we expect to be included in the Target response when a Health Check was performed.
  /// [statusCodes] We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  /// [tls] Enable TLS certificate checking.
  LoadBalancerServiceHealthCheckHttp({
    this.domain,
    this.path,
    this.response,
    this.statusCodes,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'path': ?path,
      'response': ?response,
      'statusCodes': ?statusCodes,
      'tls': ?tls,
    };
  }

  factory LoadBalancerServiceHealthCheckHttp.fromMap(Map<String, dynamic> map) {
    return LoadBalancerServiceHealthCheckHttp(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      response: map['response'] == null ? null : (map['response']! as String).input(),
      statusCodes: map['statusCodes'] == null ? null : ((map['statusCodes']! as List).cast<String>()).input(),
      tls: map['tls'] == null ? null : (map['tls']! as bool).input(),
    );
  }
}

