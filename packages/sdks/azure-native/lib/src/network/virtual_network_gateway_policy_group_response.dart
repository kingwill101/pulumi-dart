// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_network_gateway_policy_group_member_response.dart';

/// Parameters for VirtualNetworkGatewayPolicyGroup.
class VirtualNetworkGatewayPolicyGroupResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  final pulumi.Input<bool> isDefault;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroupMemberResponse>>
  policyMembers;

  /// Priority for VirtualNetworkGatewayPolicyGroup.
  final pulumi.Input<int> priority;

  /// The provisioning state of the VirtualNetworkGatewayPolicyGroup resource.
  final pulumi.Input<String> provisioningState;

  /// List of references to vngClientConnectionConfigurations.
  final pulumi.Input<List<SubResourceResponse>>
  vngClientConnectionConfigurations;

  /// Creates a new [VirtualNetworkGatewayPolicyGroupResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VirtualNetworkGatewayPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [policyMembers] Multiple PolicyMembers for VirtualNetworkGatewayPolicyGroup.
  /// [priority] Priority for VirtualNetworkGatewayPolicyGroup.
  /// [provisioningState] The provisioning state of the VirtualNetworkGatewayPolicyGroup resource.
  /// [vngClientConnectionConfigurations] List of references to vngClientConnectionConfigurations.
  VirtualNetworkGatewayPolicyGroupResponse({
    required this.etag,
    this.id,
    required this.isDefault,
    this.name,
    required this.policyMembers,
    required this.priority,
    required this.provisioningState,
    required this.vngClientConnectionConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'isDefault': isDefault,
      'name': ?name,
      'policyMembers':
          pulumi.Input.mapInputValue<
            List<VirtualNetworkGatewayPolicyGroupMemberResponse>,
            List<Map<String, dynamic>>
          >(
            policyMembers,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNetworkGatewayPolicyGroupMemberResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'priority': priority,
      'provisioningState': provisioningState,
      'vngClientConnectionConfigurations':
          pulumi.Input.mapInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            vngClientConnectionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualNetworkGatewayPolicyGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkGatewayPolicyGroupResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
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
        pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupMemberResponse>(
          map['policyMembers']!,
          (value) => VirtualNetworkGatewayPolicyGroupMemberResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      vngClientConnectionConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResourceResponse>(
          map['vngClientConnectionConfigurations']!,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
