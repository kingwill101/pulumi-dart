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
    required pulumi.Output<String> access,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationAddressPrefix,
    pulumi.Output<List<String>>? destinationAddressPrefixes,
    pulumi.Output<List<ApplicationSecurityGroupNetwork>>? destinationApplicationSecurityGroups,
    pulumi.Output<String>? destinationPortRange,
    pulumi.Output<List<String>>? destinationPortRanges,
    required pulumi.Output<String> direction,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkSecurityGroupName,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> protocol,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? securityRuleName,
    pulumi.Output<String>? sourceAddressPrefix,
    pulumi.Output<List<String>>? sourceAddressPrefixes,
    pulumi.Output<List<ApplicationSecurityGroupNetwork>>? sourceApplicationSecurityGroups,
    pulumi.Output<String>? sourcePortRange,
    pulumi.Output<List<String>>? sourcePortRanges,
    pulumi.Output<String>? type,
  }) :
      access = pulumi.Input.asInput<String>(access),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationAddressPrefix = pulumi.Input.asOptionalInput<String>(destinationAddressPrefix),
      destinationAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(destinationAddressPrefixes),
      destinationApplicationSecurityGroups = pulumi.Input.asOptionalInput<List<ApplicationSecurityGroupNetwork>>(destinationApplicationSecurityGroups),
      destinationPortRange = pulumi.Input.asOptionalInput<String>(destinationPortRange),
      destinationPortRanges = pulumi.Input.asOptionalInput<List<String>>(destinationPortRanges),
      direction = pulumi.Input.asInput<String>(direction),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityGroupName = pulumi.Input.asInput<String>(networkSecurityGroupName),
      priority = pulumi.Input.asInput<int>(priority),
      protocol = pulumi.Input.asInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityRuleName = pulumi.Input.asOptionalInput<String>(securityRuleName),
      sourceAddressPrefix = pulumi.Input.asOptionalInput<String>(sourceAddressPrefix),
      sourceAddressPrefixes = pulumi.Input.asOptionalInput<List<String>>(sourceAddressPrefixes),
      sourceApplicationSecurityGroups = pulumi.Input.asOptionalInput<List<ApplicationSecurityGroupNetwork>>(sourceApplicationSecurityGroups),
      sourcePortRange = pulumi.Input.asOptionalInput<String>(sourcePortRange),
      sourcePortRanges = pulumi.Input.asOptionalInput<List<String>>(sourcePortRanges),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      access: pulumi.Output.create<String>(map['access'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['destinationAddressPrefix'] as String),
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['destinationAddressPrefixes'] as List).cast<String>()),
      destinationApplicationSecurityGroups: map['destinationApplicationSecurityGroups'] == null ? null : pulumi.Output.create<List<ApplicationSecurityGroupNetwork>>((map['destinationApplicationSecurityGroups'] as List).cast<ApplicationSecurityGroupNetwork>()),
      destinationPortRange: map['destinationPortRange'] == null ? null : pulumi.Output.create<String>(map['destinationPortRange'] as String),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['destinationPortRanges'] as List).cast<String>()),
      direction: pulumi.Output.create<String>(map['direction'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSecurityGroupName: pulumi.Output.create<String>(map['networkSecurityGroupName'] as String),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityRuleName: map['securityRuleName'] == null ? null : pulumi.Output.create<String>(map['securityRuleName'] as String),
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : pulumi.Output.create<String>(map['sourceAddressPrefix'] as String),
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['sourceAddressPrefixes'] as List).cast<String>()),
      sourceApplicationSecurityGroups: map['sourceApplicationSecurityGroups'] == null ? null : pulumi.Output.create<List<ApplicationSecurityGroupNetwork>>((map['sourceApplicationSecurityGroups'] as List).cast<ApplicationSecurityGroupNetwork>()),
      sourcePortRange: map['sourcePortRange'] == null ? null : pulumi.Output.create<String>(map['sourcePortRange'] as String),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePortRanges'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

