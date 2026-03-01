// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyRuleSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  /// Creates a new [FirewallPolicyRuleSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  FirewallPolicyRuleSecureTag({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory FirewallPolicyRuleSecureTag.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

