// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_network.dart';

/// {@template pulumi_network_security_rule_args_doc}
/// The set of arguments for SecurityRule.
/// {@endtemplate}
/// {@macro pulumi_network_security_rule_args_doc}
class SecurityRuleArgs {
  /// The network traffic is allowed or denied.
  final pulumi.Input<String> access;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  final pulumi.Input<String>? destinationAddressPrefix;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;
  /// The application security group specified as destination.
  final pulumi.Input<List<ApplicationSecurityGroupNetwork>>? destinationApplicationSecurityGroups;
  /// The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? destinationPortRange;
  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String> direction;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the network security group.
  final pulumi.Input<String> networkSecurityGroupName;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the security rule.
  final pulumi.Input<String>? securityRuleName;
  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  final pulumi.Input<String>? sourceAddressPrefix;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;
  /// The application security group specified as source.
  final pulumi.Input<List<ApplicationSecurityGroupNetwork>>? sourceApplicationSecurityGroups;
  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? sourcePortRange;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityRuleArgs].
  /// [access] The network traffic is allowed or denied.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationAddressPrefix] The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  /// [destinationAddressPrefixes] The destination address prefixes. CIDR or destination IP ranges.
  /// [destinationApplicationSecurityGroups] The application security group specified as destination.
  /// [destinationPortRange] The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [destinationPortRanges] The destination port ranges.
  /// [direction] The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkSecurityGroupName] The name of the network security group.
  /// [priority] The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group.
  /// [securityRuleName] The name of the security rule.
  /// [sourceAddressPrefix] The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourceApplicationSecurityGroups] The application security group specified as source.
  /// [sourcePortRange] The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [sourcePortRanges] The source port ranges.
  /// [type] The type of the resource.
  SecurityRuleArgs({
    required this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroups,
    this.destinationPortRange,
    this.destinationPortRanges,
    required this.direction,
    this.id,
    this.name,
    required this.networkSecurityGroupName,
    required this.priority,
    required this.protocol,
    required this.resourceGroupName,
    this.securityRuleName,
    this.sourceAddressPrefix,
    this.sourceAddressPrefixes,
    this.sourceApplicationSecurityGroups,
    this.sourcePortRange,
    this.sourcePortRanges,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'description': ?description,
      'destinationAddressPrefix': ?destinationAddressPrefix,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationApplicationSecurityGroups': ?destinationApplicationSecurityGroups,
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'id': ?id,
      'name': ?name,
      'networkSecurityGroupName': networkSecurityGroupName,
      'priority': priority,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'securityRuleName': ?securityRuleName,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroups': ?sourceApplicationSecurityGroups,
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
      'type': ?type,
    };
  }

  factory SecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityRuleArgs(
      access: (map['access'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : (map['destinationAddressPrefix'] as String).input(),
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : ((map['destinationAddressPrefixes'] as List).cast<String>()).input(),
      destinationApplicationSecurityGroups: map['destinationApplicationSecurityGroups'] == null ? null : ((map['destinationApplicationSecurityGroups'] as List).cast<ApplicationSecurityGroupNetwork>()).input(),
      destinationPortRange: map['destinationPortRange'] == null ? null : (map['destinationPortRange'] as String).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : ((map['destinationPortRanges'] as List).cast<String>()).input(),
      direction: (map['direction'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkSecurityGroupName: (map['networkSecurityGroupName'] as String).input(),
      priority: (map['priority'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityRuleName: map['securityRuleName'] == null ? null : (map['securityRuleName'] as String).input(),
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : (map['sourceAddressPrefix'] as String).input(),
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : ((map['sourceAddressPrefixes'] as List).cast<String>()).input(),
      sourceApplicationSecurityGroups: map['sourceApplicationSecurityGroups'] == null ? null : ((map['sourceApplicationSecurityGroups'] as List).cast<ApplicationSecurityGroupNetwork>()).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : (map['sourcePortRange'] as String).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : ((map['sourcePortRanges'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

