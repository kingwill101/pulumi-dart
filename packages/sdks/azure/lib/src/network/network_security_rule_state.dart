// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSecurityRule resources.
class NetworkSecurityRuleState {
  /// Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String>? access;

  /// A description for this rule. Restricted to 140 characters.
  final pulumi.Input<String>? description;

  /// CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags).
  final pulumi.Input<String>? destinationAddressPrefix;

  /// List of destination address prefixes. Tags may not be used.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;

  /// A List of destination Application Security Group IDs
  ///
  /// &gt; **Note:** One of `destination_address_prefix`, `destination_address_prefixes` or `destination_application_security_group_ids` must be specified.
  final pulumi.Input<String>? destinationApplicationSecurityGroupIds;

  /// Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  final pulumi.Input<String>? destinationPortRange;

  /// List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  final pulumi.Input<List<String>>? destinationPortRanges;

  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  final pulumi.Input<String>? direction;

  /// The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkSecurityGroupName;

  /// Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int>? priority;

  /// Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  final pulumi.Input<String>? protocol;

  /// The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used.
  final pulumi.Input<String>? sourceAddressPrefix;

  /// List of source address prefixes. Tags may not be used.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;

  /// A List of source Application Security Group IDs
  ///
  /// &gt; **Note:** One of `source_address_prefix`, `source_address_prefixes` or `source_application_security_group_ids` must be specified.
  final pulumi.Input<String>? sourceApplicationSecurityGroupIds;

  /// Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  final pulumi.Input<String>? sourcePortRange;

  /// List of source ports or port ranges. This is required if `source_port_range` is not specified.
  final pulumi.Input<List<String>>? sourcePortRanges;

  /// Creates a new [NetworkSecurityRuleState].
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
  NetworkSecurityRuleState({
    this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroupIds,
    this.destinationPortRange,
    this.destinationPortRanges,
    this.direction,
    this.name,
    this.networkSecurityGroupName,
    this.priority,
    this.protocol,
    this.resourceGroupName,
    this.sourceAddressPrefix,
    this.sourceAddressPrefixes,
    this.sourceApplicationSecurityGroupIds,
    this.sourcePortRange,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'description': ?description,
      'destinationAddressPrefix': ?destinationAddressPrefix,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationApplicationSecurityGroupIds':
          ?destinationApplicationSecurityGroupIds,
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': ?direction,
      'name': ?name,
      'networkSecurityGroupName': ?networkSecurityGroupName,
      'priority': ?priority,
      'protocol': ?protocol,
      'resourceGroupName': ?resourceGroupName,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroupIds': ?sourceApplicationSecurityGroupIds,
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory NetworkSecurityRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityRuleState(
      access: (() {
        final guardedValue = map['access'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationAddressPrefix: (() {
        final guardedValue = map['destinationAddressPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationAddressPrefixes: (() {
        final guardedValue = map['destinationAddressPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationApplicationSecurityGroupIds: (() {
        final guardedValue = map['destinationApplicationSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationPortRange: (() {
        final guardedValue = map['destinationPortRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationPortRanges: (() {
        final guardedValue = map['destinationPortRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSecurityGroupName: (() {
        final guardedValue = map['networkSecurityGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAddressPrefix: (() {
        final guardedValue = map['sourceAddressPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAddressPrefixes: (() {
        final guardedValue = map['sourceAddressPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceApplicationSecurityGroupIds: (() {
        final guardedValue = map['sourceApplicationSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourcePortRange: (() {
        final guardedValue = map['sourcePortRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourcePortRanges: (() {
        final guardedValue = map['sourcePortRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
