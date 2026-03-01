// ignore_for_file: unused_element, unnecessary_cast


class NetworkSecurityGroupSecurityRule {
  /// Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  final String access;
  /// A description for this rule. Restricted to 140 characters.
  final String? description;
  /// CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `destination_address_prefixes` is not specified.
  final String? destinationAddressPrefix;
  /// List of destination address prefixes. Tags may not be used. This is required if `destination_address_prefix` is not specified.
  final List<String>? destinationAddressPrefixes;
  /// A List of destination Application Security Group IDs
  final List<String>? destinationApplicationSecurityGroupIds;
  /// Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  final String? destinationPortRange;
  /// List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  final List<String>? destinationPortRanges;
  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  final String direction;
  /// The name of the security rule.
  final String name;
  /// Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int priority;
  /// Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  final String protocol;
  /// CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `source_address_prefixes` is not specified.
  final String? sourceAddressPrefix;
  /// List of source address prefixes. Tags may not be used. This is required if `source_address_prefix` is not specified.
  final List<String>? sourceAddressPrefixes;
  /// A List of source Application Security Group IDs
  final List<String>? sourceApplicationSecurityGroupIds;
  /// Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  final String? sourcePortRange;
  /// List of source ports or port ranges. This is required if `source_port_range` is not specified.
  final List<String>? sourcePortRanges;

  /// Creates a new [NetworkSecurityGroupSecurityRule].
  /// [access] Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  /// [description] A description for this rule. Restricted to 140 characters.
  /// [destinationAddressPrefix] CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `destination_address_prefixes` is not specified.
  /// [destinationAddressPrefixes] List of destination address prefixes. Tags may not be used. This is required if `destination_address_prefix` is not specified.
  /// [destinationApplicationSecurityGroupIds] A List of destination Application Security Group IDs
  /// [destinationPortRange] Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  /// [destinationPortRanges] List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  /// [direction] The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  /// [name] The name of the security rule.
  /// [priority] Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  /// [sourceAddressPrefix] CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. This is required if `source_address_prefixes` is not specified.
  /// [sourceAddressPrefixes] List of source address prefixes. Tags may not be used. This is required if `source_address_prefix` is not specified.
  /// [sourceApplicationSecurityGroupIds] A List of source Application Security Group IDs
  /// [sourcePortRange] Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  /// [sourcePortRanges] List of source ports or port ranges. This is required if `source_port_range` is not specified.
  NetworkSecurityGroupSecurityRule({
    required this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroupIds,
    this.destinationPortRange,
    this.destinationPortRanges,
    required this.direction,
    required this.name,
    required this.priority,
    required this.protocol,
    this.sourceAddressPrefix,
    this.sourceAddressPrefixes,
    this.sourceApplicationSecurityGroupIds,
    this.sourcePortRange,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': ?description,
      'destinationAddressPrefix': ?destinationAddressPrefix,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationApplicationSecurityGroupIds': ?destinationApplicationSecurityGroupIds,
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'name': name,
      'priority': priority,
      'protocol': protocol,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroupIds': ?sourceApplicationSecurityGroupIds,
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory NetworkSecurityGroupSecurityRule.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupSecurityRule(
      access: map['access'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : map['destinationAddressPrefix'] as String,
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : (map['destinationAddressPrefixes'] as List).cast<String>(),
      destinationApplicationSecurityGroupIds: map['destinationApplicationSecurityGroupIds'] == null ? null : (map['destinationApplicationSecurityGroupIds'] as List).cast<String>(),
      destinationPortRange: map['destinationPortRange'] == null ? null : map['destinationPortRange'] as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : map['sourceAddressPrefix'] as String,
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : (map['sourceAddressPrefixes'] as List).cast<String>(),
      sourceApplicationSecurityGroupIds: map['sourceApplicationSecurityGroupIds'] == null ? null : (map['sourceApplicationSecurityGroupIds'] as List).cast<String>(),
      sourcePortRange: map['sourcePortRange'] == null ? null : map['sourcePortRange'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
    );
  }
}

