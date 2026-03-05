// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRuleResponseAppengineV1beta {
  /// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  final pulumi.Input<String> domain;
  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  final pulumi.Input<String> path;
  /// Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  final pulumi.Input<String> service;

  /// Creates a new [UrlDispatchRuleResponseAppengineV1beta].
  /// [domain] Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  /// [path] Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  /// [service] Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  UrlDispatchRuleResponseAppengineV1beta({
    required this.domain,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'path': path,
      'service': service,
    };
  }

  factory UrlDispatchRuleResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return UrlDispatchRuleResponseAppengineV1beta(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

