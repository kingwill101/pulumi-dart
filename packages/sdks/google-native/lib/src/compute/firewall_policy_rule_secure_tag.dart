// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyRuleSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  const FirewallPolicyRuleSecureTag({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory FirewallPolicyRuleSecureTag.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTag(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
