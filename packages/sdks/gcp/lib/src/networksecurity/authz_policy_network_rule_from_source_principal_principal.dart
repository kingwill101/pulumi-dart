// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal {
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  final pulumi.Input<String?>? exact;
  /// If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  final pulumi.Input<bool?>? ignoreCase;

  /// Creates a new [AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal].
  /// [exact] The input string must match exactly the string specified here.
  /// [ignoreCase] If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  const AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal({
    this.exact,
    this.ignoreCase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'ignoreCase': ?ignoreCase,
    };
  }

  factory AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromSourcePrincipalPrincipal(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
