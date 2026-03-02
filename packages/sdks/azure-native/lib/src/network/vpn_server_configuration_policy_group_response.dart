// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vpn_server_configuration_policy_group_member_response.dart';

/// VpnServerConfigurationPolicyGroup Resource.
class VpnServerConfigurationPolicyGroupResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  final pulumi.Input<bool>? isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// List of references to P2SConnectionConfigurations.
  final pulumi.Input<List<SubResourceResponse>> p2SConnectionConfigurations;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupMemberResponse>>? policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<int>? priority;
  /// The provisioning state of the VpnServerConfigurationPolicyGroup resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VpnServerConfigurationPolicyGroupResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [p2SConnectionConfigurations] List of references to P2SConnectionConfigurations.
  /// [policyMembers] Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  /// [priority] Priority for VpnServerConfigurationPolicyGroup.
  /// [provisioningState] The provisioning state of the VpnServerConfigurationPolicyGroup resource.
  /// [type] Resource type.
  VpnServerConfigurationPolicyGroupResponse({
    required this.etag,
    this.id,
    this.isDefault,
    this.name,
    required this.p2SConnectionConfigurations,
    this.policyMembers,
    this.priority,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'p2SConnectionConfigurations': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(p2SConnectionConfigurations, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyMembers': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroupMemberResponse>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupMemberResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VpnServerConfigurationPolicyGroupResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      p2SConnectionConfigurations: (pulumi.Input.decodeList<SubResourceResponse>(map['p2SConnectionConfigurations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyMembers: map['policyMembers'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMemberResponse>(map['policyMembers'], (value) => VpnServerConfigurationPolicyGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

