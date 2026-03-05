// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyNatRuleCollectionAction.
class FirewallPolicyNatRuleCollectionAction {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyNatRuleCollectionAction].
  /// [type] The type of action.
  FirewallPolicyNatRuleCollectionAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleCollectionAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleCollectionAction(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

