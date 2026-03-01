// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_member.dart';

/// VpnServerConfigurationPolicyGroup Resource.
class VpnServerConfigurationPolicyGroup {
  /// Resource ID.
  final String? id;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  final bool? isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  final List<VpnServerConfigurationPolicyGroupMember>? policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  final int? priority;

  /// Creates a new [VpnServerConfigurationPolicyGroup].
  /// [id] Resource ID.
  /// [isDefault] Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [policyMembers] Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  /// [priority] Priority for VpnServerConfigurationPolicyGroup.
  VpnServerConfigurationPolicyGroup({
    this.id,
    this.isDefault,
    this.name,
    this.policyMembers,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'policyMembers': ?policyMembers == null ? null : pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupMember, Map<String, dynamic>>(policyMembers!, (value) => value.toMap()),
      'priority': ?priority,
    };
  }

  factory VpnServerConfigurationPolicyGroup.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroup(
      id: map['id'] == null ? null : map['id'] as String,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      policyMembers: map['policyMembers'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMember>(map['policyMembers'], (value) => VpnServerConfigurationPolicyGroupMember.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}

