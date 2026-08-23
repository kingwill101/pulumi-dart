// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule_destination.dart';
import 'authorization_policy_rule_source.dart';

class AuthorizationPolicyRule {
  /// List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers.
  /// If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorizationPolicyRuleDestination>>? destinations;
  /// List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match.
  /// If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorizationPolicyRuleSource>>? sources;

  /// Creates a new [AuthorizationPolicyRule].
  /// [destinations] List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers.
  /// [sources] List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match.
  const AuthorizationPolicyRule({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationPolicyRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AuthorizationPolicyRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationPolicyRuleSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AuthorizationPolicyRuleSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationPolicyRule.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyRule(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationPolicyRuleDestination>(guardedValue, (value) => AuthorizationPolicyRuleDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationPolicyRuleSource>(guardedValue, (value) => AuthorizationPolicyRuleSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
