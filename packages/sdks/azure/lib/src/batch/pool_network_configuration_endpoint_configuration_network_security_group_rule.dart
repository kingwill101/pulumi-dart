// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule {
  /// The action that should be taken for a specified IP address, subnet range or tag. Acceptable values are `Allow` and `Deny`. Changing this forces a new resource to be created.
  final pulumi.Input<String> access;
  /// The priority for this rule. The value must be at least `150`. Changing this forces a new resource to be created.
  final pulumi.Input<int> priority;
  /// The source address prefix or tag to match for the rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceAddressPrefix;
  /// The source port ranges to match for the rule. Valid values are `*` (for all ports 0 - 65535) or arrays of ports or port ranges (i.e. `100-200`). The ports should in the range of 0 to 65535 and the port ranges or ports can't overlap. If any other values are provided the request fails with HTTP status code 400. Default value will be `*`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? sourcePortRanges;

  /// Creates a new [PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule].
  /// [access] The action that should be taken for a specified IP address, subnet range or tag. Acceptable values are `Allow` and `Deny`. Changing this forces a new resource to be created.
  /// [priority] The priority for this rule. The value must be at least `150`. Changing this forces a new resource to be created.
  /// [sourceAddressPrefix] The source address prefix or tag to match for the rule. Changing this forces a new resource to be created.
  /// [sourcePortRanges] The source port ranges to match for the rule. Valid values are `*` (for all ports 0 - 65535) or arrays of ports or port ranges (i.e. `100-200`). The ports should in the range of 0 to 65535 and the port ranges or ports can't overlap. If any other values are provided the request fails with HTTP status code 400. Default value will be `*`. Changing this forces a new resource to be created.
  const PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule({
    required this.access,
    required this.priority,
    required this.sourceAddressPrefix,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'priority': priority,
      'sourceAddressPrefix': sourceAddressPrefix,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule.fromMap(Map<String, dynamic> map) {
    return PoolNetworkConfigurationEndpointConfigurationNetworkSecurityGroupRule(
      access: pulumi.Input.fromValue(map['access'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      sourceAddressPrefix: pulumi.Input.fromValue(map['sourceAddressPrefix'] as String),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

