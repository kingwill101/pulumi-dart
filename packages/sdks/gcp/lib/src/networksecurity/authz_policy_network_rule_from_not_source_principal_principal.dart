// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal {
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  final pulumi.Input<String?>? exact;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal].
  /// [exact] The input string must match exactly the string specified here.
  const AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSourcePrincipalPrincipal(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
