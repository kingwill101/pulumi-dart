// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the FirewallPolicyFilterRuleCollectionAction.
class FirewallPolicyFilterRuleCollectionActionResponse {
  /// The type of action.
  final pulumi.Input<String>? type;

  /// Creates a new [FirewallPolicyFilterRuleCollectionActionResponse].
  /// [type] The type of action.
  FirewallPolicyFilterRuleCollectionActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyFilterRuleCollectionActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleCollectionActionResponse(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

