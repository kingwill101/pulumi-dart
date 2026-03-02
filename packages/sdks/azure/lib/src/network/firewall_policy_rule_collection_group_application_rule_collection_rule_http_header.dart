// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader {
  /// Specifies the name of the header.
  final pulumi.Input<String> name;
  /// Specifies the value of the value.
  final pulumi.Input<String> value;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader].
  /// [name] Specifies the name of the header.
  /// [value] Specifies the value of the value.
  FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleHttpHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

