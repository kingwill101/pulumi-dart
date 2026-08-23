// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyNatRuleAction.
class FirewallPolicyNatRuleAction {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyNatRuleAction].
  /// [type] The type of action.
  const FirewallPolicyNatRuleAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleAction(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
