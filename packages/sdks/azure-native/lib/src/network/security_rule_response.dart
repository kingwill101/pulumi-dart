// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_response.dart';

/// Network security rule.
class SecurityRuleResponse {
  /// The network traffic is allowed or denied.
  final String access;
  /// A description for this rule. Restricted to 140 chars.
  final String? description;
  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  final String? destinationAddressPrefix;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<String>? destinationAddressPrefixes;
  /// The application security group specified as destination.
  final List<ApplicationSecurityGroupResponse>? destinationApplicationSecurityGroups;
  /// The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final String? destinationPortRange;
  /// The destination port ranges.
  final List<String>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final String direction;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int priority;
  /// Network protocol this rule applies to.
  final String protocol;
  /// The provisioning state of the security rule resource.
  final String provisioningState;
  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  final String? sourceAddressPrefix;
  /// The CIDR or source IP ranges.
  final List<String>? sourceAddressPrefixes;
  /// The application security group specified as source.
  final List<ApplicationSecurityGroupResponse>? sourceApplicationSecurityGroups;
  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final String? sourcePortRange;
  /// The source port ranges.
  final List<String>? sourcePortRanges;
  /// The type of the resource.
  final String? type;

  /// Creates a new [SecurityRuleResponse].
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
  /// [provisioningState] The provisioning state of the security rule resource.
  /// [sourceAddressPrefix] The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourceApplicationSecurityGroups] The application security group specified as source.
  /// [sourcePortRange] The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [sourcePortRanges] The source port ranges.
  /// [type] The type of the resource.
  SecurityRuleResponse({
    required this.access,
    this.description,
    this.destinationAddressPrefix,
    this.destinationAddressPrefixes,
    this.destinationApplicationSecurityGroups,
    this.destinationPortRange,
    this.destinationPortRanges,
    required this.direction,
    required this.etag,
    this.id,
    this.name,
    required this.priority,
    required this.protocol,
    required this.provisioningState,
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
      'destinationApplicationSecurityGroups': ?destinationApplicationSecurityGroups == null ? null : pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(destinationApplicationSecurityGroups!, (value) => value.toMap()),
      'destinationPortRange': ?destinationPortRange,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'priority': priority,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'sourceAddressPrefix': ?sourceAddressPrefix,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourceApplicationSecurityGroups': ?sourceApplicationSecurityGroups == null ? null : pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(sourceApplicationSecurityGroups!, (value) => value.toMap()),
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
      'type': ?type,
    };
  }

  factory SecurityRuleResponse.fromMap(Map<String, dynamic> map) {
    return SecurityRuleResponse(
      access: map['access'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddressPrefix: map['destinationAddressPrefix'] == null ? null : map['destinationAddressPrefix'] as String,
      destinationAddressPrefixes: map['destinationAddressPrefixes'] == null ? null : (map['destinationAddressPrefixes'] as List).cast<String>(),
      destinationApplicationSecurityGroups: map['destinationApplicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(map['destinationApplicationSecurityGroups'], (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      destinationPortRange: map['destinationPortRange'] == null ? null : map['destinationPortRange'] as String,
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (map['destinationPortRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceAddressPrefix: map['sourceAddressPrefix'] == null ? null : map['sourceAddressPrefix'] as String,
      sourceAddressPrefixes: map['sourceAddressPrefixes'] == null ? null : (map['sourceAddressPrefixes'] as List).cast<String>(),
      sourceApplicationSecurityGroups: map['sourceApplicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(map['sourceApplicationSecurityGroups'], (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourcePortRange: map['sourcePortRange'] == null ? null : map['sourcePortRange'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

