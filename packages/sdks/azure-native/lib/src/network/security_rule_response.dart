// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_response.dart';

/// Network security rule.
class SecurityRuleResponse {
  /// The network traffic is allowed or denied.
  final pulumi.Input<String> access;

  /// A description for this rule. Restricted to 140 chars.
  final pulumi.Input<String>? description;

  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  final pulumi.Input<String>? destinationAddressPrefix;

  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<String>>? destinationAddressPrefixes;

  /// The application security group specified as destination.
  final pulumi.Input<List<ApplicationSecurityGroupResponse>>?
  destinationApplicationSecurityGroups;

  /// The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? destinationPortRange;

  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;

  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final pulumi.Input<String> direction;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int> priority;

  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;

  /// The provisioning state of the security rule resource.
  final pulumi.Input<String> provisioningState;

  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  final pulumi.Input<String>? sourceAddressPrefix;

  /// The CIDR or source IP ranges.
  final pulumi.Input<List<String>>? sourceAddressPrefixes;

  /// The application security group specified as source.
  final pulumi.Input<List<ApplicationSecurityGroupResponse>>?
  sourceApplicationSecurityGroups;

  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final pulumi.Input<String>? sourcePortRange;

  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;

  /// The type of the resource.
  final pulumi.Input<String>? type;

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
      'destinationApplicationSecurityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationSecurityGroupResponse>,
            List<Map<String, dynamic>>
          >(
            destinationApplicationSecurityGroups,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationSecurityGroupResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'sourceApplicationSecurityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationSecurityGroupResponse>,
            List<Map<String, dynamic>>
          >(
            sourceApplicationSecurityGroups,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationSecurityGroupResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourcePortRange': ?sourcePortRange,
      'sourcePortRanges': ?sourcePortRanges,
      'type': ?type,
    };
  }

  factory SecurityRuleResponse.fromMap(Map<String, dynamic> map) {
    return SecurityRuleResponse(
      access: pulumi.Input.fromValue(map['access'] as String),
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
      destinationApplicationSecurityGroups: (() {
        final guardedValue = map['destinationApplicationSecurityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(
            guardedValue,
            (value) => ApplicationSecurityGroupResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
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
      direction: pulumi.Input.fromValue(map['direction'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
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
      sourceApplicationSecurityGroups: (() {
        final guardedValue = map['sourceApplicationSecurityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(
            guardedValue,
            (value) => ApplicationSecurityGroupResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
