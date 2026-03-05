// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleSecureTagComputeBeta {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyRuleSecureTagComputeBeta].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  FirewallPolicyRuleSecureTagComputeBeta({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory FirewallPolicyRuleSecureTagComputeBeta.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTagComputeBeta(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

