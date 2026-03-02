// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for a custom domain.
class DomainConfig {
  /// Immutable. Domain used by Workstations for HTTP ingress.
  final pulumi.Input<String>? domain;

  /// Creates a new [DomainConfig].
  /// [domain] Immutable. Domain used by Workstations for HTTP ingress.
  DomainConfig({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
    };
  }

  factory DomainConfig.fromMap(Map<String, dynamic> map) {
    return DomainConfig(
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
    );
  }
}

