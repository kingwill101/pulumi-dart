// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom domain information.
class CustomDomainResponse {
  /// Domain name.
  final pulumi.Input<String> domain;
  /// Domain state.
  final pulumi.Input<String> state;

  /// Creates a new [CustomDomainResponse].
  /// [domain] Domain name.
  /// [state] Domain state.
  CustomDomainResponse({
    required this.domain,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'state': state,
    };
  }

  factory CustomDomainResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainResponse(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

