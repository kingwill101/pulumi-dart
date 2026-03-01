// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_rule_network_security_rule_args_doc}
/// The set of arguments for NetworkSecurityRule.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_rule_network_security_rule_args_doc}
class NetworkSecurityRuleArgs {
  /// Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> access;
  /// A description for this rule. Restricted to 140 characters.
  final pulumi.Input<String>? description;
  /// CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags).
  final pulumi.Input<String>? destinationAddressPrefix;
  /// List of destination address prefixes. Tags may not be used.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;
  /// A List of destination Application Security Group IDs
  ///
  /// > **Note:** One of `destination_address_prefix`, `destination_address_prefixes` or `destination_application_security_group_ids` must be specified.
  final pulumi.Input<String>? destinationApplicationSecurityGroupIds;
  /// Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  final pulumi.Input<String>? destinationPortRange;
  /// List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  final pulumi.Input<String> direction;
  /// The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkSecurityGroupName;
  /// Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  final pulumi.Input<String> protocol;
  /// The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used.
  final pulumi.Input<String>? sourceAddressPrefix;
  /// List of source address prefixes. Tags may not be used.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;
  /// A List of source Application Security Group IDs
  ///
  /// > **Note:** One of `source_address_prefix`, `source_address_prefixes` or `source_application_security_group_ids` must be specified.
  final pulumi.Input<String>? sourceApplicationSecurityGroupIds;
  /// Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  final pulumi.Input<String>? sourcePortRange;
  /// List of source ports or port ranges. This is required if `source_port_range` is not specified.
  final pulumi.Input<List<String>>? sourcePortRanges;

  /// Creates a new [NetworkSecurityRuleArgs].
  /// [access] Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  /// [description] A description for this rule. Restricted to 140 characters.
  /// [destinationAddressPrefix] CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags).
  /// [destinationAddressPrefixes] List of destination address prefixes. Tags may not be used.
  /// [destinationApplicationSecurityGroupIds] A List of destination Application Security Group IDs
  /// [destinationPortRange] Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  /// [destinationPortRanges] List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  /// [direction] The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  /// [name] The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created.
  /// [networkSecurityGroupName] The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  /// [resourceGroupName] The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created.
  /// [sourceAddressPrefix] CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used.
  /// [sourceAddressPrefixes] List of source address prefixes. Tags may not be used.
  /// [sourceApplicationSecurityGroupIds] A List of source Application Security Group IDs
  /// [sourcePortRange] Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  /// [sourcePortRanges] List of source ports or port ranges. This is required if `source_port_range` is not specified.
  NetworkSecurityRuleArgs({
    required pulumi.Output<String> access,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationAddressPrefix,
    pulumi.Output<List<String>>? destinationAddressPrefixes,
    pulumi.Output<String>? destinationApplicationSecurityGroupIds,
    pulumi.Output<String>? destinationPortRange,
    pulumi.Output<List<String>>? destinationPortRanges,
    required pulumi.Output<String> direction,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkSecurityGroupName,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> protocol,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceAddressPrefix,
    pulumi.Output<List<String>>? sourceAddressPrefixes,
    pulumi.Output<String>? sourceApplicationSecurityGroupIds,
    pulumi.Output<String>? sourcePortRange,
    pulumi.Output<List<String>>? sourcePortRanges,
  }) :
      access = pulumi.Input.asInput<String>(access),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationAddressPrefix = pulumi.Input.asOptionalInput<String>(destinationAddressPrefix),
      destinationAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(destinationAddressPrefixes),
      destinationApplicationSecurityGroupIds = pulumi.Input.asOptionalInput<String>(destinationApplicationSecurityGroupIds),
      destinationPortRange = pulumi.Input.asOptionalInput<String>(destinationPortRange),
      destinationPortRanges = pulumi.Input.asOptionalInput<List<String>>(destinationPortRanges),
      direction = pulumi.Input.asInput<String>(direction),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityGroupName = pulumi.Input.asInput<String>(networkSecurityGroupName),
      priority = pulumi.Input.asInput<int>(priority),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceAddressPrefix = pulumi.Input.asOptionalInput<String>(sourceAddressPrefix),
      sourceAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(sourceAddressPrefixes),
      sourceApplicationSecurityGroupIds = pulumi.Input.asOptionalInput<String>(sourceApplicationSecurityGroupIds),
      sourcePortRange = pulumi.Input.asOptionalInput<String>(sourcePortRange),
      sourcePortRanges = pulumi.Input.asOptionalInput<List<String>>(sourcePortRanges);

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
      'name': ?name,
      'networkSecurityGroupName': networkSecurityGroupName,
      'priority': priority,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroupIds': ?sourceApplicationSecurityGroupIds,
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory NetworkSecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityRuleArgs(
      access: pulumi.Output.create<String>(map['access'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['destinationAddressPrefix'] as String),
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['destinationAddressPrefixes'] as List).cast<String>()),
      destinationApplicationSecurityGroupIds: map['destinationApplicationSecurityGroupIds'] == null ? null : pulumi.Output.create<String>(map['destinationApplicationSecurityGroupIds'] as String),
      destinationPortRange: map['destinationPortRange'] == null ? null : pulumi.Output.create<String>(map['destinationPortRange'] as String),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['destinationPortRanges'] as List).cast<String>()),
      direction: pulumi.Output.create<String>(map['direction'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSecurityGroupName: pulumi.Output.create<String>(map['networkSecurityGroupName'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['sourceAddressPrefix'] as String),
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['sourceAddressPrefixes'] as List).cast<String>()),
      sourceApplicationSecurityGroupIds: map['sourceApplicationSecurityGroupIds'] == null ? null : pulumi.Output.create<String>(map['sourceApplicationSecurityGroupIds'] as String),
      sourcePortRange: map['sourcePortRange'] == null ? null : pulumi.Output.create<String>(map['sourcePortRange'] as String),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePortRanges'] as List).cast<String>()),
    );
  }
}

