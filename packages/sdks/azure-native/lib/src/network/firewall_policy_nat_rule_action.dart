// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the FirewallPolicyNatRuleAction.
class FirewallPolicyNatRuleAction {
  /// The type of action.
  final String? type;

  /// Creates a new [FirewallPolicyNatRuleAction].
  /// [type] The type of action.
  FirewallPolicyNatRuleAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleAction(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

