// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRuleAppengineV1beta {
  /// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  final pulumi.Input<String>? domain;
  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  final pulumi.Input<String>? path;
  /// Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  final pulumi.Input<String>? service;

  /// Creates a new [UrlDispatchRuleAppengineV1beta].
  /// [domain] Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  /// [path] Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  /// [service] Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  UrlDispatchRuleAppengineV1beta({
    this.domain,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'path': ?path,
      'service': ?service,
    };
  }

  factory UrlDispatchRuleAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return UrlDispatchRuleAppengineV1beta(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

