// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group.dart';

/// Network security rule.
class SecurityRule {
  /// The network traffic is allowed or denied.
  final pulumi.Input<String> access;
  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  final pulumi.Input<String>? destinationAddressPrefix;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;
  /// The application security group specified as destination.
  final pulumi.Input<List<ApplicationSecurityGroup>>? destinationApplicationSecurityGroups;
  /// The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? destinationPortRange;
  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String> direction;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int>? priority;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;
  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  final pulumi.Input<String>? sourceAddressPrefix;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;
  /// The application security group specified as source.
  final pulumi.Input<List<ApplicationSecurityGroup>>? sourceApplicationSecurityGroups;
  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? sourcePortRange;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityRule].
  /// [access] The network traffic is allowed or denied.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationAddressPrefix] The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  /// [destinationAddressPrefixes] The destination address prefixes. CIDR or destination IP ranges.
  /// [destinationApplicationSecurityGroups] The application security group specified as destination.
  /// [destinationPortRange] The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [destinationPortRanges] The destination port ranges.
  /// [direction] The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [sourceAddressPrefix] The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourceApplicationSecurityGroups] The application security group specified as source.
  /// [sourcePortRange] The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [sourcePortRanges] The source port ranges.
  /// [type] The type of the resource.
  SecurityRule({
    required this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroups,
    this.destinationPortRange,
    this.destinationPortRanges,
    required this.direction,
    this.etag,
    this.id,
    this.name,
    this.priority,
    required this.protocol,
    this.provisioningState,
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
      'destinationApplicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroup>, List<Map<String, dynamic>>>(destinationApplicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'protocol': protocol,
      'provisioningState': ?provisioningState,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroup>, List<Map<String, dynamic>>>(sourceApplicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
      'type': ?type,
    };
  }

  factory SecurityRule.fromMap(Map<String, dynamic> map) {
    return SecurityRule(
      access: (map['access'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : (map['destinationAddressPrefix']! as String).input(),
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : ((map['destinationAddressPrefixes']! as List).cast<String>()).input(),
      destinationApplicationSecurityGroups: map['destinationApplicationSecurityGroups'] == null ? null : (pulumi.Input.decodeList<ApplicationSecurityGroup>(map['destinationApplicationSecurityGroups']!, (value) => ApplicationSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationPortRange: map['destinationPortRange'] == null ? null : (map['destinationPortRange']! as String).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : ((map['destinationPortRanges']! as List).cast<String>()).input(),
      direction: (map['direction'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      protocol: (map['protocol'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : (map['sourceAddressPrefix']! as String).input(),
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : ((map['sourceAddressPrefixes']! as List).cast<String>()).input(),
      sourceApplicationSecurityGroups: map['sourceApplicationSecurityGroups'] == null ? null : (pulumi.Input.decodeList<ApplicationSecurityGroup>(map['sourceApplicationSecurityGroups']!, (value) => ApplicationSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : (map['sourcePortRange']! as String).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : ((map['sourcePortRanges']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

