// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleToOperationSni {
  /// (Optional)
  final pulumi.Input<String>? exact;

  /// Creates a new [AuthzPolicyNetworkRuleToOperationSni].
  /// [exact] (Optional)
  const AuthzPolicyNetworkRuleToOperationSni({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory AuthzPolicyNetworkRuleToOperationSni.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleToOperationSni(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
