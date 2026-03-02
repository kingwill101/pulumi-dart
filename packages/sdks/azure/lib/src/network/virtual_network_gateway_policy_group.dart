// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_policy_group_policy_member.dart';

class VirtualNetworkGatewayPolicyGroup {
  /// Is this a Default Virtual Network Gateway Policy Group? Defaults to `false`.
  final pulumi.Input<bool>? isDefault;
  /// The name of the Virtual Network Gateway Policy Group.
  final pulumi.Input<String> name;
  /// One or more `policy_member` blocks as defined below.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroupPolicyMember>> policyMembers;
  /// The priority for the Virtual Network Gateway Policy Group. Defaults to `0`.
  final pulumi.Input<int>? priority;

  /// Creates a new [VirtualNetworkGatewayPolicyGroup].
  /// [isDefault] Is this a Default Virtual Network Gateway Policy Group? Defaults to `false`.
  /// [name] The name of the Virtual Network Gateway Policy Group.
  /// [policyMembers] One or more `policy_member` blocks as defined below.
  /// [priority] The priority for the Virtual Network Gateway Policy Group. Defaults to `0`.
  VirtualNetworkGatewayPolicyGroup({
    this.isDefault,
    required this.name,
    required this.policyMembers,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'name': name,
      'policyMembers': pulumi.Input.mapInputValue<List<VirtualNetworkGatewayPolicyGroupPolicyMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupPolicyMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
    };
  }

  factory VirtualNetworkGatewayPolicyGroup.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroup(
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: (map['name'] as String).input(),
      policyMembers: (pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupPolicyMember>(map['policyMembers'], (value) => VirtualNetworkGatewayPolicyGroupPolicyMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
    );
  }
}

