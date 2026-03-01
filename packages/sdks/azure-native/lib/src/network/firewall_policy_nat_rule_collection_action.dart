// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the FirewallPolicyNatRuleCollectionAction.
class FirewallPolicyNatRuleCollectionAction {
  /// The type of action.
  final String? type;

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
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

