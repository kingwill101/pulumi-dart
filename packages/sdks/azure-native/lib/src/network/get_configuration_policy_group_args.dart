// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_configuration_policy_group_args_doc}
/// Arguments for getConfigurationPolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_configuration_policy_group_args_doc}
class GetConfigurationPolicyGroupArgs {
  /// The name of the ConfigurationPolicyGroup being retrieved.
  final pulumi.Input<String> configurationPolicyGroupName;
  /// The resource group name of the VpnServerConfiguration.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VpnServerConfiguration.
  final pulumi.Input<String> vpnServerConfigurationName;

  /// Creates a new [GetConfigurationPolicyGroupArgs].
  /// [configurationPolicyGroupName] The name of the ConfigurationPolicyGroup being retrieved.
  /// [resourceGroupName] The resource group name of the VpnServerConfiguration.
  /// [vpnServerConfigurationName] The name of the VpnServerConfiguration.
  const GetConfigurationPolicyGroupArgs({
    required this.configurationPolicyGroupName,
    required this.resourceGroupName,
    required this.vpnServerConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicyGroupName': configurationPolicyGroupName,
      'resourceGroupName': resourceGroupName,
      'vpnServerConfigurationName': vpnServerConfigurationName,
    };
  }

  factory GetConfigurationPolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationPolicyGroupArgs(
      configurationPolicyGroupName: pulumi.Input.fromValue(map['configurationPolicyGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Input.fromValue(map['vpnServerConfigurationName'] as String),
    );
  }
}

