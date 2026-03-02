// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyNatRuleAction.
class FirewallPolicyNatRuleActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyNatRuleActionResponse].
  /// [type] The type of action.
  FirewallPolicyNatRuleActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleActionResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

