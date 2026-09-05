// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkSecurityGroupSecurityRule {
  /// Is network traffic is allowed or denied?
  final pulumi.Input<String> access;
  /// The description for this rule.
  final pulumi.Input<String> description;
  /// CIDR or destination IP range or * to match any IP.
  final pulumi.Input<String> destinationAddressPrefix;
  /// A list of CIDRs or destination IP ranges.
  final pulumi.Input<List<String>> destinationAddressPrefixes;
  /// A List of destination Application Security Group IDs
  final pulumi.Input<List<String>?>? destinationApplicationSecurityGroupIds;
  /// The Destination Port or Range.
  final pulumi.Input<String> destinationPortRange;
  final pulumi.Input<List<String>> destinationPortRanges;
  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String> direction;
  /// Specifies the Name of the Network Security Group.
  final pulumi.Input<String> name;
  /// The priority of the rule
  final pulumi.Input<int> priority;
  /// The network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// CIDR or source IP range or * to match any IP.
  final pulumi.Input<String> sourceAddressPrefix;
  /// A list of CIDRs or source IP ranges.
  final pulumi.Input<List<String>> sourceAddressPrefixes;
  /// A List of source Application Security Group IDs
  final pulumi.Input<List<String>?>? sourceApplicationSecurityGroupIds;
  /// The Source Port or Range.
  final pulumi.Input<String> sourcePortRange;
  final pulumi.Input<List<String>> sourcePortRanges;

  /// Creates a new [GetNetworkSecurityGroupSecurityRule].
  /// [access] Is network traffic is allowed or denied?
  /// [description] The description for this rule.
  /// [destinationAddressPrefix] CIDR or destination IP range or * to match any IP.
  /// [destinationAddressPrefixes] A list of CIDRs or destination IP ranges.
  /// [destinationApplicationSecurityGroupIds] A List of destination Application Security Group IDs
  /// [destinationPortRange] The Destination Port or Range.
  /// [destinationPortRanges] Required.
  /// [direction] The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [name] Specifies the Name of the Network Security Group.
  /// [priority] The priority of the rule
  /// [protocol] The network protocol this rule applies to.
  /// [sourceAddressPrefix] CIDR or source IP range or * to match any IP.
  /// [sourceAddressPrefixes] A list of CIDRs or source IP ranges.
  /// [sourceApplicationSecurityGroupIds] A List of source Application Security Group IDs
  /// [sourcePortRange] The Source Port or Range.
  /// [sourcePortRanges] Required.
  const GetNetworkSecurityGroupSecurityRule({
    required this.access,
    required this.description,
    required this.destinationAddressPrefix,
    required this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroupIds,
    required this.destinationPortRange,
    required this.destinationPortRanges,
    required this.direction,
    required this.name,
    required this.priority,
    required this.protocol,
    required this.sourceAddressPrefix,
    required this.sourceAddressPrefixes,
    this.sourceApplicationSecurityGroupIds,
    required this.sourcePortRange,
    required this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': description,
      'destinationAddressPrefix': destinationAddressPrefix,
      'destinationAddressPrefixes': destinationAddressPrefixes,
      'destinationApplicationSecurityGroupIds': ?destinationApplicationSecurityGroupIds,
      'destinationPortRange': destinationPortRange,
      'destinationPortRanges': destinationPortRanges,
      'direction': direction,
      'name': name,
      'priority': priority,
      'protocol': protocol,
      'sourceAddressPrefix': sourceAddressPrefix,
      'sourceAddressPrefixes': sourceAddressPrefixes,
      'sourceApplicationSecurityGroupIds': ?sourceApplicationSecurityGroupIds,
      'sourcePortRange': sourcePortRange,
      'sourcePortRanges': sourcePortRanges,
    };
  }

  factory GetNetworkSecurityGroupSecurityRule.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupSecurityRule(
      access: pulumi.Input.fromValue(map['access'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationAddressPrefix: pulumi.Input.fromValue(map['destinationAddressPrefix'] as String),
      destinationAddressPrefixes: pulumi.Input.fromValue((map['destinationAddressPrefixes'] as List).cast<String>()),
      destinationApplicationSecurityGroupIds: (() { final guardedValue = map['destinationApplicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPortRange: pulumi.Input.fromValue(map['destinationPortRange'] as String),
      destinationPortRanges: pulumi.Input.fromValue((map['destinationPortRanges'] as List).cast<String>()),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddressPrefix: pulumi.Input.fromValue(map['sourceAddressPrefix'] as String),
      sourceAddressPrefixes: pulumi.Input.fromValue((map['sourceAddressPrefixes'] as List).cast<String>()),
      sourceApplicationSecurityGroupIds: (() { final guardedValue = map['sourceApplicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourcePortRange: pulumi.Input.fromValue(map['sourcePortRange'] as String),
      sourcePortRanges: pulumi.Input.fromValue((map['sourcePortRanges'] as List).cast<String>()),
    );
  }
}
