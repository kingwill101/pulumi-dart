// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from.dart';
import 'authz_policy_network_rule_to.dart';

class AuthzPolicyNetworkRule {
  /// Describes properties of one or more sources of a request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFrom?>? from;
  /// Describes properties of one or more targets of a request
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleTo?>? to;

  /// Creates a new [AuthzPolicyNetworkRule].
  /// [from] Describes properties of one or more sources of a request.
  /// [to] Describes properties of one or more targets of a request
  const AuthzPolicyNetworkRule({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFrom, Map<String, dynamic>>(from, (value) => value.toMap()),
      'to': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleTo, Map<String, dynamic>>(to, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyNetworkRule.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRule(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
