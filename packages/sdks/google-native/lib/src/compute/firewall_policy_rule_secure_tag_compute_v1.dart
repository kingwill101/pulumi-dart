// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleSecureTagComputeV1 {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyRuleSecureTagComputeV1].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  const FirewallPolicyRuleSecureTagComputeV1({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory FirewallPolicyRuleSecureTagComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagComputeV1(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

