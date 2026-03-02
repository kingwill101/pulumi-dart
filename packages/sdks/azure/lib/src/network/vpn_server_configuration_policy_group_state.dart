// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_policy.dart';

/// Input properties used for looking up and filtering VpnServerConfigurationPolicyGroup resources.
class VpnServerConfigurationPolicyGroupState {
  /// Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? isDefault;
  /// The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `policy` blocks as documented below.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupPolicy>>? policies;
  /// The priority of this VPN Server Configuration Policy Group. Defaults to `0`.
  final pulumi.Input<int>? priority;
  /// The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vpnServerConfigurationId;

  /// Creates a new [VpnServerConfigurationPolicyGroupState].
  /// [isDefault] Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created.
  /// [policies] One or more `policy` blocks as documented below.
  /// [priority] The priority of this VPN Server Configuration Policy Group. Defaults to `0`.
  /// [vpnServerConfigurationId] The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created.
  VpnServerConfigurationPolicyGroupState({
    this.isDefault,
    this.name,
    this.policies,
    this.priority,
    this.vpnServerConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'name': ?name,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroupPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'vpnServerConfigurationId': ?vpnServerConfigurationId,
    };
  }

  factory VpnServerConfigurationPolicyGroupState.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupState(
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policies: map['policies'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupPolicy>(map['policies']!, (value) => VpnServerConfigurationPolicyGroupPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      vpnServerConfigurationId: map['vpnServerConfigurationId'] == null ? null : (map['vpnServerConfigurationId']! as String).input(),
    );
  }
}

