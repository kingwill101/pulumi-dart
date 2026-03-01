// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the FirewallPolicyFilterRuleAction.
class FirewallPolicyFilterRuleAction {
  /// The type of action.
  final String? type;

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
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

