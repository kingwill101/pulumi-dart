// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationNetworkRuleSetIpRule {
  /// The IP address range in CIDR notation for the IP Rule.
  final pulumi.Input<String> ipMask;
  /// The name of the IP Rule
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationNetworkRuleSetIpRule].
  /// [ipMask] The IP address range in CIDR notation for the IP Rule.
  /// [name] The name of the IP Rule
  const ApplicationNetworkRuleSetIpRule({
    required this.ipMask,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipMask': ipMask,
      'name': name,
    };
  }

  factory ApplicationNetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return ApplicationNetworkRuleSetIpRule(
      ipMask: pulumi.Input.fromValue(map['ipMask'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

