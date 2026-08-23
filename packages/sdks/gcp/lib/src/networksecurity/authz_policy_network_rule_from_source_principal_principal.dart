// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal {
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  final pulumi.Input<String>? exact;

  /// Creates a new [AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal].
  /// [exact] The input string must match exactly the string specified here.
  const AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
