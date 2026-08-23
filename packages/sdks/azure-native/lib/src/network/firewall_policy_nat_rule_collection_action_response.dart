// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyNatRuleCollectionAction.
class FirewallPolicyNatRuleCollectionActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyNatRuleCollectionActionResponse].
  /// [type] The type of action.
  const FirewallPolicyNatRuleCollectionActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleCollectionActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleCollectionActionResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
