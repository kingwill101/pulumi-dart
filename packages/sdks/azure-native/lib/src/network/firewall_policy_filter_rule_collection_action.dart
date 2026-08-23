// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyFilterRuleCollectionAction.
class FirewallPolicyFilterRuleCollectionAction {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyFilterRuleCollectionAction].
  /// [type] The type of action.
  const FirewallPolicyFilterRuleCollectionAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyFilterRuleCollectionAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleCollectionAction(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
