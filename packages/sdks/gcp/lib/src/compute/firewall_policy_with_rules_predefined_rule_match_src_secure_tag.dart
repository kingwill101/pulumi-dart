// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// @pattern tagValues/[0-9]+
  final pulumi.Input<String>? name;
  /// (Output)
  /// [Output Only] State of the secure tag, either `EFFECTIVE` or
  /// `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted
  /// or its network is deleted.
  ///
  /// <a name="nested_rule_match_layer4_config"></a>The `layer4_config` block supports:
  final pulumi.Input<String>? state;

  /// Creates a new [FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

