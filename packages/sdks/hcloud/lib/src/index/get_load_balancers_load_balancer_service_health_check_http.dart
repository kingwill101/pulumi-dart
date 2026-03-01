// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersLoadBalancerServiceHealthCheckHttp {
  final String domain;
  final String path;
  final String response;
  final List<int> statusCodes;
  final bool tls;

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
      domain: map['domain'] as String,
      path: map['path'] as String,
      response: map['response'] as String,
      statusCodes: (map['statusCodes'] as List).cast<int>(),
      tls: map['tls'] as bool,
    );
  }
}

