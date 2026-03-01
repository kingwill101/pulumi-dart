// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_policy_group_member.dart';

/// Parameters for VirtualNetworkGatewayPolicyGroup.
class VirtualNetworkGatewayPolicyGroup {
  /// Resource ID.
  final String? id;
  /// Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  final bool isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  final List<VirtualNetworkGatewayPolicyGroupMember> policyMembers;
  /// Priority for VirtualNetworkGatewayPolicyGroup.
  final int priority;

  /// Creates a new [VirtualNetworkGatewayPolicyGroup].
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [policyMembers] Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  /// [priority] Priority for VirtualNetworkGatewayPolicyGroup.
  VirtualNetworkGatewayPolicyGroup({
    this.id,
    required this.isDefault,
    this.name,
    required this.policyMembers,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isDefault': isDefault,
      'name': ?name,
      'policyMembers': pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupMember, Map<String, dynamic>>(policyMembers, (value) => value.toMap()),
      'priority': priority,
    };
  }

  factory VirtualNetworkGatewayPolicyGroup.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroup(
      id: map['id'] == null ? null : map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      policyMembers: pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupMember>(map['policyMembers'], (value) => VirtualNetworkGatewayPolicyGroupMember.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
    );
  }
}

