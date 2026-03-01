// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_policy.dart';

/// {@template pulumi_network_vpn_server_configuration_policy_group_vpn_server_configuration_policy_group_args_doc}
/// The set of arguments for VpnServerConfigurationPolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_server_configuration_policy_group_vpn_server_configuration_policy_group_args_doc}
class VpnServerConfigurationPolicyGroupArgs {
  /// Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? isDefault;
  /// The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `policy` blocks as documented below.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupPolicy>> policies;
  /// The priority of this VPN Server Configuration Policy Group. Defaults to `0`.
  final pulumi.Input<int>? priority;
  /// The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String> vpnServerConfigurationId;

  /// Creates a new [VpnServerConfigurationPolicyGroupArgs].
  /// [isDefault] Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created.
  /// [policies] One or more `policy` blocks as documented below.
  /// [priority] The priority of this VPN Server Configuration Policy Group. Defaults to `0`.
  /// [vpnServerConfigurationId] The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created.
  VpnServerConfigurationPolicyGroupArgs({
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    required pulumi.Output<List<VpnServerConfigurationPolicyGroupPolicy>> policies,
    pulumi.Output<int>? priority,
    required pulumi.Output<String> vpnServerConfigurationId,
  }) :
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      policies = pulumi.Input.asInput<List<VpnServerConfigurationPolicyGroupPolicy>>(policies),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      vpnServerConfigurationId = pulumi.Input.asInput<String>(vpnServerConfigurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': ?isDefault,
      'name': ?name,
      'policies': pulumi.Input.mapInputValue<List<VpnServerConfigurationPolicyGroupPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'vpnServerConfigurationId': vpnServerConfigurationId,
    };
  }

  factory VpnServerConfigurationPolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPolicyGroupArgs(
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policies: pulumi.Output.create<List<VpnServerConfigurationPolicyGroupPolicy>>(pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupPolicy>(map['policies'], (value) => VpnServerConfigurationPolicyGroupPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      vpnServerConfigurationId: pulumi.Output.create<String>(map['vpnServerConfigurationId'] as String),
    );
  }
}

