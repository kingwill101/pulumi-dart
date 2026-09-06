// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyNatRuleAction.
class FirewallPolicyNatRuleActionResponse {
  /// The type of action.
  final pulumi.Input<String?>? type;

  /// Creates a new [FirewallPolicyNatRuleActionResponse].
  /// [type] The type of action.
  const FirewallPolicyNatRuleActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleActionResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
