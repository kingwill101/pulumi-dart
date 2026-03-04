// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_policy_group_member.dart';

/// Parameters for VirtualNetworkGatewayPolicyGroup.
class VirtualNetworkGatewayPolicyGroup {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  final pulumi.Input<bool> isDefault;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroupMember>>
  policyMembers;

  /// Priority for VirtualNetworkGatewayPolicyGroup.
  final pulumi.Input<int> priority;

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
      'policyMembers':
          pulumi.Input.mapInputValue<
            List<VirtualNetworkGatewayPolicyGroupMember>,
            List<Map<String, dynamic>>
          >(
            policyMembers,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNetworkGatewayPolicyGroupMember,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'priority': priority,
    };
  }

  factory VirtualNetworkGatewayPolicyGroup.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayPolicyGroup(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyMembers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupMember>(
          map['policyMembers']!,
          (value) => VirtualNetworkGatewayPolicyGroupMember.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}
