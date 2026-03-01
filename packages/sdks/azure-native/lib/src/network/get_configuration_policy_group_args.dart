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
  GetConfigurationPolicyGroupArgs({
    required pulumi.Output<String> configurationPolicyGroupName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vpnServerConfigurationName,
  }) :
      configurationPolicyGroupName = pulumi.Input.asInput<String>(configurationPolicyGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vpnServerConfigurationName = pulumi.Input.asInput<String>(vpnServerConfigurationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicyGroupName': configurationPolicyGroupName,
      'resourceGroupName': resourceGroupName,
      'vpnServerConfigurationName': vpnServerConfigurationName,
    };
  }

  factory GetConfigurationPolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationPolicyGroupArgs(
      configurationPolicyGroupName: pulumi.Output.create<String>(map['configurationPolicyGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vpnServerConfigurationName: pulumi.Output.create<String>(map['vpnServerConfigurationName'] as String),
    );
  }
}

