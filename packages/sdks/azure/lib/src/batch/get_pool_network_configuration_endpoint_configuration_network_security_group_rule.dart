// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule {
  /// The action that should be taken for a specified IP address, subnet range or tag.
  final pulumi.Input<String> access;
  /// The priority for this rule.
  final pulumi.Input<int> priority;
  /// The source address prefix or tag to match for the rule.
  final pulumi.Input<String> sourceAddressPrefix;
  /// The source port ranges to match for the rule.
  final pulumi.Input<List<String>> sourcePortRanges;

  /// Creates a new [GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule].
  /// [access] The action that should be taken for a specified IP address, subnet range or tag.
  /// [priority] The priority for this rule.
  /// [sourceAddressPrefix] The source address prefix or tag to match for the rule.
  /// [sourcePortRanges] The source port ranges to match for the rule.
  GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule({
    required this.access,
    required this.priority,
    required this.sourceAddressPrefix,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'priority': priority,
      'sourceAddressPrefix': sourceAddressPrefix,
      'sourcePortRanges': sourcePortRanges,
    };
  }

  factory GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return GetPoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule(
      access: pulumi.Input.fromValue(map['access'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      sourceAddressPrefix: pulumi.Input.fromValue(map['sourceAddressPrefix'] as String),
      sourcePortRanges: pulumi.Input.fromValue((map['sourcePortRanges'] as List).cast<String>()),
    );
  }
}

