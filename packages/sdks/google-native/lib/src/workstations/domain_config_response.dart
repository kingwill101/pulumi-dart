// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for a custom domain.
class DomainConfigResponse {
  /// Immutable. Domain used by Workstations for HTTP ingress.
  final pulumi.Input<String> domain;

  /// Creates a new [DomainConfigResponse].
  /// [domain] Immutable. Domain used by Workstations for HTTP ingress.
  DomainConfigResponse({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory DomainConfigResponse.fromMap(Map<String, dynamic> map) {
    return DomainConfigResponse(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
