// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// @pattern tagValues/[0-9]+
  final pulumi.Input<String>? name;

  /// (Output)
  /// [Output Only] State of the secure tag, either `EFFECTIVE` or
  /// `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted
  /// or its network is deleted.
  final pulumi.Input<String>? state;

  /// Creates a new [NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'state': ?state};
  }

  factory NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
