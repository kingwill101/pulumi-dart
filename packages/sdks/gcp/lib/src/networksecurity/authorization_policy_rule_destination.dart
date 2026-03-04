// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule_destination_http_header_match.dart';

class AuthorizationPolicyRuleDestination {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final pulumi.Input<List<String>> hosts;

  /// Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match.
  /// Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  /// Structure is documented below.
  final pulumi.Input<AuthorizationPolicyRuleDestinationHttpHeaderMatch>?
  httpHeaderMatch;

  /// A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final pulumi.Input<List<String>> methods;

  /// List of destination ports to match. At least one port should match.
  final pulumi.Input<List<int>> ports;

  /// Creates a new [AuthorizationPolicyRuleDestination].
  /// [hosts] List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  /// [httpHeaderMatch] Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match.
  /// [methods] A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  /// [ports] List of destination ports to match. At least one port should match.
  AuthorizationPolicyRuleDestination({
    required this.hosts,
    this.httpHeaderMatch,
    required this.methods,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'httpHeaderMatch':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizationPolicyRuleDestinationHttpHeaderMatch,
            Map<String, dynamic>
          >(httpHeaderMatch, (value) => value.toMap()),
      'methods': methods,
      'ports': ports,
    };
  }

  factory AuthorizationPolicyRuleDestination.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyRuleDestination(
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      httpHeaderMatch: (() {
        final guardedValue = map['httpHeaderMatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizationPolicyRuleDestinationHttpHeaderMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
    );
  }
}
