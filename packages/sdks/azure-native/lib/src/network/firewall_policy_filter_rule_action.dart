// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyFilterRuleAction.
class FirewallPolicyFilterRuleAction {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyFilterRuleAction].
  /// [type] The type of action.
  FirewallPolicyFilterRuleAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyFilterRuleAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleAction(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

