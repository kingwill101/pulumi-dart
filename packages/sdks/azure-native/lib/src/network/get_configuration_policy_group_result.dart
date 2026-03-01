// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vpn_server_configuration_policy_group_member_response.dart';

/// Result data returned by getConfigurationPolicyGroup.
class GetConfigurationPolicyGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  final bool? isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// List of references to P2SConnectionConfigurations.
  final List<SubResourceResponse> p2SConnectionConfigurations;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  final List<VpnServerConfigurationPolicyGroupMemberResponse>? policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  final int? priority;
  /// The provisioning state of the VpnServerConfigurationPolicyGroup resource.
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [GetConfigurationPolicyGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [p2SConnectionConfigurations] List of references to P2SConnectionConfigurations.
  /// [policyMembers] Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  /// [priority] Priority for VpnServerConfigurationPolicyGroup.
  /// [provisioningState] The provisioning state of the VpnServerConfigurationPolicyGroup resource.
  /// [type] Resource type.
  GetConfigurationPolicyGroupResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'p2SConnectionConfigurations': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(p2SConnectionConfigurations, (value) => value.toMap()),
      'policyMembers': ?policyMembers == null ? null : pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupMemberResponse, Map<String, dynamic>>(policyMembers!, (value) => value.toMap()),
      'priority': ?priority,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetConfigurationPolicyGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationPolicyGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      p2SConnectionConfigurations: pulumi.Input.decodeList<SubResourceResponse>(map['p2SConnectionConfigurations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyMembers: map['policyMembers'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMemberResponse>(map['policyMembers'], (value) => VpnServerConfigurationPolicyGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

