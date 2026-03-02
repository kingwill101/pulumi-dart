// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyFilterRuleAction.
class FirewallPolicyFilterRuleActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyFilterRuleActionResponse].
  /// [type] The type of action.
  FirewallPolicyFilterRuleActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyFilterRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleActionResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

