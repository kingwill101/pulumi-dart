// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_member.dart';

/// VpnServerConfigurationPolicyGroup Resource.
class VpnServerConfigurationPolicyGroup {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Shows if this is a Default VpnServerConfigurationPolicyGroup or not.
  final pulumi.Input<bool>? isDefault;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Multiple PolicyMembers for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupMember>>? policyMembers;
  /// Priority for VpnServerConfigurationPolicyGroup.
  final pulumi.Input<int>? priority;

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
      'policyMembers': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroupMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
    };
  }

  factory VpnServerConfigurationPolicyGroup.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroup(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyMembers: map['policyMembers'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupMember>(map['policyMembers']!, (value) => VpnServerConfigurationPolicyGroupMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
    );
  }
}

